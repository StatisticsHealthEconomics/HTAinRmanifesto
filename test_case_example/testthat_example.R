# see test_case_example.xls ----

library(testthat)

data(test_data)

test_that("QALY calcs", {

	# T01
	test_run <- run_model(test_data, discount = 1)
	expect_equal(get_qalys(test_run), 0)

	# T02
	test_run <- run_model(test_data, discount = 0)
	expect_equal(get_qalys(test_run),
				 get_le(test_run))
})


