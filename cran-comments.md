## Comments from Maintainer

Updated CanvasXpress JS libraries to 24.8 to incorporate bug fixes

There is one NOTE on the package checks from CRAN for OSX because the suggested Bioconductor limma package is unavailable on that CRAN build.  This is environmental, not a package issue, so cannot be fixed.

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.4.4  
* R 3.5.3  
* R 3.6.1

Travis-CI (ubuntu 16.04.6)

* R 3.5.3
* R 3.6.1
* R devel (2019-11-23 r77455)

WinBuilder

* devtools::check_win_devel()  
* devtools::check_win_release()  
* devtools::check_win_oldrelease()  


RHub

* devtools::check_rhub(platforms = c('fedora-clang-devel', 'ubuntu-gcc-release'), interactive = F)   
  * Fedora Linux, R-devel, clang, gfortran  
  * Ubuntu Linux 16.04 LTS, R-release, GCC  
* rhub::check_on_windows(check_args = c('_R_CHECK_FORCE_SUGGESTS_'='FALSE'), show_status = F)  
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
tools::package_dependencies(packages = c('periscope'),
                            db = pdb, reverse = TRUE)
                            
$canvasXpress  
character(0)  
```
