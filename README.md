# HTA in R Manifesto

This document offers principles, best practice and guidance on building HTA models in R which are in the main generalisable to other programming implementations.

This is a work in progress, living document.

1. Standardised input and output data formats
   * data package?
2. Reproducability
   * including standardised record of where data and other modelling information can be found
3. Testing: an outline of the tests expected to pass
   * TDD?
4. Consistent style 

### Standardised input and output data formats

### Reproducability

### Testing

You don't have to understand all the code to know if works so you don't need to be an expert R programmer. Just like in industry, the quality of the code is determined by the testing. I think that all you need is to be sure that it passed a defined set of tests. I thought this would be a neat paper but just Googled and found this which is basically the same:

https://link.springer.com/article/10.1007/s40273-017-0508-2?shared-article-renderer

They've made a start on what tests to have here:
https://github.com/healthEconomicModelTests/Inventory-of-Health-Economic-Model-Tests/blob/master/favoriteExploratoryTestsForHealthEconomicModels.Rmd

I think it would be great to properly do this and include NICE or whoever in it. If the NICE guidance say that all models submitted in R must pass their tests that would be cool.

### Consistent style

An agreed specific submission style would make things easier to interrogate and combine.
