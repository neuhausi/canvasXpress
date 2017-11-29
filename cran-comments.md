## Comments from Maintainer

Updated internal JS libraries and also fixed magrittr warning from CRAN check results.  Reduced the minimum R version 
to 3.3.2 as well after testing.

---  

## Test environments

* ubuntu 16.04, R 3.3.2
* ubuntu 16.04, R 3.4.2

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
