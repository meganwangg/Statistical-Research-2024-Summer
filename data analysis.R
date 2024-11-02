
############################################################################# 
## Programmer: Megan Wang
## Date: June 2024 - August 2024
## Purposes: Develop R code to analyze the data collected from 127 clinical trials published on ClinicalTrials.gov
## Data:
## In order to understand how the phase I clinical trials are conducted and 
## how the design parameters are being used, we performed a literature review of 
## the published phase I trials on ClinicalTrials.gov by using the following criteria:
##  1.	Period of 1/1/2014 ~ 12/31/2023
##  2.  Completed studies
##  3.	Protocol available
##  4.  Adult cancer patients (18 - 64 years)
##  5.	Patients of all sex
##  6.	Phase 1 studies
##  7.	Results available
##
## We compiled a list of 127 Phase I clinical trials from ClinicalTrials.gov with the criteria above. 
############################################################################# 


## Import data

library(readxl)
mydata <- read.csv("/Users/Megan Wang/Documents/Research/dataset2.csv")

## Explore the data

head(mydata)
summary(mydata)
dim(mydata)
dimnames(mydata)
attach(mydata)

## [1] "NCT.Number"             "Study.Title"            "Study.URL"              "Study.Status"          
## [5] "Conditions"             "Interventions"          "Sponsor"                "Collaborators"         
## [9] "Study.Type"             "X"                      "single_combination"     "Dose_finding"          
## [13] "Design"                 "other_design"           "more_than_one_drug"     "n_finding"             
## [17] "dose.level"             "comment_finding"        "Dose.expansion"         "n_expansion"           
## [21] "toxicity.stopping.rule" "comment_expansion"      "phase2"                 "n_phase2"              
## [25] "comment_phase2" 

# Summarize data 

table(single_combination)
prop.table(table(single_combination))

table(Dose_finding)
round (prop.table(table(Dose_finding)), 3)

table(Design)
prop.table(table(Design))

table(other_design)

table(more_than_one_drug)
prop.table(table(more_than_one_drug))

table(Dose_expansion)
prop.table(table(Dose_expansion))

table(toxicity_stopping_rule)
prop.table(table(toxicity_stopping_rule))

table(phase2)
prop.table(table(phase2))

summary(n_finding)
mean(n_finding,na.rm=T)
sd(n_finding,na.rm=T)

summary(dose_level)
mean(dose.level,na.rm=T)
sd(dose.level,na.rm=T)

summary(n_expansion)
mean(n_expansion,na.rm=T)
sd(n_expansion,na.rm=T)

summary(n_phase2)
mean(n_phase2,na.rm=T)
sd(n_phase2,na.rm=T)






