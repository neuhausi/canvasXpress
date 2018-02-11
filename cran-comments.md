## Comments from Maintainer

Updated CanvasXpress JS libraries to 18.5, code refinement for htmwidget factory

There is one NOTE on the CRAN R CMD checks due to the fact that this is the 7th update in 6 months.  Since the package tries to closely track the JS releases this was unavoidable to bring the new JS features to users.

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
