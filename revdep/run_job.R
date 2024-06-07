# Script to Run In A Separate Job

# uncomment to reset
# revdepcheck::revdep_reset()

library(revdepcheck)
revdep_check(quiet = FALSE, num_workers = 2, pkg = ".", timeout = as.difftime(120, units = "mins"))
