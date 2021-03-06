#' Run MAGIC on Main Data.
#'
#' This function takes an object of class iCellR and runs MAGIC on main data. Markov Affinity-based Graph Imputation of Cells (MAGIC) is an algorithm for denoising and transcript recover of single cells applied to single-cell RNA sequencing data, as described in van Dijk et al, 2018.
#' @param x An object of class iCellR.
#' @param genes character or integer vector, default: NULL vector of column names or column indices for which to return smoothed data If 'all_genes' or NULL, the entire smoothed matrix is returned
#' @param k int, optional, default: 10 number of nearest neighbors on which to build kernel
#' @param alpha int, optional, default: 15 sets decay rate of kernel tails. If NULL, alpha decaying kernel is not used
#' @param t int, optional, default: 'auto' power to which the diffusion operator is powered sets the level of diffusion. If 'auto', t is selected according to the Procrustes disparity of the diffused data.'
#' @param npca number of PCA components that should be used; default: 100.
#' @param init magic object, optional object to use for initialization. Avoids recomputing intermediate steps if parameters are the same.
#' @param t.max int, optional, default: 20 Maximum value of t to test for automatic t selection.
#' @param knn.dist.method string, optional, default: 'euclidean'. recommended values: 'euclidean', 'cosine' Any metric from 'scipy.spatial.distance' can be used distance metric for building kNN graph.
#' @param verbose 'int' or 'boolean', optional (default : 1) If 'TRUE' or '> 0', print verbose updates.
#' @param n.jobs 'int', optional (default: 1) The number of jobs to use for the computation. If -1 all CPUs are used. If 1 is given, no parallel computing code is used at all, which is useful for debugging. For n_jobs below -1, (n.cpus + 1 + n.jobs) are used. Thus for n_jobs = -2, all CPUs but one are used
#' @param seed int or 'NULL', random state (default: 'NULL')
#' @return An object of class iCellR.
#' @examples
#' \dontrun{
#' my.obj <- run.impute(my.obj)
#' }
#' @import umap
#' @export
run.impute <- function (x = NULL,
                       genes = "all_genes", k = 10, alpha = 15, t = "auto",
                       npca = 100, init = NULL, t.max = 20,
                       knn.dist.method = "euclidean", verbose = 1, n.jobs = 1,
                       seed = NULL) {
  if ("iCellR" != class(x)[1]) {
    stop("x should be an object of class iCellR")
  }
### load packages
  # https://github.com/KrishnaswamyLab/MAGIC/tree/master/Rmagic
  # https://www.analyticsvidhya.com/blog/2016/03/tutorial-powerful-packages-imputing-missing-values/
  require(Rmagic)
  require(viridis)
  require(phateR)
  # get data
  DATA <- x@main.data
  DATA <- as.data.frame(t(DATA))
  data_MAGIC <- magic(DATA,
                      genes = genes, k = k, alpha = alpha, t = t,
                      npca = npca, init = init, t.max = t.max,
                      knn.dist.method = knn.dist.method, verbose = verbose, n.jobs = n.jobs,
                      seed = seed)
  DATA <- as.data.frame(t(data_MAGIC$result))
  # return
  attributes(x)$imputed.data <- DATA
  # return
  return(x)
}
