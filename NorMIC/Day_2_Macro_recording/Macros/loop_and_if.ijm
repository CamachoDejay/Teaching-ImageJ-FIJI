#@ Integer (label="Pick a value 1-10", min=0, max=10, value=5) myint
#@ Integer (label="Set the number of iterations", min=0, max=10000, value=100) nIterations
// The lines above get user input

// print to show taht it works
print(myint);
print(nIterations);
// init variables
cum_sum = 0;
print("\\Clear");
// for loop
for (i = 0; i < nIterations; i++) {
	// generate random number
	random_num = random * 10;
	// check value
	if (random_num > myint) {
		cum_sum += 1;		
	}
	
}
print("For " + nIterations + " iterations the probability");
print(" of getting a random number [0-10] that is > " + myint + " is: " + cum_sum/nIterations);
