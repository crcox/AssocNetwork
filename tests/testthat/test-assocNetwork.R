testthat::test_that("a sorted set can be derived from a vector", {
  testthat::expect_equal(sortedSet(c(5,3,3,2,5,5,3,1)), c(1,2,3,5))
})

testthat::test_that("cues can be identified among responses", {
  testthat::expect_equal(iscue(x = 1:4, cues = c(1, 3)), c(TRUE, FALSE, TRUE, FALSE))
})

testthat::test_that("a data frame can be filtered to include only responses that are cue words", {
  d_in <- data.frame(
    cue  = c(1,1,1,1,2,2,2,2,3,3,3,3),
    resp = c(2,4,5,6,3,4,5,6,1,4,5,6)
  )
  d_check <- data.frame(
    cue  = c(1,2,3),
    resp = c(2,3,1)
  )
  testthat::expect_equivalent(filterNonCueResponses(d_in),  d_check)
})

testthat::test_that("a response profile can be generated", {
  resp <- c(2, 3)
  all_unique <- 1:4
  testthat::expect_equal(respProfile(resp, all_unique), c(FALSE, TRUE, TRUE, FALSE))
})

testthat::test_that("an unweighted associative network can be generated", {
  d <- data.frame(
    cue  = c(1,1,1,1,2,2,2,2,3,3,3,3),
    resp = c(2,4,5,6,3,4,5,6,1,4,5,6)
  )
  net_check <- rbind(
    c(F,T,F),
    c(F,F,T),
    c(T,F,F)
  )
  testthat::expect_equivalent(assocNetwork(d), net_check)
})

testthat::test_that("an accurate association network is created from the TestData", {
  filename <- system.file("TestData.csv", package="AssocNetwork")
  d <- readr::read_csv(filename)
  net_check <- rbind(
    c(F, T, F),
    c(T, F, T),
    c(T, F, F)
  )
  testthat::expect_equivalent(assocNetwork(d), net_check)
})