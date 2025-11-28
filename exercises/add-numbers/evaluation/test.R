context({
  testcase("Basic addition tests", {
    testEqual("add_numbers(3, 5)",
              function(env) { env$add_numbers(3, 5) },
              8)

    testEqual("add_numbers(10, -2)",
              function(env) { env$add_numbers(10, -2) },
              8)

    testEqual("add_numbers(0, 0)",
              function(env) { env$add_numbers(0, 0) },
              0)

    testEqual("add_numbers(-5, -3)",
              function(env) { env$add_numbers(-5, -3) },
              -8)

    testEqual("add_numbers(100, 200)",
              function(env) { env$add_numbers(100, 200) },
              300)
  })
})
