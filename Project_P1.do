*PHASE 2 ANLYSIS
*load the dataset
insheet using "C:\Users\28249\Desktop\ECO375\Project_Flight_data.csv", clear
save "C:\Users\28249\Desktop\ECO375\Project_Flight_data.dta", replace
*create the scatter plot of avg fare on distance in miles
twoway(scatter fare nsmiles)
twoway(scatter fare nsmiles), ///
title("Scatter Plot of avg fare vs. distance in miles") ///
xlabel(, labsize(medium)) ///
ylabel(, labsize(medium))
*run a regression
reg fare nsmiles
