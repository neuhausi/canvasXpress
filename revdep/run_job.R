# Script to Run In A Separate Job

library(revdepcheck)
revdep_check(quiet = FALSE, num_workers = 2, pkg = ".")
