# AssocNetwork
Core functions for semantic modeling of free association data

## Notes on working with packages
- `ctrl+shift+L` to reload the package
- `ctrl+shift+T` to run the tests

This *R* project is technically a *package*, meaning that it is a collection of functions that might be installed into the *library* and loaded into any other *R* project with `library(R)`.
As a *package developer*, *RStudio* provides many conviences.
While developing, you can always reload the package with `ctrl+shift+L`.
If you modify the code, you need to reload the package before those changes will take effect.
It is not enough to just save the file containing the code: the behavior of the function will not change until the package is reloaded.
After reloading the package, you can run all tests defined in the [tests/testthat/](tests/testthat) directory by pressing `ctrl+shift+T`.
Once the tests have run, you will get report in the top-right panel of *RStudio*.
Here you can see which tests may have failed, along with the associated error messages.
If you want the package to have access to data, the data file must be placed in the [inst/](inst/) directory.
Data in this special location will be "installed" when the package is loaded.
The final test references [TestData.csv](inst/TestData.csv)

## Assignment 1: Implement functions to pass tests and generate unweighted association network
Several functions have been outlined in [R/assocNetwork.R](R/assocNetwork.R).
The objective is to define these functions so that they pass the tests specified in [tests/testthat/test-assocNetwork.R](tests/testthat/test-assocNetwork.R).
