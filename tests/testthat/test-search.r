source("test-helpers.r")

context("Search calls datasets endpoint")
with_mock(
  `httr::VERB` = function(http, url, config, body, query) {
    test_that("correct endpoint is called", {
      expect_equal(url, "https://data.nasdaq.com/api/v3/datasets")
    })
    test_that("search query param is added", {
      expect_equal(query$query, "oil")
    })
    mock_response(content = mock_search_response())
  },
  `httr::content` = function(response, as = "text") {
    response$content
  },
  NasdaqDataLink.search("oil")
)

context("NasdaqDataLink.search with results")
with_mock(
  `httr::VERB` = function(http, url, config, body, query) {
    mock_response(content = mock_search_response())
  },
  `httr::content` = function(response, as = "text") {
    response$content
  },
  test_that("Output message lists 3 codes", {
    expect_output(NasdaqDataLink.search("oil"), "(Code: [A-Z0-9_]+/[A-Z0-9_]+.+){3}")
  })
)


context("NasdaqDataLink.search with no results")
with_mock(
  `httr::VERB` = function(http, url, config, body, query) {
    mock_response(content = mock_search_empty_response())
  },
  `httr::content` = function(response, as = "text") {
    response$content
  },
  test_that("Doesn't find anything", {
    expect_warning(NasdaqDataLink.search("asfdsgfrg"), "No datasets found")
  })
)

reset_config()
