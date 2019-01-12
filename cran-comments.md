## Comments from Maintainer

Updated CanvasXpress JS libraries to 22.6

---  

## Test environments

* ubuntu 16.04, R 3.3.3
* ubuntu 16.04, R 3.4.4
* ubuntu 16.04, R 3.5.2

* ubuntu 14.04.5 (on travis-ci), R 3.4.4
* ubuntu 14.04.5 (on travis-ci), R 3.5.2

* win-builder (oldrelease, release, devel)

* r-hub::check_for_cran()
* * Windows Server 2008 R2 SP1 *<br/>NOTE: limma package suggested but not installed, excluded*
* * Ubuntu Linux 16.04 LTS
* * Fedora Linux *<br/>ERROR: httr can't be installed due to openssl not installed in subsystem*

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
