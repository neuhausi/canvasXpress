## Comments from Maintainer

Updated CanvasXpress JS libraries to 23.3 to incorporate bug fixes

---  

## Test environments

* ubuntu 16.04, R 3.3.3
* ubuntu 16.04, R 3.4.4
* ubuntu 16.04, R 3.5.2

* ubuntu 14.04.5 (on travis-ci), R 3.4.4
* ubuntu 14.04.5 (on travis-ci), R 3.5.2
* ubuntu 14.04.5 (on travis-ci), R devel - 2019-02-22 r76149

* win-builder (oldrelease, release, devel)

* rhub::check_for_cran()
* * Windows Server 2008 R2 SP1 *<br/>NOTE: limma package suggested but not installed, excluded*
* * Ubuntu Linux 16.04 LTS
* * Fedora Linux 

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
