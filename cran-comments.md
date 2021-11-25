## Comments from Maintainer

* Update to underlying JavaScript Libraries
* Added methods to support HTML export of charts, JSON pass through

* There is a NOTE on solaris that the library is over the size limit.  We can't reproduce this on our end, it is likely due to the block size difference and we have compressed/compacted this library as much as possible but are close to the 5Mb limit on other platforms.

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
