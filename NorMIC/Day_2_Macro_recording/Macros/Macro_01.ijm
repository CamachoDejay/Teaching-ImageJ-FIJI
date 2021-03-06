run("Blobs (25K)");
run("Grays");
run("Duplicate...", "title=med_filt");
run("Median...", "radius=5");
run("Duplicate...", "title=mask");
setAutoThreshold("Otsu dark");
//run("Threshold...");
//setThreshold(128, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Close");
run("Set Measurements...", "area redirect=None decimal=3");
run("Set Measurements...");
run("Analyze Particles...", "clear summarize add");
selectWindow("blobs.gif");
selectWindow("med_filt");
selectWindow("mask");
selectWindow("med_filt");