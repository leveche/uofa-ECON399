*************************  Lab1   ************************************************
*this excercise explores two potential econometric models: international migration and crime
*download data from CANSIM@CHASS as "plain text" format
*edit the txt file so that the data record starts from the first line
*read each sub-data into stata and save them separately under different names by stata
*merge the sub-data into one dataset in stata
*analyze the data
clear
*set the max memory for stata
set mem 1g
*set the data file path for stata
cd "ECON 399"
*read in the "population" data as a txt format and save as annual data in stata
clear
infile
save
gen
destring yr, gen (year) force
collapse (mean) pop, by (year)
keep
save pop_1976_2012.dta, replace
clear
use "pop_1976_2012.dta"
merge using "immigrants_1976_2012.dta"
drop _merge
merge using "GDP_1976_2012.dta"
drop _merge
save "lab1_1.dta", replace
*sample descriptives
sum
*correlation
corr
*generate per capita gdp indicator
gen
*run regressions
reg
*scale the variables
*population in millions
gen
*immigrants in thousands
gen
*gdp per million people
gen
reg
merge
corr
