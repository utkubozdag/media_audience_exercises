context({
  testcase("Data loading", {
    testEqual("data exists and is a data frame",
              function(env) { is.data.frame(env$data) },
              TRUE)

    testEqual("data has correct number of rows",
              function(env) { nrow(env$data) },
              200)

    testEqual("data contains Willingness_To_Speak_1_5 column",
              function(env) { "Willingness_To_Speak_1_5" %in% names(env$data) },
              TRUE)

    testEqual("data contains Perceived_Majority_Support_pct column",
              function(env) { "Perceived_Majority_Support_pct" %in% names(env$data) },
              TRUE)
  })

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
})
