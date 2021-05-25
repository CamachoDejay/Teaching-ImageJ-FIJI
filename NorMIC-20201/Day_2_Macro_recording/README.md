# Day 2 introductrion to Macro recording and programming

Scripting in ImageJ / FIJI allows you to produce reproducible workflows, for yourself and others. It:

* Improves science communication
* Allows automation, e.g. same analysis over thousands of images

## Schedule of the day (1h session)

* What is the macro language
* How to use the macro recorder
* Hot to go from recording to a simple macro

## What is the macro language

From the [Macro language Site](https://imagej.nih.gov/ij/developer/macro/macros.html) we have:

"A macro is a simple program that automates a series of ImageJ commands. The easiest way to create a macro is to record a series of commands using the command recorder. A macro is saved as a text file and executed by selecting a menu command, by pressing a key or by clicking on an icon in the ImageJ toolbar."

### Important resources

* Introduction to ImageJ's macro language: [Link](https://imagej.nih.gov/ij/developer/macro/macros.html)
* Built-in Macro Functions: [link](https://imagej.nih.gov/ij/developer/macro/functions.html)
* Image.sc forum: [link](https://forum.image.sc/)
* Cheat sheet by [Robert Haase](https://twitter.com/haesleinhuepf) and firends: [Link](https://github.com/BiAPoL/imagej-macro-cheat-sheet)

## Practical session

**Disclamer**: We will be working with [FIJI](https://imagej.net/Fiji/Downloads) for this practical. If you get stuck doing the tasks you can use the catchups for inspiration and help.

### Step 1: The recorder

To access the recorder go to the menu: `Plugins > Macros > Record...`

**Task 1**: Record a series of steps that segments the blob image.

Hints:

* To load the blob image use: `File > Open Samples > Blobs`
* Remember the use of `Image > Duplicate` to record intermediate steps
* Implement a pre-processing step: e.g. `Process > Filter > Median`
* Thresholding can be done via `Image > Adjust > Threshold`
* To then quantify, remember the use of `Analyze > Set Measurements` and `Analyze > Analyze particles`

**Catchup** Having problems look and example [here](./Macros/Macro_01.ijm)

### Step 2: Recroder 2 macro

**Task 2**: Now it is time to take that recording a clean it up into a simple macro.

Hints:

* In the recorder window click `create`
* Alternatively, go to:

  * `File > New > Script`
  * Change the language to imageJ macro via `Language > IJ1 Macro`
  * Copy paste what you need from the recorder

* In most cases, it is a good idea to always clean you ImageJ before you run commands, for example:

```
// clean up first
// close all images
close("*");
// empty the ROI manager
roiManager("reset");
// empty the results table
run("Clear Results");
// configure that binary image are black in background, objects are white
setOption("BlackBackground", true);
```

* Remember that you can add comments by using `//` af the start of a line, see example above
* To automatically open the Blobs image you can use `run("Blobs (25K)");`

**Catchup** Having problems look and example [here](./Macros/Macro_02.ijm)
