# Contributing to canvasXpress

Thank you for your interest in contributing to canvasXpress! This document provides guidelines and instructions for contributing to the project.

## Table of Contents

- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Code Style and Conventions](#code-style-and-conventions)
- [Running Tests](#running-tests)
- [Submitting Changes](#submitting-changes)
- [Reporting Issues](#reporting-issues)
- [Contact](#contact)

## Getting Started

canvasXpress is an R package that provides visualization capabilities using the CanvasXpress JavaScript framework. Before contributing, familiarize yourself with:

- The [main website](https://www.canvasxpress.org) for examples and documentation
- The package vignettes: `vignette("getting_started", package = "canvasXpress")`
- The [GitHub repository](https://github.com/neuhausi/canvasXpress)

## Development Setup

### Prerequisites

- R (>= 3.6)
- RStudio (recommended)
- Git
- devtools package

### Setting Up Your Development Environment

1. **Fork and Clone the Repository**

   ```bash
   git clone https://github.com/YOUR-USERNAME/canvasXpress.git
   cd canvasXpress
   ```

2. **Install Development Dependencies**

   Open R or RStudio and run:

   ```r
   # Install devtools if not already installed
   install.packages("devtools")
   
   # Install package dependencies
   devtools::install_deps(dependencies = TRUE)
   
   # Install suggested packages for testing
   install.packages(c("testthat", "knitr", "rmarkdown"))
   ```

3. **Load the Package for Development**

   ```r
   devtools::load_all()
   ```

### Building the Package

To build the package from source:

```r
devtools::build()
```

To check the package (runs R CMD check):

```r
devtools::check()
```

## Code Style and Conventions

### R Code Style

- Follow the [tidyverse style guide](https://style.tidyverse.org/)
- Use meaningful variable and function names
- Add roxygen2 comments for all exported functions
- Keep functions focused and modular
- Use 4 spaces for indentation (not tabs)

### Documentation

- All exported functions must have complete roxygen2 documentation including:
  - `@title` and `@description`
  - `@param` for each parameter
  - `@return` describing the return value
  - `@examples` with working examples
  - `@export` if the function should be exported

Example:

```r
#' Create a CanvasXpress Plot
#'
#' @title Create a CanvasXpress visualization
#' @description This function creates an interactive CanvasXpress plot
#'
#' @param data A data frame containing the plot data
#' @param graphType Character string specifying the plot type
#' @param ... Additional parameters passed to CanvasXpress
#'
#' @return A canvasXpress htmlwidget object
#'
#' @examples
#' \dontrun{
#' data <- data.frame(x = 1:10, y = rnorm(10))
#' canvasXpress(data = data, graphType = "Scatter2D")
#' }
#'
#' @export
```

### Commit Messages

- Use clear, descriptive commit messages
- Start with a verb in present tense (e.g., "Add", "Fix", "Update")
- Keep the first line under 72 characters
- Add detailed description in the body if needed

Example:
```
Add support for custom color palettes

- Implement new colorPalette parameter
- Add validation for color hex codes
- Update documentation with examples
```

## Running Tests

### Running All Tests

```r
devtools::test()
```

Or using testthat directly:

```r
library(testthat)
library(canvasXpress)
test_check("canvasXpress")
```

### Running Specific Tests

```r
testthat::test_file("tests/testthat/test-other-bar-data-types.R")
```

### Writing Tests

- Place test files in `tests/testthat/`
- Name test files with prefix `test-`
- Use descriptive test names with `test_that()`
- Test both expected behavior and edge cases

Example:

```r
test_that("canvasXpress creates valid plot object", {
  data <- data.frame(x = 1:5, y = 1:5)
  plot <- canvasXpress(data = data, graphType = "Scatter2D")
  
  expect_s3_class(plot, "canvasXpress")
  expect_s3_class(plot, "htmlwidget")
})
```

## Submitting Changes

### Pull Request Process

1. **Create a Branch**

   Create a descriptive branch name:
   ```bash
   git checkout -b feature/add-new-chart-type
   # or
   git checkout -b fix/correct-color-handling
   ```

2. **Make Your Changes**

   - Write clear, focused commits
   - Add or update tests as needed
   - Update documentation if you change APIs
   - Ensure all tests pass

3. **Update Documentation**

   If you added or changed functionality:
   ```r
   devtools::document()
   ```

4. **Run Quality Checks**

   Before submitting:
   ```r
   devtools::check()  # Should have no errors, warnings, or notes
   devtools::test()   # All tests should pass
   ```

5. **Push Your Changes**

   ```bash
   git push origin feature/add-new-chart-type
   ```

6. **Submit a Pull Request**

   - Go to the GitHub repository
   - Click "New Pull Request"
   - Provide a clear description of your changes
   - Reference any related issues (e.g., "Fixes #123")
   - Wait for review and be responsive to feedback

### Pull Request Guidelines

- Keep pull requests focused on a single feature or fix
- Include tests for new functionality
- Update documentation as needed
- Ensure CI checks pass
- Be patient and respectful during the review process

## Reporting Issues

### Before Creating an Issue

- Search existing issues to avoid duplicates
- Check the documentation and examples
- Try to reproduce with a minimal example

### Creating a Good Issue

Include:

1. **Clear Title**: Describe the issue concisely
2. **Description**: What happened vs. what you expected
3. **Reproducible Example**: Minimal code to reproduce the issue
4. **Environment**: 
   - R version: `R.version.string`
   - canvasXpress version: `packageVersion("canvasXpress")`
   - Operating system
5. **Screenshots**: If applicable, especially for visual issues

Example:

```r
# Minimal reproducible example
library(canvasXpress)

data <- data.frame(x = 1:10, y = rnorm(10))
canvasXpress(data = data, graphType = "Scatter2D", colorBy = "invalid")

# R version: R version 4.3.0 (2023-04-21)
# canvasXpress version: 1.58.7
# OS: Ubuntu 22.04
```

### Types of Issues

- **Bug Report**: Something isn't working as expected
- **Feature Request**: Suggest a new feature or enhancement
- **Documentation**: Improvements to documentation
- **Question**: Ask for help or clarification

## Contact

- **Issues**: [GitHub Issues](https://github.com/neuhausi/canvasXpress/issues)
- **Website**: [https://www.canvasxpress.org](https://www.canvasxpress.org)
- **Email**: See the DESCRIPTION file for maintainer contact

## Code of Conduct

Please be respectful and constructive in all interactions. We aim to maintain a welcoming and inclusive community.

---

Thank you for contributing to canvasXpress!
