README Lab 9 (fall)

This lab introduces student to the two sample t test and paired t test. The paired t test is explored through an in class activity called "Hit the Dot"

To Do:

1. Update lab09-sol.Rmd due date with the due date from the syllabus.

2. Update lab09-sol.Rmd submission instructions at the bottom of the assignment to reflect fa20.

3. Comment out the line in the setup code chunk that states `source("setup/lab09.RAGS.R")` and add a line that states `source("lab09.RAGS-hidden.R")`

4. Open lab09.RAGS-hidden.R and replace the line that states `source("setup/autograder_setup.R")` with `source(../common/setup/autograder_setup.R")`

5. Go through and check the autograder in lab09.RAGS-hidden.R. Replace the correct and error messages with more informative messages if necessary.

6. Return to lab09-sol.Rmd and read through for spelling, grammar, and clarity. If you have a question, please ask!

7. Run the `total_score()` code at the bottom of lab09-sol.Rmd and be sure you pass all checkpoints.

8. Knit lab09-sol.Rmd to make sure there are no errors and generate the solution pdf.

9. Delete `source("lab09.RAGS-hidden.R")` and uncomment `source("setup/lab09.RAGS.R")` in the lab09-sol.Rmd.

10. Return to the lab09.RAGS-hidden.R and comment out `source(../common/setup/autograder_setup.R")` and uncomment `source("setup/autograder_setup.R")`

11. The assignment id from Gradescope is 669378.

12. In your terminal, make sure your working directory is ph142-dev and run the following line of code: `python generate_assignment.py --name lab09 --prog-id 669378 --frq-id -1` \\
  12a. This generates the autograder and student directories inside lab09
  
13. Navigate to the student directory. Open lab09.Rmd and check to make sure all of the solutions have been stripped out. 

14. Check that the autograder runs correctly (all tests should fail and free response questions should be reported as "NOT YET GRADED")  

15. Knit lab09.Rmd to make sure there are no issues. If the document does not knit right away, fix whatever is causing the issue in the lab09-sol.Rmd file (not lab09.Rmd) *All of the assignments should knit cleanly upon opening*. If you don't know how to fix it, ask Sophie or Corinne on slack.
  15a. If you do have to make an edit in lab09-sol.Rmd so lab09.Rmd knits, redo steps 12-15 before moving on
  
16. Make sure solutions are stripped out of the lab09.Rmd file. If they are not stripped out, make sure the solution tags are properly formatted in lab09-sol.Rmd. If they are not, correct them and repeat steps 12-15.

17. Open the turn_in.py file inside the student directory and check to make sure that each of these items is properly initialized and match what is written here:
ASSIGNMENT_RMD_PATH = "lab09.Rmd"
COURSE_ID = 149381
PROGRAMMING_ASSIGNMENT_ID = 669378

18. Create a branch and start a pull request. Assign Sophie and Corinne as Reviewers. Ping us on Slack once you have completed the previous tasks.

*Note: In order to knit lab09-sol.Rmd at any point, you need to do steps 3 and 4.*