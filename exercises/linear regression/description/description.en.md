# Linear Regression Analysis

In this exercise, you will perform a simple linear regression analysis on the "Spiral of Silence" dataset.

## Dataset

The dataset `spiral_of_silence_dataset.csv` contains survey data with the following relevant variables:
- `Willingness_To_Speak_1_5`: Willingness to speak out on a scale from 1 to 5 (dependent variable)
- `Perceived_Majority_Support_pct`: Perceived majority support as a percentage (independent variable)

## Task

1. Read the CSV file into a variable called `data`
2. Create a linear regression model called `simple_model` that predicts `Willingness_To_Speak_1_5` based on `Perceived_Majority_Support_pct`

## Requirements

Your code should:
- Load the data from `spiral_of_silence_dataset.csv`
- Create a linear model using the `lm()` function
- Store the result in a variable named `simple_model`

## Example Code Structure

```r
# Read the data
data <- read.csv("spiral_of_silence_dataset.csv")

# Create the linear regression model
simple_model <- lm(Willingness_To_Speak_1_5 ~ Perceived_Majority_Support_pct, data)
```
