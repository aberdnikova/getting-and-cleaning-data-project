# Getting and cleaning data project

## Introduction

The goal of this project is to prepare a clean and tidy data set that can be used for later analysis. The original data set represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. The full description can be found here: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Workflow

This repository contains R script `run_analysis.R`, which is doing the following:

1.  Downloads the data and unpacks it is the current directory (these steps are skipped if the data is already downloaded);
2.  Read the tables, selects only mean and std values of the measurements;
3.  Merges data tables together, uses descriptive activity names to name the activities in the data set, appropriately labels the data set with descriptive variable names;
4.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
5.  Saves the tidy data set in the file `tidy_data_set.txt`

## Notes

-   `tidy_data_set.txt` was produced by running `run_analysis.R` with R version 4.2.2 (2022-10-31);
-   The package `dplyr` needs to be installed.
