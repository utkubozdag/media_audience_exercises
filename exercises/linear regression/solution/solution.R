# Load the data from GitHub
data <- read.csv("https://raw.githubusercontent.com/utkubozdag/media_audience_exercises/main/spiral_of_silence_dataset.csv")

# Create the linear regression model
simple_model <- lm(Willingness_To_Speak_1_5 ~ Perceived_Majority_Support_pct, data)
