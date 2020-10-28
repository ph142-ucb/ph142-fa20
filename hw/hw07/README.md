README  HW 7 (Fall)

This homework goes over multiple forms of the t-test: two sample, paired, and one sample

To Do:

The only files you need to edit are hw07-sol.Rmd and hw07.RAGS-hidden.R


1. Update hw07-sol.Rmd due date with the date solutions will be released.

2. Delete hw07-sol.Rmd submission instructions.

3. Comment out the line in the setup code chunk that states `source("setup/hw07.RAGS.R")` and add a line that states `source("hw07.RAGS-hidden.R")`

4. Open hw07.RAGS-hidden.R and replace the line that states `source("setup/autograder_setup.R")` with `source(../common/setup/autograder_setup.R")`

5. Go through and check the autograder in hw07.RAGS-hidden.R. Replace the correct and error messages with more informative messages if necessary.

6. Return to hw07-sol.Rmd and read through for spelling, grammar, and clarity. If you have a question, please ask!

7. Run the `total_score()` code at the bottom of hw07-sol.Rmd and be sure you pass all checkpoints.

8. Knit hw07-sol.Rmd to make sure there are no errors and generate the solution pdf.

9. Delete `source("hw07.RAGS-hidden.R")` and uncomment `source("setup/hw07.RAGS.R")` in the hw07-sol.Rmd.

10. Return to the hw07.RAGS-hidden.R and comment out `source(../common/setup/autograder_setup.R")` and uncomment `source("setup/autograder_setup.R")`

11. In your terminal, make sure your working directory is ph142-dev and run the following line of code: `python generate_assignment.py --name hw07 --prog-id -1 --frq-id -1` \\
  12a. This generates the autograder and student directories inside hw07
  
12. Navigate to the student directory. Open hw07.Rmd and check to make sure all of the solutions have been stripped out. 

13. Check that the autograder runs correctly (all tests should fail and free response questions should be reported as "NOT YET GRADED")  

14. Knit hw07.Rmd to make sure there are no issues. If the document does not knit right away, fix whatever is causing the issue in the hw07-sol.Rmd file (not hw07.Rmd) *All of the assignments should knit cleanly upon opening*. If you don't know how to fix it, ask Sophie or Corinne on slack.
  14a. If you do have to make an edit in hw07-sol.Rmd so hw07.Rmd knits, redo steps 11-13 before moving on
  
15. Make sure solutions are stripped out of the hw07.Rmd file. If they are not stripped out, make sure the solution tags are properly formatted in hw07-sol.Rmd. If they are not, correct them and repeat steps 12-15.

16. Create a branch and start a pull request. Assign Sophie and Corinne as Reviewers. Ping us on Slack once you have completed the previous tasks.

*Note: In order to knit hw07-sol.Rmd at any point, you need to do steps 3 and 4.*