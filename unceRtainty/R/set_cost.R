library(pROC)
library(ROCR)
library(ggplot2)

set_cost = function(unceRtain_object, cfp, cfn) {
  true_labels <- unceRtain_object$observed_outcome
  predicted_probabilities <- unceRtain_object$prediction

  predicted_labels = ifelse(predicted_probabilities > 0.5, 1, 0)

  # False Positives and False Negatives
  fp = sum((true_labels == 0) & (predicted_labels == 1))
  fn = sum((true_labels == 1) & (predicted_labels == 0))

  # Calculate cost
  total_cost = cfp * fp + cfn * fn

  return(paste("The total cost for your model is", total_cost, ".",
               "\n\nTotal Cost is a comprehensive metric that incorporates the costs associated with both false positives and false negatives.",
               "It provides a holistic view of the model's performance, considering the real-world consequences of misclassifying instances.",
               "\n\nLower Total Cost: Indicates a model configuration that minimizes the overall cost, considering both false positives and false negatives.",
               "\nHigher Total Cost: Suggests a model that may need adjustments to achieve a better balance between false positives and false negatives."))
}
