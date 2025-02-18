# UnceRtainty

**UnceRtainty** is an R package designed to help evaluate logistic regression models for uncertainty and classification performance. This package provides a suite of functions to make predictions, calculate performance metrics (like Expected Prediction Error), set costs for misclassification, and visualize ROC curves and confusion matrices.

## Features

- **MakePredictions**: Generate predictions from a logistic regression model on new test data.
- **calculate_EPE**: Calculate the Expected Prediction Error (EPE) for a binary classification model.
- **set_cost**: Determine the total cost of misclassification by assigning costs to false positives and false negatives.
- **find_optimal_threshold**: Find the optimal classification threshold based on the ROC curve.
- **generate_roc**: Generate and plot the ROC curve along with AUC (Area Under the Curve) information.
- **confusion_matrix_metrics**: (Planned) Compute and visualize the confusion matrix.
- **calculate_misclassification_cost**: Calculate both the misclassification cost and error.
- **calculate_classification_metrics**: Compute key metrics including True Positive Rate (TPR), False Positive Rate (FPR), and Precision.
- **generate_confusion_matrix_visualization**: Visualize the confusion matrix using ggplot2.
- **generate_roc_curve_visualization**: Visualize the ROC curve for further insights.

## Installation

You can install **UnceRtainty** directly from GitHub using the `devtools` package:

```r
# Install devtools if not already installed
install.packages("devtools")
library(devtools)

# Install UnceRtainty from GitHub
install_github("tatevmane/UnceRtainty")

Usage Examples
1. Making Predictions

# Example logistic regression model and test data
model <- glm(formula = Outcome ~ Predictor1 + Predictor2, data = training_data, family = binomial)
test_data <- data.frame(Predictor1 = c(1, 2, 3), Predictor2 = c(4, 5, 6))
observed_outcome <- c(0, 1, 0)

# Generate predictions along with observed outcomes
predictions <- MakePredictions(model, test_data, observed_outcome)

2. Calculating Expected Prediction Error (EPE)
# Calculate and print the Expected Prediction Error
epe_result <- calculate_EPE(predictions)
print(epe_result)

3. Setting Misclassification Costs
# Set cost for false positives (cfp) and false negatives (cfn)
cost_result <- set_cost(predictions, cfp = 1, cfn = 2)
print(cost_result)

4. Finding the Optimal Threshold
# Determine the optimal threshold for classification
optimal_threshold <- find_optimal_threshold(predictions)
print(optimal_threshold)

5. Generating the ROC Curve
# Generate the ROC curve and display AUC
generate_roc(predictions, optimal_threshold)

6. Calculating Classification Metrics
# Calculate and print key classification metrics (TPR, FPR, Precision)
metrics <- calculate_classification_metrics(predictions)
print(metrics)

7. Visualizing the Confusion Matrix
# Generate and display a confusion matrix visualization
generate_confusion_matrix_visualization(predictions)

8. Visualizing the ROC Curve
# Generate a visualization for the ROC curve
generate_roc_curve_visualization(predictions$observed_outcome, predictions$predictions)
Contributing
Contributions to UnceRtainty are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on GitHub.

License
This project is licensed under the MIT License.

Acknowledgements
Developed by Tatev Gomtsyan, Ethan Assefa, and Thomas Burrell.
