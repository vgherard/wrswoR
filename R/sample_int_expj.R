#' @name sample_int_expj
#' @rdname sample_int
#' @details `sample_int_expj()` and `sample_int_expjs()`
#'   implement one-pass random sampling with a reservoir with exponential jumps
#'   (Efraimidis and Spirakis, 2006, Algorithm A-ExpJ).  Both functions are
#'   implemented in `Rcpp`; `*_expj()` uses log-transformed keys,
#'   `*_expjs()` implements the algorithm in the paper verbatim
#'   (at the cost of numerical stability).
#' @examples
#' ## Algorithm A-ExpJ (with log-transformed keys)
#' s <- sample_int_expj(20000, 10000, runif(20000))
#' stopifnot(unique(s) == s)
#' p <- c(995, rep(1, 5))
#' n <- 1000
#' set.seed(42)
#' tbl <- table(replicate(sample_int_expj(6, 3, p),
#'                        n = n)) / n
#' stopifnot(abs(tbl - c(1, rep(0.4, 5))) < 0.04)
#'
NULL
