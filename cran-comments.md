## Comments from Maintainer

* Updated tests to accommodate the upcoming htmlWidgets 1.6 release per Carson's PR

There may be a NOTE on some builds as the version contains 4 components - this is necessary to maintain sync with the underlying version of the JS library which is 40.6, so is preferred over incrementing to the next number as users are used to us following the JS library version that is embedded in the htmlwidget.

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 4.0.5
* R 4.1.2
* R 4.2.2

CircleCI

* R 4.0.5
* R 4.2.2

WinBuilder

* devtools::check_win_devel()  
* devtools::check_win_release()  

RHub

* devtools::check_rhub(interactive = F, 
                       env_vars    = c(`_R_CHECK_FORCE_SUGGESTS_` = "false"))
* devtools::check_rhub(interactive = F, 
                       env_vars    = c(`_R_CHECK_FORCE_SUGGESTS_` = "false"),
                       platforms = c("solaris-x86-patched", 
                                     "macos-highsierra-release-cran"))

---  

## R CMD check results


```
devtools::check()  

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```

---  

## Reverse dependencies

* canvasXpress.data
* DGEobj.utils
* periscope
* MAFDash

```
> revdepcheck::cran_revdeps('canvasXpress', bioc = T)
[1] "canvasXpress"      "canvasXpress.data" "DGEobj.utils"      "MAFDash"           "periscope"  

```

```
> revdepcheck:: revdep_report_cran()
## revdepcheck results

We checked 4 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages

```
