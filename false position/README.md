# False Position Algorithm

This Matlab function estimates the root of a given function using false position and a root finding method.

## Inputs:
* func -the function being evaluated
* xl -lower guess
* xu -upper guess
* es -the desirted relitive error
* maxit -the maximum number of iterations to use 
* varargin -additional perameters used by function

## Outputs:
* root -the root estimated
* fx -the function evaluated at the root location
* ea -approximate relative error
* iter -number of iterations performed
