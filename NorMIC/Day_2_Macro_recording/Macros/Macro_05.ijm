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
main_win = getTitle();

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
//run("Watershed");

// from images to numbers
// get number of objects and area
run("Set Measurements...", "area shape redirect=None decimal=3");
run("Analyze Particles...", "size=2-Infinity display clear add");


// number of objets
roi_ocunt = roiManager("count");
print("\\Clear");
print("Number of ROIs: " + roi_ocunt);
print("Number in results table: " + nResults);

// color code
// dont show images fro the moment
setBatchMode(true);
// make sure drawing will work as expected
setForegroundColor(250, 250, 250);
// Duplicate image and change into RGB composite
selectWindow(main_win);
run("Duplicate...", "title=RGB");
run("RGB Color");
run("RGB Stack");
run("Make Composite", "display=Color");
// Iterate over all the ROIs
for (i = 0; i < nResults(); i++) {
	// Get circularity for the particular ROI
    v = getResult('Circ.', i);

    // now we change the color
    roiManager("Select", i);
    if (v>0.9) {
    	
		Stack.setChannel(2);
		run("Clear", "slice");
	

    } else {

    	Stack.setChannel(1);
		run("Clear", "slice");
		Stack.setChannel(3);
		run("Clear", "slice");

    }
    	
}
// show iamge as composite
Stack.setDisplayMode("composite");
// now we allow images to appear
setBatchMode(false);
// Do not show  ROIs
roiManager("Show All");
roiManager("Show None");
