# Orientation exercises

This tutorial & exercise is designed for trainees interested in joining our lab. It reflects our expected computing skills using R, Python, Linux shell commands and bioinformatics workflow languages.
Even if you lack the skills for one or more of the languages at the time you start this tutorial, we believe the learning curve for new skills enough to complete the exercises is reasonable given a few hours of effort. Still,
please do not hesitate to contact us (wang.gao@columbia.edu) if there is a blocker as you go through the material. 

An additional note on effort: for student interns and research assistants we expect a minimum of 10hrs/week effort.

## Task 1: Unix command shell and command tools

In this task you are going to work with git from command shell, and install basic software and packages needed for data analysis of Tasks 2 and 3.

### Git

Most of our work will be saved and shared on github in public or private repositories. If you have not used git in the past, please follow the [instructions here for a 5 minutes git tutorial](http://statgen.us/lab-wiki/orientation/5m-git).

As the next step please [fork](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo) this repository, add your name to the file named `hello.md`, commit it to github with a customized commit message, eg, "Add my name and github handeler", and [create a pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/about-pull-requests) so we can see your update and incorporate it to the repository.

### Analysis software setup

This tutorial (and our research in general) requires `R`, `Python`, `Script of Scripts (SoS)` bioinformatics workflow system and `docker`.
Please follow this [setup instruction](http://statgen.us/lab-wiki/orientation/jupyter-setup.html) to complete the installations.


## Task 2:  IPython notebook and SoS bioinformatics workflow

This task is an example of a bioinformatics workflow developed at our group. It uses IPython notebook (with JupyterLab IDE as a recommendation), and runs an [SoS kernel for bioinformatics workflows](https://vatlab.github.io/sos-docs/).

Please find the example notebook file `orientation.ipynb`, follow the instructions and complete the Quiz at the end of the notebook. 

## Task 3:  R programming 

Please follow the instructions and complete the R exercise `orientation.Rmd`. `Rmd` stands for R Markdown. They are text file with R code and narratives that you can open and analyze using software such as Rstudio, 
or, you can also start a Jupyter Notebook and copy the contents to the notebook to analyze. If you use Jupyter Notebook please separate the markdown text and R codes into different cells.

## Moving forward

After you have completed the tasks please notify us (wang.gao@columbia.edu) with a link to your fork repository on github. We will review and determine a fit for you based on your response. Projects available for Spring 2021 include:

Methods with applications:

- Rare variant association analysis in family data
- Method for gene-gene / gene-environment interaction in large-scale association studies
- Inference of kinship in ancient DNA data 
- Statistical fine-mapping in family-based study designs
- Statistical fine-mapping in multiple ancestries
- Multi-tissue alternative polyadenylation calling from brain RNA-seq data
- Statistical benchmark for colocalization analysis
- Copy number variation association study for Alzheimer's disease
- Evaluation of fine-mapping in unbalanced case-control design
- Matrix completion and prediction of Alzheimer's disease risk using epidemiological records
- Alzheimer's disease risk prediction and subtyping using whole genome sequence data

Applied data analysis:

- Rare variant association studies with exome data in Alzheimer's disease families
- Gene-gene and gene-environment interaction analysis in UK Biobank data for Asthma
- Pleiotropy and mediation analysis in UK Biobank data
- Development of polygenic risk score prediction pipeline
- Statistical fine-mapping with functional genomic annotations
- Linear mixed model analysis of various phenotypes in UK Biobank data
- Improve and implement fine-mapping pipeline for UK Biobank data analysis (univariate and multivariate)

Software development:

- [SEQSpark](https://github.com/statgenetics/seqspark)
- [Dynamic Statistical Comparisons](https://github.com/stephenslab/dsc)

Please also find here [a list of past and ongoing projects in our group](http://statgen.us/lab-wiki/project_resource/project.html). 
