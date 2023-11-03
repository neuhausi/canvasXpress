## Comments from Maintainer

* Updated JS underlying library  
* Added piping capability
* Added tests

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 4.0.5
* R 4.1.3
* R 4.2.3
* R 4.3.0

CircleCI

* R 4.0.5
* R 4.2.2

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
