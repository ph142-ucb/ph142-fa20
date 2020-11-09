README HW 8 (Fall)

This homework goes over hypothesis tests for proportions and 4 methods of constructing CIs.

The only files you need to edit are hw08-sol.Rmd and hw08.RAGS-hidden.R


1. Update hw08-sol.Rmd due date with the date solutions will be released.

2. Delete hw08-sol.Rmd submission instructions.

3. Comment out the line in the setup code chunk that states `source("setup/hw08.RAGS.R")` and add a line that states `source("hw08.RAGS-hidden.R")`

4. Open hw08.RAGS-hidden.R and replace the line that states `source("setup/autograder_setup.R")` with `source(../common/setup/autograder_setup.R")`

5. Go through and check the autograder in hw08.RAGS-hidden.R. Replace the correct and error messages with more informative messages if necessary.

6. Return to hw08-sol.Rmd and read through for spelling, grammar, and clarity. If you have a question, please ask!

7. Run the `total_score()` code at the bottom of hw08-sol.Rmd and be sure you pass all checkpoints.

8. Knit hw08-sol.Rmd to make sure there are no errors and generate the solution pdf.

9. Delete `source("hw08.RAGS-hidden.R")` and uncomment `source("setup/hw08.RAGS.R")` in the hw08-sol.Rmd.

10. Return to the hw08.RAGS-hidden.R and comment out `source(../common/setup/autograder_setup.R")` and uncomment `source("setup/autograder_setup.R")`

11. In your terminal, make sure your working directory is ph142-dev and run the following line of code: `python generate_assignment.py --name hw08 --prog-id -1 --frq-id -1` \\
  12a. This generates the autograder and student directories inside hw08
  
12. Navigate to the student directory. Open hw08.Rmd and check to make sure all of the solutions have been stripped out. 

13. Check that the autograder runs correctly (all tests should fail and free response questions should be reported as "NOT YET GRADED")  

14. Knit hw08.Rmd to make sure there are no issues. If the document does not knit right away, fix whatever is causing the issue in the hw08-sol.Rmd file (not hw08.Rmd) *All of the assignments should knit cleanly upon opening*. If you don't know how to fix it, ask Sophie or Corinne on slack.
  14a. If you do have to make an edit in hw08-sol.Rmd so hw08.Rmd knits, redo steps 11-13 before moving on
  
15. Make sure solutions are stripped out of the hw08.Rmd file. If they are not stripped out, make sure the solution tags are properly formatted in hw08-sol.Rmd. If they are not, correct them and repeat steps 12-15.

16. Create a branch and start a pull request. Assign Sophie and Corinne as Reviewers. Ping us on Slack once you have completed the previous tasks.

*Note: In order to knit hw08-sol.Rmd at any point, you need to do steps 3 and 4.*