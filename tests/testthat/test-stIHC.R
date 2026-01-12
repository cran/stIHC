test_that("stIHC runs on example data and returns valid output", {

  rds_path <- system.file("extdata", "spatial_data.rds", package = "stIHC")
  expect_true(file.exists(rds_path))

  example_data <- readRDS(rds_path)
  expect_true(is.list(example_data))

  example_data <- readRDS(rds_path)
  res = stIHC(example_data) #Run stIHC
  expect_type(res, "list")
  expect_true(all(
    c("label", "clusters", "mean_clusters_mat") %in% names(res)
  ))
})

