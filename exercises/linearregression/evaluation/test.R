context({
  testcase("Linear regression model", {
    testEqual("simple_model exists and is an lm object",
              function(env) { inherits(env$simple_model, "lm") },
              TRUE)

    testEqual("Model uses the correct predictor variable",
              function(env) {
                as.character(formula(env$simple_model))[3] == "Perceived_Majority_Support_pct"
              },
              TRUE)

    testEqual("Model uses the correct response variable",
              function(env) {
                as.character(formula(env$simple_model))[2] == "Willingness_To_Speak_1_5"
              },
              TRUE)

    testEqual("Model has intercept and slope coefficients",
              function(env) { length(coef(env$simple_model)) },
              2)
  })
}, preExec = {
  data <- read.csv("exercises/linearregression/evaluation/workdir/evaluation/spiral_of_silence_dataset.csv")
})
