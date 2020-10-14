# Thank you for being interested in our lab!

This page is created specifically for new comers to the lab.

# Project resources

For a quick overview of what we are up to, [here](../project_resource) is a curated list of project
repositories of the lab. They are contributed by different past and current members in various styles,
but are all meant to follow good computational research practice that makes our work easy to share
and reproduce.


**Please do one or more of the following tasks (or based on instructions Gao gave you) **.


# Tasks

## Task 1: Bash

In this task you are going to install basic softwares/packages needed for our analysis

If you do not have any experience working with command-line interface (on Linux or Mac). Please follow this notebook - [handbook](https://github.com/haoyueshuai/lab_tasks/blob/main/sos_meta_script.ipynb) to guild you through this task.     

### git, github.com and markdown

You should receive an email notification asking you to join the github repository for this assignment. Please contact Gao if you don't have it.

Before you make any changes to the wiki, you should learn about using `git` if you haven't used it before. Under the `orientation` folder of this repo (that you should have been granted permission to at this point) there is a Markdown file called [`5m-git.md`](5m-git) for a 5-minutes tutorial on `git`. If you are not familiar with `git` please walk through that document to learn basic git. If you are already familiar with `git`, please take a look and help improve a more advance tutorial [`git-tips.md`](git-tips) completing some of the `FIXME` tags I made on the document, or adding to it whatever tips you've learned in the past that you find useful to mention here. **Please make sure you use the best of your knowledge editing Markdown format files, that is, format things nicely and logically**.


### Additional reading


## Task 2:  IPython notebook and JupyterLab

This task is about good computational biology research practice.
Regardless of your focus (on methods development or applied data analysis) it is required that all computational
procedures in your daily research should be documented, well organized and version controlled (using git) for review at any point.

With IPython notebook + JupyterLab you should develop the practice of clearly documenting what you do in research,
and communicate your results as well as the code that generated them in a self-contained document.
In particular, in a notebook you can put down notes in Markdown cells in between code cells to explain what you do.
This may be less important to computer programmers but is very important to data scientists.

An important reason we recommend Jupyter over Rstudio is because our work typically involves both interactive data analysis and bioinformatic workflows. I recommend using [SoS suite](https://vatlab.github.io/sos-docs), a workflow system (pipeline tool) for batch data analysis and a multi-language notebook for interactive analysis, for your daily computing in research. SoS uses Jupyter as its IDE.

Here are some tasks you should walk through:

1. [Install Jupyter Lab with SoS Suite](jupyter-setup), make sure you know (eg by learning from Google) how to launch Bash, R and Python notebooks and correspondingly write codes in them.
    - If you use Debian based Linux desktop (Debian or Ubuntu) [here are some recommendations](../productivity_tips/#linux-distributions) on setting up your machine.
2. Learn from these examples interactive data analysis using SoS Notebook that allows for multiple languages inside one notebook (you can find and run them at: http://sosworkflows.com):
    - [Data exchange between languages](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/2_Data_Exchange.ipynb)
    - [SoS Notebook built-in commands](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/3_SoS_Magics.ipynb)
3. Learn from [this example](https://github.com/gaow/annotation-finemap-dsc) (and the [HTML version](https://gaow.github.io/annotation-finemap-dsc/)) the suggested format to write and report computational analysis. This is a demo of a research website `jnbinder` created. The suggested format is as follows:
    1. **Title,** and in the same notebook cell **a brief one sentence summary** of what the notebook is about.
    2. **Motivation** or **Aims**: describe the problem under investigation.
    3. **Methods overview**: a high-level description of methods used to solve the problem.
    4. **Main conclusions** (not applicable to a pure workflow notebook): take home message from your investigations.
    5. **Data input and output** (if applicable): describe data used and generated from the notebook.
    6. The rest of the notebook: multiple sections of detailed steps, with interactive codes / workflows and narratives, as well as diagnostic summary statistics, plots and tables at each step.

In your future daily research you will be expected to use SoS Notebook to analyze data, document your workflows with suggested analysis report format, and make them available as websites to share with your colleagues.
We host a private webserver and provide instructions to configure your github repository to automatically publish websites to the server as soon as you push to the repository.

## Task 3:  Rstudio 

Rstudio is alternative to JupyterLab for interactive anlaysis.  (see Rmd below for more details). This task requires some R skills and also minimal background of data science/machine learning/biostats.

Please download this [R_assignment](https://github.com/haoyueshuai/lab_tasks/blob/main/assignment.Rmd) and [Data for this assignment](https://github.com/haoyueshuai/lab_tasks/blob/main/data/data_cleaned.csv) to finish this task.

(Contents to be updated ...)


### Additional reading

- How to organize computational research projects
    - [This paper](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424), [this paper](http://journals.plos.org/ploscollections/article?id=10.1371%2Fjournal.pcbi.1004385) and [this post](http://nicercode.github.io/blog/2013-04-05-projects/).
