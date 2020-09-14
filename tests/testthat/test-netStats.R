test_that("indegree computes unweighted column sums", {
  x1 <- rbind(
    c(0, 1, 1),
    c(1, 0, 0),
    c(0, 0, 0)
  )
  x2 <- rbind(
    c(0, 1, 0),
    c(0, 0, 1),
    c(1, 0, 0)
  )
  x3 <- rbind(
    c(0, 1, 0),
    c(1, 0, 0),
    c(1, 0, 0)
  )
  expect_equal(indegree(x1), c(1, 1, 1))
  expect_equal(indegree(x2), c(1, 1, 1))
  expect_equal(indegree(x3), c(2, 1, 0))
  expect_equal(indegree(x1 * 2), c(1, 1, 1))
  expect_equal(indegree(x2 * 2), c(1, 1, 1))
  expect_equal(indegree(x3 * 2), c(2, 1, 0))
})
test_that("outdegree computes unweighted row sums", {
  x1 <- rbind(
    c(0, 1, 1),
    c(1, 0, 0),
    c(0, 0, 0)
  )
  x2 <- rbind(
    c(0, 1, 0),
    c(0, 0, 1),
    c(1, 0, 0)
  )
  x3 <- rbind(
    c(0, 1, 0),
    c(1, 0, 0),
    c(1, 0, 0)
  )
  expect_equal(outdegree(x1), c(2, 1, 0))
  expect_equal(outdegree(x2), c(1, 1, 1))
  expect_equal(outdegree(x3), c(1, 1, 1))
  expect_equal(outdegree(x1 * 2), c(2, 1, 0))
  expect_equal(outdegree(x2 * 2), c(1, 1, 1))
  expect_equal(outdegree(x3 * 2), c(1, 1, 1))
})
test_that("number of edges counts edges", {
  x1 <- rbind(
    c(0, 1, 1),
    c(1, 0, 1),
    c(0, 0, 0)
  )
  x2 <- rbind(
    c(0, 1, 0),
    c(0, 0, 1),
    c(1, 0, 0)
  )
  x3 <- rbind(
    c(0, 1, 0),
    c(1, 0, 0),
    c(1, 1, 0)
  )
  expect_equal(count_edges(x1), 4)
  expect_equal(count_edges(x2), 3)
  expect_equal(count_edges(x3), 4)
  expect_equal(count_edges(x1 * 2), 4)
  expect_equal(count_edges(x2 * 2), 3)
  expect_equal(count_edges(x3 * 2), 4)
})
test_that("number of nodes counts rows", {
  x1 <- rbind(
    c(0, 1, 1),
    c(1, 0, 1),
    c(0, 0, 0)
  )
  x2 <- rbind(
    c(0, 1, 0),
    c(0, 0, 1),
    c(1, 0, 0)
  )
  x3 <- rbind(
    c(0, 1, 0),
    c(1, 0, 0),
    c(1, 1, 0)
  )
  expect_equal(count_nodes(x1), 3)
  expect_equal(count_nodes(x2), 3)
  expect_equal(count_nodes(x3), 3)
  expect_equal(count_nodes(x1 * 2), 3)
  expect_equal(count_nodes(x2 * 2), 3)
  expect_equal(count_nodes(x3 * 2), 3)
})