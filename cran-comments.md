## Comments from Maintainer

Updated CanvasXpress JS libraries to 18.5, code refinement for htmwidget factory

There are two NOTEs on the CRAN Checks for fedora linux builds that cannot be resolved at the package level -- this package suggests limma from BioConductor (limma) that is not available on those builds.

---  

## Test environments

* ubuntu 16.04, R 3.3.2
* ubuntu 16.04, R 3.4.3

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
