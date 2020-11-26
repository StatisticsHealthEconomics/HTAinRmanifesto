# HTA in R Manifesto

This document offers principles, best practice and guidance on building HTA models in R which are in the main generalisable to other programming implementations.
This has been touched on in e.g. [2].

This is a work in progress, living document.
In the same way fo standardising the building of model using the CHEERS checklist [4] we would like to standardise the _implementation_ of these models.

1. Standardised input and output data formats
   * data package?
2. Reproducability
   * including standardised record of where data and other modelling information can be found
3. Testing: an outline of the tests expected to pass
   * TDD?
4. Consistent style 

### Standardised input and output data formats

[data package](https://specs.frictionlessdata.io/#overview)
[data package examples](https://github.com/datasets)

An example schema for cost-effectiveness model output could be something like [this](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/ce_output_data_schema/ce_output_data_schema_draft.txt)

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

Testing validity has been discussed in [3].

The collection of test are recorded in a document similar to [this example](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/test_case_example/test_case_example.csv)

Then these are translated to actual tests in the target language, such as the `testthat` packages examples [here](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/test_case_example/test_case_example.csv)


### Consistent style

An agreed specific submission style would make things easier to interrogate and combine.


### References

[1]: Dasbach, E.J., Elbasha, E.H. Verification of Decision-Analytic Models for Health Economic Evaluations: An Overview. PharmacoEconomics 35, 673–683 (2017). https://doi.org/10.1007/s40273-017-0508-2

[2]: Alarid-Escudero, F., Krijkamp, E. M., Pechlivanoglou, P., Jalal, H., Kao, S. Y. Z., Yang, A., & Enns, E. A. (2019). A Need for Change! A Coding Framework for Improving Transparency in Decision Modeling. PharmacoEconomics, 37(11), 1329–1339. https://doi.org/10.1007/s40273-019-00837-x

[3]: McCabe, C., & Dixon, S. (2000). Testing the validity of cost-effectiveness models. PharmacoEconomics, 17(5), 501–513. https://doi.org/10.2165/00019053-200017050-00007

[4]: Husereau, D., Drummond, M., Petrou, S., Carswell, C., Moher, D., Greenberg, D., … Loder, E. (2013). Consolidated Health Economic Evaluation Reporting Standards (CHEERS) statement. European Journal of Health Economics, 14(3), 367–372. https://doi.org/10.1007/s10198-013-0471-6
