#' log2
#'
#' @param x input value
#'
#' @return log(x) for non-negative x, and trigger errors with a negative input
#' @export
#'
#' @examples
#' x=10
#' log2(x)
log2 = function(x){
  if (x < 0){
    rlang::abort(message = "negative input, NA introduced!",
                 .subclass ="neg_input_error")
  } else{
    log(x)
  }
}
