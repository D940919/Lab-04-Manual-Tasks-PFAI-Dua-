# Lab-04-Manual-Tasks-PFAI-Dua-
# R Markdown, Plotly, and Debugging in R

This repository contains demonstrations and guides for working with R Markdown, creating interactive plots with Plotly, debugging R scripts, and managing repositories on GitHub.

## Table of Contents
- [Creating an R Markdown Document](#creating-an-r-markdown-document)
- [Generating Interactive Plots with Plotly](#generating-interactive-plots-with-plotly)
- [Debugging R Scripts](#debugging-r-scripts)
- [Deleting a GitHub Repository](#deleting-a-github-repository)

---

## Creating an R Markdown Document

### Steps to Create and Knit an R Markdown Document
1. Open **RStudio**.
2. Click on **File** > **New File** > **R Markdown**.
3. Enter a **Title** and **Author Name**.
4. Choose the output format: **HTML, PDF, or Word**.
5. Click **OK**.
6. Write your content using R Markdown syntax.
7. Click **Knit** to generate the output.

### Example R Markdown File (`R_MarkDown.Rmd`)
```r
---
title: "My First R Markdown Report"
author: "Your Name"
date: "`r Sys.Date()`"
output: pdf_document
---

## Introduction
This is an R Markdown document demonstrating basic R functionality.

## Data Summary
We analyze the built-in `mtcars` dataset.
```r
summary(mtcars)
```
```

### Error: LaTeX Not Found Issue
If you receive an error related to `pdflatex` missing, install TinyTeX using:
```r
tinytex::install_tinytex()
```

---

## Generating Interactive Plots with Plotly

### Steps to Create an Interactive Scatter Plot
1. Install and load the `plotly` package.
2. Use the `plot_ly()` function to create a plot.
3. Display the interactive plot.

### Example Code
```r
# Load necessary libraries
library(plotly)

# Create a scatter plot of mpg vs horsepower (hp) from the mtcars dataset
plot <- plot_ly(data = mtcars,
                x = ~hp,   # Horsepower on X-axis
                y = ~mpg,  # Miles per gallon on Y-axis
                type = 'scatter',
                mode = 'markers',  # Use markers (points)
                marker = list(size = 10, color = 'blue'))  # Customize marker size & color

# Show the plot
plot
```

---

## Debugging R Scripts

### Common Types of Errors
1. **Syntax Errors** (e.g., missing commas, incorrect function names)
2. **Logical Errors** (e.g., incorrect calculations)
3. **Package Errors** (e.g., missing libraries)

### Example Code with Errors
```r
# Incorrect code (syntax error)
summary(mtcars  # Missing closing parenthesis
```
**Fix:** Ensure proper syntax:
```r
summary(mtcars)
```

### Debugging in RStudio
- Use `debug()` to step through functions.
- Use `traceback()` to check error origins.
- Use `print()` statements to track values.

---

## Deleting a GitHub Repository

### Steps to Delete a Repository on GitHub
1. **Go to** your repository on GitHub.
2. **Click** on **Settings**.
3. **Scroll Down** to the **Danger Zone**.
4. Click **Delete this repository**.
5. Confirm by typing the repository name and clicking **I understand the consequences, delete this repository**.

**⚠ Warning:** This action is irreversible.

---

## License
This project is open-source and available under the MIT License.

