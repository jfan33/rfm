context("test-rfm-plots.R")

test_that('output from rfm_bar_chart is as expected', {

  skip_on_cran()

  analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
  rfm_result <- rfm_table(rfm_data, customer_id, order_date, revenue, analysis_date)
  p <- rfm_bar_chart(rfm_result)
  vdiffr::expect_doppelganger('rfm barchart', p$plot)

})

test_that('output from rfm_rf_plot is as expected', {

  skip_on_cran()

  analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
  rfm_result <- rfm_table(rfm_data, customer_id, order_date, revenue, analysis_date)
  p <- rfm_rf_plot(rfm_result)
  vdiffr::expect_doppelganger('rfm rfplot', p$plot)

})

test_that('output from rfm_rm_plot is as expected', {

  skip_on_cran()

  analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
  rfm_result <- rfm_table(rfm_data, customer_id, order_date, revenue, analysis_date)
  p <- rfm_rm_plot(rfm_result)
  vdiffr::expect_doppelganger('rfm rmplot', p$plot)

})

test_that('output from rfm_fm_plot is as expected', {

  skip_on_cran()

  analysis_date <- lubridate::as_date('2006-12-31', tz = 'UTC')
  rfm_result <- rfm_table(rfm_data, customer_id, order_date, revenue, analysis_date)
  p <- rfm_fm_plot(rfm_result)
  vdiffr::expect_doppelganger('rfm fmplot', p$plot)

})
