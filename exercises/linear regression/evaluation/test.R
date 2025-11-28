context({
  testcase("Linear regression model", {
    testEqual("simple_model exists and is an lm object",
              function(env) { inherits(env$simple_model, "lm") },
              TRUE)

    testEqual("Model formula is correct",
              function(env) {
                as.character(formula(env$simple_model))[3] == "Perceived_Majority_Support_pct"
              },
              TRUE)

    testEqual("Model response variable is correct",
              function(env) {
                as.character(formula(env$simple_model))[2] == "Willingness_To_Speak_1_5"
              },
              TRUE)

    testEqual("Model has 2 coefficients (intercept + slope)",
              function(env) { length(coef(env$simple_model)) },
              2)
  })
}, preExec = {
  # Load the dataset and make it available to student code
  data <- read.csv("spiral_of_silence_dataset.csv")
})
