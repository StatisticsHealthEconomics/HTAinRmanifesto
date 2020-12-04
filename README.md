# HTA in R Manifesto

This manifesto is to foster a common understanding and expression of health economic decision analysis models in R.
Many of these principles apply to general R code but we focus, at least in the first instance, on models designed to address specific questions.
By using common terminology, data structures and procedural approaches we hope to enhance comprehension and transparency of models.
In turn, this will support greater reliability, efficiency and trust.
These ideas are in the main generalisable to other programming implementations.
This idea has been touched on in e.g. [2].
In the same way for standardising the _building_ of model using the CHEERS checklist [4] we would like to standardise the _implementation_ of these models.


This is a work in progress, living document. Any suggestions or comments please post an [issue](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/issues).

Often, on receipt of some new model code, the steps taken to interrogate it are something like this

What does it look like? -> Does it run? -> Is it correct?

In order to facilitate this process we are essentially looking for a sensible consistency in three areas:

1. Consistent code 
2. Data and metadata
   * Standardised input and output data formats
   * Standardised records of where data and other modelling information can be found
4. Testing


### Consistent code

An agreed specific submission _style_, e.g. for all models written in R submitted to NICE, would make things easier to interrogate and combine.
This is common across code bases and there are lots of examples eg. for the [tidyverse](https://style.tidyverse.org/).

An agreed upon list of dependent packages could provide some assurance of the underlying code. Simply this could be only base R packages or packages submitted to [CRAN](https://cran.r-project.org/) or [Bioconductor](https://www.bioconductor.org/);
Or this could be packages that have near 100% code coverage e.g. indicated via CI.

A list of health economics packages that have been triaged or vetted in some way, e.g. like the open-review carried-out by [rOpenSci](https://github.com/ropensci/software-review).


### Data
#### Standardised input and output data formats

A [data package](https://specs.frictionlessdata.io/#overview) is a simple container format used to describe and package a collection of data (a dataset).
Some example can be found [here](https://github.com/datasets).

An example schema for cost-effectiveness model output could be something like [this](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/ce_output_data_schema/ce_output_data_schema_draft.txt).

#### Recording and reproducability

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
  * number of patients in each health state in all cycles >=0.
* Sample PSA Input Mean 
  * mean of the input generated for PSA represents the pre-defined mean. 
  * input generated for PSA represents the pre-defined distribution. 

Testing validity has been discussed in [3].

The collection of test are recorded in a document similar to [this example](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/test_case_example/test_case_example.csv).

Then these are translated to actual tests in the target language, such as the `testthat` packages examples [here](https://github.com/StatisticsHealthEconomics/HTAinRmanifesto/blob/main/test_case_example/testthat_example.R).


### References

[1]: Dasbach, E.J., Elbasha, E.H. Verification of Decision-Analytic Models for Health Economic Evaluations: An Overview. PharmacoEconomics 35, 673–683 (2017). https://doi.org/10.1007/s40273-017-0508-2

[2]: Alarid-Escudero, F., Krijkamp, E. M., Pechlivanoglou, P., Jalal, H., Kao, S. Y. Z., Yang, A., & Enns, E. A. (2019). A Need for Change! A Coding Framework for Improving Transparency in Decision Modeling. PharmacoEconomics, 37(11), 1329–1339. https://doi.org/10.1007/s40273-019-00837-x

[3]: McCabe, C., & Dixon, S. (2000). Testing the validity of cost-effectiveness models. PharmacoEconomics, 17(5), 501–513. https://doi.org/10.2165/00019053-200017050-00007

[4]: Husereau, D., Drummond, M., Petrou, S., Carswell, C., Moher, D., Greenberg, D., … Loder, E. (2013). Consolidated Health Economic Evaluation Reporting Standards (CHEERS) statement. European Journal of Health Economics, 14(3), 367–372. https://doi.org/10.1007/s10198-013-0471-6
