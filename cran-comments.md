## Comments from Maintainer

Updated internal JS libraries to 18.1 and updated htmlwidgets javascript functionality to allow destruction of the widget properly in shiny applications.

There is a CRAN check NOTE on 2 fedora linux builds regarding patch level and support for 3.3.2, this was not fixed as I do not have access to fedora to perform proper testing across patch levels.

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
