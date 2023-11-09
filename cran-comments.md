## Comments from Maintainer

* patch fix for tests for the release of HTMLwidgets 1.6.3 by Carson next week

There is 1 note on the release because we put out a recent release but were just notified by Carson of this need in order to not end up with our package failing tests on CRAN.

Version: I added -1 to the version because we intend to keep the underlying JS canvasXpress library in sync with the 2nd two components of the version of the package.  The package version reflects the JS library version so to make this patch we need to add a 4th component to the version.

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 4.0.5
* R 4.2.3
* R 4.3.1

CircleCI

* R 4.0.5
* R 4.3.2

WinBuilder

* devtools::check_win_devel()  
* devtools::check_win_release()  

RHub

* devtools::check_rhub(interactive = F, 
                       env_vars    = c(`_R_CHECK_FORCE_SUGGESTS_` = "false"))


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
[1] "canvasXpress"      "canvasXpress.data" "DGEobj.utils"      "MAFDash"           "periscope"         "periscope2"       
```

```
> revdepcheck:: revdep_report_cran()
## revdepcheck results

We checked 5 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages

```
