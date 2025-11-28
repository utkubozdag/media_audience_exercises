# Read the data
data <- read.csv("spiral_of_silence_dataset.csv")

# Create the linear regression model
simple_model <- lm(Willingness_To_Speak_1_5 ~ Perceived_Majority_Support_pct, data)
