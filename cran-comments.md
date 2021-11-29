## Comments from Maintainer

* Submitting a fix for platforms where pandoc is not installed causing errors and test failures on certain CRAN platforms that did not show up on testing in RHub/WinBuilder.  Have added rhub checks here for Solaris and Mac-OS to our standard tests now to avoid this in the future.

* There is a note because the days since last release is low due to the need to fix these errors to keep the package on CRAN.  If possible we'd like to get this fix in place now vs. waiting.

* We are adding -1 to the version number instead of incrementing it because the version number reflects the JS library underneath this htmlwidget and we don't want to get off track for that.  

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.6.3
* R 4.0.5
* R 4.1.2

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
## revdepcheck results

We checked 4 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages

```
