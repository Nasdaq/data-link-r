mock_datatable_data <- function(cursor_id = 'null') {
  mock_data <- "{\"datatable\":
    {\"data\":
      [[\"AAPL\",10.102,null,\"1979-09-30\"],
      [\"AAPL\",23.585,null,\"1980-09-30\"],
      [\"AAPL\",66.143,null,\"1981-09-30\"],
      [\"AAPL\",102.209,null,\"1982-09-30\"],
      [\"AAPL\",129.639,null,\"1983-09-30\"],
      [\"AAPL\",91.448,null,\"1984-09-30\"],
      [\"AAPL\",139.734,null,\"1985-09-30\"],
      [\"AAPL\",273.531,null,\"1986-09-30\"],
      [\"AAPL\",371.4382,null,\"1987-09-30\"],
      [\"AAPL\",620.3379,null,\"1988-09-30\"],
      [\"AAPL\",634.313,null,\"1989-09-30\"],
      [\"AAPL\",712.0122,null,\"1990-09-30\"],
      [\"AAPL\",671.3921,null,\"1991-09-30\"],
      [\"AAPL\",805.8086,null,\"1992-09-30\"],
      [\"AAPL\",431.1943,null,\"1993-09-30\"],
      [\"AAPL\",395.4189,null,\"1994-09-30\"],
      [\"AAPL\",661.0,null,\"1995-09-30\"],
      [\"AAPL\",-1204.0,null,\"1996-09-30\"],
      [\"AAPL\",-403.0,null,\"1997-09-30\"],
      [\"AAPL\",268.0,null,\"1998-09-30\"],
      [\"AAPL\",386.0,null,\"1999-09-30\"],
      [\"AAPL\",522.0,null,\"2000-09-30\"],
      [\"AAPL\",-344.0,26992,\"2001-09-30\"],
      [\"AAPL\",17.0,28310,\"2002-09-30\"],
      [\"AAPL\",-1.0,29015,\"2003-09-30\"]],
      \"columns\":[{\"name\":\"ticker\",\"type\":\"String\"},
                 {\"name\":\"oper_income\",\"type\":\"BigDecimal(12,4)\"},
                 {\"name\":\"comm_share_holder\",\"type\":\"Integer\"},
                 {\"name\":\"per_end_date\",\"type\":\"Date\"}]},
      \"meta\":{\"next_cursor_id\":\"#cursor_id\"
    }
  }"
  mock_data <- gsub("\"#cursor_id\"", cursor_id, mock_data)
  return(mock_data)
}

mock_empty_datatable_data <- function() {
  mock_data <- "{\"datatable\":
  {\"data\": [],
  \"columns\":[{\"name\":\"ticker\",\"type\":\"String\"},
  {\"name\":\"oper_income\",\"type\":\"BigDecimal(12,4)\"},
  {\"name\":\"comm_share_holder\",\"type\":\"Integer\"},
  {\"name\":\"per_end_date\",\"type\":\"Date\"}]},
  \"meta\":{\"next_cursor_id\": null
  }
  }"
  return(mock_data)
}

mock_datatable_data_extra_columns <- function() {
  mock_data <- "{\"datatable\":
  {\"data\":
  [[13000000000,\"2016-07-21 13:03:18 +0000\"],
  [45000000000,\"2016-07-19 11:32:52 +0000\"],
  [20000000000,\"2016-07-19 11:32:52 +0000\"],
  [37000000000,\"2016-07-18 11:32:56 +0000\"],
  [32000000000,\"2016-07-18 11:32:56 +0000\"],
  [12000000000,\"2016-07-13 13:03:07 +0000\"],
  [20000000000,\"2016-07-12 13:03:09 +0000\"],
  [45000000000,\"2016-07-12 11:32:51 +0000\"],
  [24000000000,\"2016-07-11 13:02:50 +0000\"],
  [37000000000,\"2016-07-11 11:32:59 +0000\"],
  [32000000000,\"2016-07-11 11:32:59 +0000\"],
  [45000000000,\"2016-07-05 13:03:22 +0000\"],
  [34000000000,\"2016-07-05 11:33:04 +0000\"],
  [29000000000,\"2016-07-05 11:33:04 +0000\"],
  [50000000000,\"2016-06-28 11:33:10 +0000\"],
  [31000000000,\"2016-06-27 11:33:19 +0000\"],
  [26000000000,\"2016-06-27 11:33:19 +0000\"],
  [28000000000,\"2016-06-22 13:03:15 +0000\"],
  [5000000000,\"2016-06-22 11:34:08 +0000\"],
  [13000000000,\"2016-06-22 11:33:12 +0000\"]],
  \"columns\":[{\"name\":\"offeringamount\",\"type\":\"double\"},
               {\"name\":\"updatedtimestamp\",\"type\":\"datetime\"}]},
  \"meta\":{\"next_cursor_id\": null}
  }"
  return(mock_data)
}

mock_datatable_export_response_creating <- function() {
  mock_data <- "{\"datatable_bulk_download\":
  {\"file\":
  {\"link\": null,
  \"status\": \"creating\",
  \"data_snapshot_time\": null},
  \"datatable\":
  {\"last_refreshed_time\": \"2019-05-22 07:35:43 UTC\"}}
  }"
  return(mock_data)
}

mock_datatable_export_response_fresh <- function() {
  mock_data <- "{\"datatable_bulk_download\":
  {\"file\":
  {\"link\": \"https://data.nasdaq.com\",
  \"status\": \"fresh\",
  \"data_snapshot_time\": \"2019-05-22 21:43:24 UTC\"},
  \"datatable\":
  {\"last_refreshed_time\": \"2019-05-22 07:35:43 UTC\"}}
  }"
  return(mock_data)
}
