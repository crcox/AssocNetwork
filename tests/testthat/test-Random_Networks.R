testthat::test_that("Random networks are square matricies",{
  network_of_words <- c("the", )
  expect_equivalent(random_acquisition_network())
})
