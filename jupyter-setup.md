# JupyterLab + SoS Suite setup

## Install miniconda3 the Python development environment

We recommend using `miniconda` over `anaconda` and customize your installation as needed after install this minimal version of `conda`. 
To install please follow instructions [on this page](https://docs.conda.io/en/latest/miniconda.html). Please go for `miniconda3`.

After you successfully installed the latest version of `miniconda3`, please follow prompts below to setup
a [JupyterLab + SoS Suite environment](https://doi.org/10.1371/journal.pcbi.1006843) for daily computing.

**Note:** maybe you already have a version of `anaconda` or `miniconda` on your computer. If you are very familiar with `conda` then please try to work with your existing version by either upgrading or create separate `env` under it to install additional packages. You might also want to start afresh and retire your older version (but keep the installation around for a while just in case). To do so, find in your `~/.bashrc` or `~/.bash_profile` a line like this:

```bash
export PATH=$HOME/anaconda3/bin:$PATH
```

that actually points to **the folder you installed your `anaconda3` or earlier version of `miniconda3`**. You can remove this line and restart your bash terminal to enable the setting. 

Alternatively, a simpler but less elegant approach is to rename your `anaconda3` folder to, say `anaconda3_bak`.


## `conda` vs `pip` for package installation

With `miniconda` there are two ways to install Python packages: either using `conda install` or `pip install`. 
I wouldn't discuss too much details on what each does and pros and cons. I'd just say that 1) it is recommended to consistently use either `conda` or `pip` and not a combination of them, and 2) I recommend using `pip` over `conda`.

## (Do not) use `conda` to install R and R packages

From my experience, this is not recommended --- it creates more issues than convenience at least to me. On a cluster you can try to load the R software that the cluster system has already installed, then install packages to your home directory. You should be asked to set or confirm the path to install R packages to in your `HOME` directory. If not ... <FIXME: instructions to set that path manually>

## Jupyter Notebook and kernels

**Note: if `pip install` in commands below generates timeout errors on your cluster system**,

- On Columbia CUMC cluster, you need to run the commands below to set network proxy:

```
export http_proxy=http://bcp3.cumc.columbia.edu:8080
export https_proxy=http://bcp3.cumc.columbia.edu:8080
```
- If you are in China you might need to [try a different mirror](https://www.jb51.net/article/163315.htm), depending on your location. For example use a mirror at Tsinghua University, `pip install -i https://pypi.tuna.tsinghua.edu.cn/simple ...`, may help. You can also [configure `bash` or `pypi` to use alternative mirrors by default](https://wiki.onap.org/display/DW/Configure+and+customize+pip).

### Base notebook

```
pip install notebook jupyterlab jupyter_contrib_nbextensions
```

### Bash kernel

```
pip install bash_kernel --no-cache-dir
python -m bash_kernel.install
```

### Markdown kernel

```
pip install markdown-kernel --no-cache-dir
python -m markdown_kernel.install 
```

### R kernel

You need to install R first. Here are [some tips for Debian based Linux](../productivity_tips/debian-setup) (possibly outdated).
For MacOS you can download the [R software installer from CRAN](https://cran.r-project.org/bin/macosx/) and install from there.

To install R kernel for Jupyter after you installed R,

```
R --slave -e "IRkernel::installspec()"
```

If you get a complaint that `IRkernel` package is not available, please install it in R, eg `install.packages('IRkernel')`, before you run the command above.

### A ipynb to docx converter

This will allow you to save `ipynb` file to a `docx` file for various purposes
```
pip install jupyter-docx-bundler --no-cache-dir
jupyter bundlerextension enable --py jupyter_docx_bundler --sys-prefix
```

### nbdime to work with git

This will override the default `git diff` and display better the changes to IPython notebooks
```
pip install nbdime
nbdime config-git --enable --global
```

## SoS Suite

```
pip install docker markdown wand graphviz imageio pillow nbformat feather-format --no-cache-dir
pip install sos sos-notebook sos-r sos-python sos-bash -U --no-cache-dir
python -m sos_notebook.install
jupyter labextension install transient-display-data
jupyter labextension install @jupyterlab/toc
jupyter labextension install jupyterlab-sos
```

If the last command fails and complains about missing `nodejs` you can use `conda` to install it,

```
conda install -c conda-forge nodejs
```

On MacOS you can also visit https://nodejs.org and download their `pkg` installer, install it then rerun the `jupyter labextension` commands.

## Install Docker

**Notice: docker cannot be installed on many HPC cluster environments due to security reasons. We may use `singularity` instead of `docker` to run some applications on cluster. But still having docker configured on your laptop or desktop computer can be useful.**

We use Docker a lot running various software that are hard to install. SoS also provides an interface to run Docker images. 

To install Docker on Linux,

- Run commands below:

```
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

- Log out and log back in (no need to reboot computer)

To install it on MacOS, visit https://www.docker.com/products/docker-desktop and download & install the Docker Desktop installer.
