#' Set Cost of False Positive and False Negative
#'
#' This function allows you to set the cost associated with false positive and false negative predictions.
#'
#' @param true_labels Vector of true class labels (0 or 1)
#' @param predicted_probabilities Vector of predicted probabilities for the positive class
#' @param cfp Cost of false positive predictions
#' @param cfn Cost of false negative predictions
#'
#' @return The total cost based on the provided false positive and false negative costs
#'
#' @examples
#' set_cost(c(0, 1, 1, 0), c(0.3, 0.7, 0.6, 0.4), 1, 2)
#'
#' @export
