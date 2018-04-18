## Comments from Maintainer

Updated CanvasXpress JS libraries to 19.0

---  

## Test environments

* ubuntu 16.04, R 3.3.2
* ubuntu 16.04, R 3.4.3
* ubuntu 16.04, R 3.4.4

* ubuntu 14.04.5 (on travis-ci), R 3.3.3
* ubuntu 14.04.5 (on travis-ci), R 3.4.2

* win-builder (devel and release)

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
