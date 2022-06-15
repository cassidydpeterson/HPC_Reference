# HPC_Reference

This repository contains example reference files used to run an R-based script in parallel on a Linux HPC. 

The code within was used to run jobs via [William & Mary's HPC group](https://www.wm.edu/offices/it/services/researchcomputing/atwm/index.php). 

See .r script for an example of parallelization code (noting that this script was part of a larger project calling additional R and executable files and will not run; see repository for this project [here](https://github.com/cassidydpeterson/SS_MSE)). 
See .pbs script (open in text reader) to see how the job was submitted. The .pbs script contains information that titles the job, identifies the cluster on which the job is to be run and the number of cores to be used, the maximum walltime for which to run the job, loads the pre-built module that contains R, and runs the R script. 
