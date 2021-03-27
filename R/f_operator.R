#' f_operator
#' @param f input function
#'
#' @return output function
#' @export
#' @importFrom rlang abort catch_cnd
#' @examples
f_operator = function(f){
  force(f)
  out.fun <- function(x){
    if(x>0){
      f(x)
    }
    else{
      cnd = rlang::catch_cnd(rlang::abort(message = "invalid input", .subclass ="invalid input", invalid_input=x))
    }
  }
  return(out.fun)
}
