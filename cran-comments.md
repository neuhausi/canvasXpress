## Comments from Maintainer

* Update to underlying JavaScript Libraries
* Added a shiny example
* Fixed failing tests and increased robustness for non-interactive platforms like CRAN
* Added safety checking for url-dependent tests if canvasxpress.org is unreachable

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.6.3
* R 4.0.4

Travis-CI (ubuntu 16.04.6)

* R 3.6.3
* R 4.0.2
* R devel (2021-03-23 r80105)

WinBuilder

* devtools::check_win_devel()  
* devtools::check_win_release()  

RHub

* devtools::check_rhub(interactive = F)

---  

## R CMD check results


```
devtools::check()  

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```

---  

## Reverse dependencies

* MAFDash
* pericope
* canvasXpress.data

```
> revdepcheck::cran_revdeps('canvasXpress', bioc = T)
[1] "canvasXpress"      "canvasXpress.data" "MAFDash"           "periscope"   

```

```
## revdepcheck results

We checked 3 reverse dependencies (0 from CRAN + 3 from Bioconductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 0 new problems
 * We failed to check 0 packages
```
