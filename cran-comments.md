## Comments from Maintainer

Updated links to the assets referenced on the canvasxpress.org website to match the website rewrite.  Assets (datasets, urls, etc) had changed causing the package to ERROR on the CRAN status checks so this was urgently fixed.

Updated CanvasXpress JS libraries to 27.4 to incorporate bug fixes and new functionality.  Shiny examples were updated and bugs fixed and a small sample of a dataset was substituted into example2 while we wait for the full canvasXpress.data package to get posted to CRAN.

However, we still exceed the 5MB limit on certain platforms (RHub builder gives this note) however it is urgent we post this update to resolve CRAN errors and cannot wait for the data package to be posted on CRAN as was initially intentioned.  We kindly ask for an exception to the 5MB limit while we are getting the canvasXpress.data package accepted to CRAN.

There will be a NOTE on the package checks from CRAN for OSX because the suggested Bioconductor limma package is unavailable on that CRAN build.  This is environmental, not a package issue, so cannot be fixed.

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.4.4  
* R 3.5.3  
* R 3.6.1

Travis-CI (ubuntu 16.04.6)

* R 3.5.3
* R 3.6.1
* R devel (2020-03-06 r77913)

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
