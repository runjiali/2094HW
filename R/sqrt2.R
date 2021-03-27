#' sqrt2
#'
#' @param x input value
#'
#' @return square root of x for non-negative x, and trigger errors with a negative input
#' @export
#'
#' @examples
#' x=10
#' sqrt2(x)
sqrt2 = function(x){
  if (x < 0){
    rlang::abort(message = "negative input, NA introduced!",
                 .subclass ="neg_input_error")
  } else{
    sqrt(x)
  }
}
