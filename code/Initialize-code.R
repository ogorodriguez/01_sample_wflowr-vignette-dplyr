## Script for the workflowr vignette.  
## I will use the dplyr examples to create my demo website.

## All instruction found here on the Getting started vignette of workflowr:
## https://workflowr.github.io/workflowr/articles/wflow-01-getting-started.html

## Initialize workflowr
pacman::p_load(workflowr)

## There is no need to create a local Git repo since this has already been done 
## in this laptop.  In any case, please do this command if this hasn't been done
## when reproducing this project.  

## Comment out:
## workflowr::wflow_git_config(user.name = "Your Name", user.email = "email@domain")

## Start sample project 01
workflowr::wflow_start(here::here("008_workflowr_Practice", 
                                  "01_sample_wflowr-vignette-dplyr"),
                       existing = TRUE)

## Build the website that will show the work done on this workflowr project
workflowr::wflow_build()

## View the status of the project
workflowr::wflow_status()

## Files will be visible in the website once they are published.  They may still
## require to be submitted to Github
wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for myproject")

## Check status again
workflowr::wflow_status()

## Now on to Github to have the repo available online with its own website
wflow_use_github("ogorodriguez")

## The files of my website and analysis will need to go to github
## To preview what will be sent I will need to run...
wflow_git_push(dry_run = TRUE)

## To send them for real, run the previous code with the dry_run command
## wflow_git_push()
## This does not seem to work and it looks like it must run from the terminal the following
## command: git push -u origin master







