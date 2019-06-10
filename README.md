# VPHSummerSchool2019
Code and data for the summer school deep learning workshop.

The exercises for this workshop are organized into Jupyter Notebooks which is a way of serving executable Python code on
a web page. A local Jupyter server can be run by installing it with Anaconda (or Miniconda), or through the internet using
Google's Colaboratory service. 

Start by downloading this repository so you have all the code with you: https://github.com/ericspod/VPHSummerSchool2019/archive/master.zip

Slides can also be viewed online at https://nbviewer.jupyter.org/github/ericspod/VPHSummerSchool2019

## Getting Started With Colaboratory

We will be using Google Colaboratory to run our notebooks when doing training since a GPU is basically required. You can
run the other notebooks locally but everything can be done through Colab if desired.

To get going with Colab:
1. Go to https://colab.research.google.com (be sure to be logged into your Google account beforehand)
2. Click on the Github tab and enter https://github.com/ericspod/VPHSummerSchool2019/ into the search box
3. A number of notebooks should appear, double click the one to load
4. When the notebook loads we want to switch to using a GPU supported environment, so in the menu go to "Runtime" and
then "Change runtime type". 
5. Choose GPU under hardware accelerator and then click Save.
6. You can start using the notebooks by clicking on the run icons to the left of each cell or press ctrl+Enter. (You will
get popups about the notebook not being authored by Google and other things, just click Yes to these)

## Installing Python Locally

If you want to run locally we need to install Python 3.7, Numpy, PyTorch, Jupyter, and Matplotlib. 
These can be installed separately through the standard distributions from the sites for each package,
or using a managed package system like Anaconda/Miniconda.

The fastest way is with Miniconda:

1. Go to https://docs.conda.io/en/latest/miniconda.html and download the Python 3.7 64bit installer for your OS.
2. Install Miniconda using the default options given
3. In the Start Menu, go to "Anaconda3" -> "Anaconda Prompt"
4. Type `conda install jupyter pytorch matplotlib scikit-learn` to install the components needed.
5. To start Jupyter, from this console type `jupyter notebook`

The best but slow way is with Anaconda. 

1. Go to https://www.anaconda.com/distribution and download the Python 3.7 graphical installer for your OS.
2. Install Anaconda, following instructions here: https://docs.anaconda.com/anaconda/install/
3. Start the Anaconda Navigator program
4. Navigate to "Environments" and click on "base (root)"
5. On the right side click "Update index..."
6. Once that completes set the drop-down menu to show all and type "Torch" into the search box
7. PyTorch 1.0.1 should show up, select it and install
8. Return to home and launch Jupyter Notebook. This should bring to your browser with the notebook server running. 
From here you can navigate to the workshop directory and start a notebook.

## Links

* Numpy manual: https://docs.scipy.org/doc/numpy/
* Matplotlib manual: https://matplotlib.org/3.1.0/users/index.html
* PyTorch manual: https://pytorch.org/docs/stable/index.html