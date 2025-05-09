#' Limits for the range of predictions
#'
#' Range limits truncate model predictions to a specific range of values,
#' typically to avoid extreme or unrealistic predictions.
#'
#' @inheritParams Laplace
#' @examples
#' lower_limit()
#' upper_limit()
#' @name range_limits
#' @export

#' @rdname range_limits
#' @export
lower_limit <- function(range = c(-Inf, Inf), trans = NULL) {
  new_quant_param(
    type = "double",
    range = range,
    inclusive = c(TRUE, FALSE),
    trans = trans,
    label = c(lower_limit = "Lower Limit"),
    finalize = NULL
  )
}

#' @rdname range_limits
#' @export
upper_limit <- function(range = c(-Inf, Inf), trans = NULL) {
  new_quant_param(
    type = "double",
    range = range,
    inclusive = c(FALSE, TRUE),
    trans = trans,
    label = c(upper_limit = "Upper Limit"),
    finalize = NULL
  )
}
