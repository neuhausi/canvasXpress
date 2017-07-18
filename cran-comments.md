## Comments from Maintainer

Updated internal libraries and also fixed pandoc failure in vignettes for CRAN check results.

---  

## Test environments

* ubuntu 16.04, R 3.2.5
* ubuntu 16.04, R 3.3.3
* ubuntu 16.04, R 3.4.1

* ubuntu 12.04.5 (on travis-ci), R 3.3.3
* ubuntu 12.04.5 (on travis-ci), R 3.4.0

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
