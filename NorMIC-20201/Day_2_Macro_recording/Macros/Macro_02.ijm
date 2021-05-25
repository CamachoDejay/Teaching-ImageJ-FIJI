// clean up first
// close all images
close("*");
// empty the ROI manager
roiManager("reset");
// empty the results table
run("Clear Results");
// configure that binary image are black in background, objects are white
setOption("BlackBackground", true);

// Open image
run("Blobs (25K)");
main_image  = getTitle();

// Change LUT
run("Grays");

// Pre processing 
// median filter - duplicte to keep intermediate results
run("Duplicate...", "title=med_filt");
run("Median...", "radius=5");

// segmentation
// Segment via otsu
run("Duplicate...", "title=mask");
setAutoThreshold("Otsu dark");
setOption("BlackBackground", true);
run("Convert to Mask");

// from images to numbers
// get number of objects and area
run("Set Measurements...", "area redirect=None decimal=3");
run("Analyze Particles...", "clear summarize add");

