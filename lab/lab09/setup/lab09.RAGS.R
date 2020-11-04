#################################################
# Autograder tests for PH142 lab08-t-test
# This is the sanity check

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")

# source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(9)

# --------------------------------------------
check_problem1 = function() {
  problem_num <- 1 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = class(large_sample_ci)== "numeric", 
             correct_message = "Answer is numeric.",
             error_message = "Did you store your CI as a numeric object?")
  
  checkpoint(checkpoint_number = 2,
             test = length(large_sample_ci) == 2,
             correct_message = "Upperbound and lowerbound have been stored.",
             error_message = "Did you store 2 elements in your object?")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(c(0.2150476, 0.5217945), large_sample_ci, 0.01),
             correct_message = "Correct, the lowerbound is 0.2150476 and upperbound 0.5217945.",
             error_message = "Incorrect value of the interval.")
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d??", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------
check_problem2 = function() {
  problem_num <- 2 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = class(wilson_score_CI)== "numeric", 
             correct_message = "Answer is numeric.",
             error_message = "Did you store your CI as a numeric object?")
  
  checkpoint(checkpoint_number = 2,
             test = length(wilson_score_CI) == 2,
             correct_message = "Upperbound and lowerbound have been stored.",
             error_message = "Did you store 2 elements in your object?")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(c(0.2229, 0.5400), wilson_score_CI, 0.01),
             correct_message = "Correct, the lowerbound is 0.2229 and upperbound 0.5400.",
             error_message = "Incorrect value of the interval.")
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d??", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------

check_problem3 = function() {
  problem_num <- 3 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  checkpoint(checkpoint_number = 1,
             test = class(plus_4_ci)== "numeric", 
             correct_message = "Answer is numeric.",
             error_message = "Did you store your CI as a numeric object?")
  
  checkpoint(checkpoint_number = 2,
             test = length(plus_4_ci) == 2,
             correct_message = "Upperbound and lowerbound have been stored.",
             error_message = "Did you store 2 elements in your object?")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(c(0.2340838, 0.5278209), plus_4_ci, 0.01),
             correct_message = "Correct, the lowerbound is 0.2340838 and upperbound 0.5278209.",
             error_message = "Incorrect value of the interval.")
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------

check_problem4 = function() {
  problem_num <- 4 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  checkpoint(checkpoint_number = 1,
             test = class(exact_method_ci)== "numeric", 
             correct_message = "Answer is numeric.",
             error_message = "Did you store your CI as a numeric object?")
  
  checkpoint(checkpoint_number = 2,
             test = length(exact_method_ci) == 2,
             correct_message = "Upperbound and lowerbound have been stored.",
             error_message = "Did you store 2 elements in your object?")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(c(0.2181, 0.5401), exact_method_ci, 0.01),
             correct_message = "Correct, the lowerbound is 0.2181 and upperbound 0.5401.",
             error_message = "Incorrect value of the interval.")
  
  
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------
check_problem5 = function() {
  problem_num <- 5 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 0 # num of checkpoints

  problem_types[problem_num] <<- "free-response" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)

  tests_failed <<- num_tests

  # Test cases here:

  # Assign appropriate score to problem depending on tests passed/failed

  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }

  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------
check_problem6 = function() {
  problem_num <- 6 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 4 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p6),
             correct_message = "A ggplot has been defined.",
             error_message = "You did not define a ggplot.")
  
  checkpoint(checkpoint_number = 2,
             test = p6$data == sex_CIs, 
             correct_message = "sex_CIs has been used as the data.",
             error_message = "Did not use breastfeed_CIs as the data")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p6$mapping$y) == "estimate", 
             correct_message = "The y has been specified correctly.",
             error_message = "Did you specify the data correctly?")
  
  checkpoint(checkpoint_number = 4,
             test = quo_get_expr(p6$mapping$x) == "method", 
             correct_message = "The x has been specified correctly.",
             error_message = "Did you specify the data correctly?")
  # 
  # checkpoint(checkpoint_number = 5,
  #            test = "GeomPoint" %in% class(p6$layers[[1]]$geom), 
  #            correct_message = "The point estimates have been added.",
  #            error_message = "Did you plot the point estimates?")
  # 
  # checkpoint(checkpoint_number = 6,
  #            test = "GeomSegment" %in% class(p6$layers[[3]]$geom), 
  #            correct_message = "The CI segments have been added.",
  #            error_message = "Did you plot the CI segments?")
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------
check_problem7 = function() {
  problem_num <- 7 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 0 # num of checkpoints
  
  problem_types[problem_num] <<- "free-response" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------

check_problem8 = function() {
  problem_num <- 8 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 0 # num of checkpoints
  
  problem_types[problem_num] <<- "free-response" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------
check_problem9 = function() {
  problem_num <- 9 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 0 # num of checkpoints
  
  problem_types[problem_num] <<- "free-response" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  # Assign appropriate score to problem depending on tests passed/failed
  
  if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
    scores[problem_num] <<- max_scores[problem_num]
  } else {
    scores[problem_num] <<- 0
  }
  
  assert_that(tests_failed <= num_tests, tests_failed >= 0,
              msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
  return_score(problem_num, num_tests, tests_failed)
}

# --------------------------------------------



capture.output(check_problem1(), file='NUL')
capture.output(check_problem2(), file='NUL')
capture.output(check_problem3(), file='NUL')
capture.output(check_problem4(), file='NUL')
capture.output(check_problem5(), file='NUL')
capture.output(check_problem6(), file='NUL')
capture.output(check_problem7(), file='NUL')
capture.output(check_problem8(), file='NUL')
capture.output(check_problem9(), file='NUL')

