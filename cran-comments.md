## Comments from Maintainer

Updated CanvasXpress JS libraries to 21.6

---  

## Test environments

* ubuntu 16.04, R 3.3.3
* ubuntu 16.04, R 3.4.4
* ubuntu 16.04, R 3.5.1

* ubuntu 14.04.5 (on travis-ci), R 3.4.4
* ubuntu 14.04.5 (on travis-ci), R 3.5.1

* win-builder (oldrelease, release, devel)

* r-hub
* * Windows Server 2008 R2 SP1
* * Ubuntu Linux 16.04 LTS
* * Fedora Linux

---  

## R CMD check results


```
devtools::check()  

Status: OK  
  
R CMD check results  
0 errors | 0 warnings | 0 notes  
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
