## Comments from Maintainer

* Update to underlying JavaScript Libraries  
* Added safety code to tests to skip if there is an issue accessing internet resources
* Minor update to test organization to support automated testing  
* Tests updated  
* Documentation updated  

---  

## Test environments


RStudio Server Pro (ubuntu 18.04.2)  

* R 3.5.3  
* R 3.6.3
* R 4.0.1

Travis-CI (ubuntu 16.04.6)

* R 3.6.3
* R 4.0.2
* R devel (2020-09-27 r79266)

WinBuilder

* devtools::check_win_devel()  
* devtools::check_win_release()  

RHub

* devtools::check_rhub(platforms = c('fedora-clang-devel', 'ubuntu-gcc-release'))   
  * Fedora Linux, R-devel, clang, gfortran  
  * Ubuntu Linux 16.04 LTS, R-release, GCC  
* rhub::check_on_windows(check_args = c('_R_CHECK_FORCE_SUGGESTS_'='FALSE'), show_status = F)  
  * Windows Server 2008 R2 SP1, R-release, 32/64 bit

---  

## R CMD check results


```
devtools::check()  

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```

---  

## Reverse dependencies

* MAFDash

```
pdb <- available.packages()
tools::package_dependencies(packages = c('canvasXpress'),
                            db = pdb, reverse = TRUE)
                            
$canvasXpress
[1] "MAFDash"
```

```
revdepcheck::revdep_details(".", "MAFDash")
```
