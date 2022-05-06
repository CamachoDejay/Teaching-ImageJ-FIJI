# What do you find here

This is a collection of the material used for the NorMIC lab on image analysis. The google folder contains the data you will need to follow the lab. Moreover, I also provide links to the files in the detailed explanation below. The presentation used during the lab is found in the google slides. If you are completely new to FIJI, and don't know how to install the software please go to the end of this page for some useful links.

## Google folder

Here you can find the presentation in PDF and also the data we will be working on

[NorMIC Material](https://drive.google.com/drive/folders/1ASx1uBnLG7xr8hqTlWnkWvnNvj-uJ3sI?usp=sharing)

## Google slides for day 1

[Link to the google ppt](https://docs.google.com/presentation/d/1ic1tvGotdSsfa66PMfWprfFOx4ATRQpMvK5gVgvuik0/edit?usp=sharing)

Day 1, is a practical introduction to bio-image analysis in [ImageJ](https://imagej.nih.gov/ij/index.html) and [FIJI](https://imagej.net/Fiji). The material for the practical is a list of ImageJ/FIJI examples that illustrate:

1. Images are numbers
    * LUTs
    * Multidimensional data

2. Basic image analysis pipeline
    * Pre-processing: image filters
    * Segmentation
    * Post-processing: morphological operations
    * Quantification

## 1 Images are numbers

### Before you begin

Download a fresh installation of [FIJI](https://imagej.net/software/fiji/).

Below you will find direct links to the files, which are in the training material [google folder](https://drive.google.com/drive/folders/1ASx1uBnLG7xr8hqTlWnkWvnNvj-uJ3sI?usp=sharing)

### 1.1 Handling text files

Here the [demo text file](https://drive.google.com/file/d/1VA9DQERBfkuMvp9PeRRF4h7pAd1jmFkH/view?usp=sharing)

What is bit depth? have a look at the [wiki article on grayscale digital images](https://en.wikipedia.org/wiki/Grayscale)

Not sure how a histogram is built, [check this out](https://en.wikipedia.org/wiki/Histogram)

### 1.3 Handling image data formats, Metadata!!

Here the [demo geryscale tif](https://drive.google.com/file/d/1DjRwK5mXse9H2DQyjhlxonRsXn1rbysc/view?usp=sharing)

Not sure still about what is metadata, [here some info from the ImageJ website](https://imagej.net/formats/metadata). Looking for more info on Look Up Tables (LUTs) [then go to the Neubias training resources](https://neubias.github.io/training-resources/lut/index.html)

### 1.4 Handling RGB images and what is Metadata

Here the [demo RGB image](https://drive.google.com/file/d/1ViNTNl1s9rYLGgpebO3EG0va4mB3RRrT/view?usp=sharing)

### 1.5 Multichannel image data

Here the [demo tif file with multichannel data](https://drive.google.com/file/d/1lcEEsiIpKZfQwrvAmdn2WeCBTEmrmFEu/view?usp=sharing)

## 2 Basic image analysis pipeline

Some good reading on what a [BioImage Analysis Workflow is can be found here](http://eubias.org/NEUBIAS/workflows-components-bioimage-analysis-neubias-concept/)

Here the [demo rice image](https://drive.google.com/file/d/1Wm-QEs4XcJ-cu42mStFtWK-QC7C5adQY/view?usp=sharing), a classic!

Some extra information on [thresholding](https://neubias.github.io/training-resources/binarization/index.html) and [filtering](https://neubias.github.io/training-resources/filter_neighbourhood/) is available from Neubias.

If you are having problems with the segmentation, and want to practice the quantification tasks via "Analyze particles" please use this [segmented rice image](https://drive.google.com/file/d/1P8WEHL9ds0u2I4QPyu4KGqcB685B0HXu/view?usp=sharing) as a catchup

An important step of many post-processing methods is the [Watershed algorithm](https://en.wikipedia.org/wiki/Watershed_(image_processing)), some info on [how this works in FIJI can be found here](https://imagej.net/plugins/classic-watershed). Then there is a world of operations we can do to improve our segmentation. Many of these are what we call [Morphological operations](https://en.wikipedia.org/wiki/Mathematical_morphology), check out how to do these in FIJI using [MorphoLibJ](https://imagej.net/plugins/morpholibj)

## Need help installing FIJI, please have a look here

### Download

Please go to the [FIJI donwloads website here](https://imagej.net/software/fiji/downloads)

### MacOS (which is a bit trickier)

Look at this youtube video: https://youtu.be/7aCZV-hp0-4

### Windows

Look at this youtube video: https://youtu.be/BwJRFkQh5XE

### If you run into big problems

Please post a question in the Image.sc forum: https://forum.image.sc/

## Important resources

* Online and interactive book on "Introduction to Bioimage Analysis" by Pete Bankhead: https://bioimagebook.github.io/README.html
* ImageJ/FIJI learning: https://imagej.net/Learn 
* NEUBIAS: http://eubias.org/NEUBIAS/
* Image.sc Forum https://forum.image.sc/
* Bio-Image analysis wiki http://wiki.cmci.info/start
* Bioimage Data Analysis, Editor: Kota Miura https://analyticalscience.wiley.com/do/10.1002/was.00050003
* Bioimage Data Analysis Workflows, Editors: Kota Miura and Nataša Sladoje https://www.springer.com/gp/book/9783030223854

## Did you miss the lecture?

If you missed the lecture then you can have a look at this [recording of a live demo I did for the NMI of Sweden](https://youtu.be/_9TWrzm3vBg):

[![Go here for the recording of the live demo](./misc/NMI_2021.gif)](https://youtu.be/_9TWrzm3vBg)