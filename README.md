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

You don't have to understand all the code to know if works so you don't need to be an expert R programmer. Just like in industry, the quality of the code is determined by the testing. I think that all you need is to be sure that it passed a defined set of tests. This ideas has been started [here](https://link.springer.com/article/10.1007/s40273-017-0508-2?shared-article-renderer) [1].

They make suggestions like:

* Life expectancy test sets
  * the discount rate for QALYs to zero 
  * all dis-utilities to zero, and 
  * disease-specific mortality rates to the all-cause mortality rates.  
* Quality-Adjusted Life Expectancy  
* Total Undiscounted Intervention Costs 
* Changes in Intervention Cost   
* Cohort Size
  * total remains constant
  * number of patients in each health state in all cycles is always greater than or equal to zero.
* Sample PSA Input Mean 
  * mean of the input generated for the probabilistic sensitivity analysis (PSA) represents the pre-defined mean of the given input parameter. 
  * input generated for the probabilistic sensitivity analysis (PSA) represents the pre-defined distribution of the given input parameter. 

### Consistent style

An agreed specific submission style would make things easier to interrogate and combine.


### References

[1]: Dasbach, E.J., Elbasha, E.H. Verification of Decision-Analytic Models for Health Economic Evaluations: An Overview. PharmacoEconomics 35, 673–683 (2017). https://doi.org/10.1007/s40273-017-0508-2

