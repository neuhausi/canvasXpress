## Comments from Maintainer

This is a release to resolve the ERRORS on CRAN:

We are disabling a specific small subset of automated tests that rely on internet resources - they seem to not be able to resolve resources located on the web at  https://www.canvasxpress.org.  The https://www.canvasxpress.org url is valid, the certificate matches, and the site is up and accessible, but we are seeing enough of a slowdown in the internet in general that this causes these tests to fail and is now causing ERRORs on the CRAN status checks.  These specific tests (~10) will still run when tests are run interactively.

We still exceed the 5MB limit on certain platforms (RHub builder gives this note) however it is urgent we post this update to resolve CRAN errors.  We kindly ask for an exception to the 5MB limit while we are getting the next full release ready for CRAN.
---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.4.4  
* R 3.5.3  
* R 3.6.1

Travis-CI (ubuntu 16.04.6)

* R 3.5.3
* R 3.6.1
* R devel (2020-04-09 r78184)

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

0 errors ✓ | 0 warnings ✓ | 1 note x
```

---  

## Reverse dependencies


**NONE**

```
pdb <- available.packages()
tools::package_dependencies(packages = c('canvasxpress'),
                            db = pdb, reverse = TRUE)
                            
$canvasXpress  
NULL 
```

