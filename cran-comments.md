## Comments from Maintainer

Updated CanvasXpress JS libraries to 23.9 to incorporate bug fixes
Updated R package handling of precalculated barchart SD ranges to fix bugs

There is one NOTE on the package checks from CRAN for OSX because the suggested Bioconductor limma package is unavailable on that CRAN build.  This is environmental, not a package issue, so cannot be fixed.

---  

## Test environments


RStudio Server Pro (ubuntu 16.04.5)  

* R 3.3.3  
* R 3.4.4  
* R 3.5.3  
* R 3.6.0

Travis-CI (ubuntu 14.04.5)

* R 3.5.3
* R 3.6.0
* R devel (2019-04-29 r76439)

win-builder  

* oldrelease
* release
* devel

devtools::check_rhub(platforms = c('fedora-clang-devel', 'ubuntu-gcc-release'), interactive = F)  

* Fedora Linux, R-devel, clang, gfortran
* Ubuntu Linux 16.04 LTS, R-release, GCC


rhub::check_on_windows(check_args = c("_R_CHECK_FORCE_SUGGESTS_"="FALSE"), show_status = F)

* Windows Server 2008 R2 SP1, R-release, 32/64 bit

---  

## R CMD check results


```
devtools::check()  

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```

---  

## Reverse dependencies


**NONE**

```
pdb <- available.packages()
tools::package_dependencies(packages = c('canvasXpress'),
                            db = pdb, reverse = TRUE)
                            
$canvasXpress  
character(0)  
```
