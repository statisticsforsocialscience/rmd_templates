test_that("Theorem works", {
  theorem <- generate_environment("Theorem")
  expect_equal(capture_output(theorem("test")), "**Theorem 1.** *test* \n")
})
