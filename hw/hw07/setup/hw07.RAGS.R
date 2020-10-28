#################################################
# Autograder tests for PH142 hw08
# This is the hidden test, with full test of correctness

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")

#source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(14)

# --------------------------------------------

check_problem1 = function() {
  problem_num <- 1 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 6 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p1),
             correct_message = "A ggplot has been defined",
             error_message = "You did not define a ggplot.")
  
  checkpoint(checkpoint_number = 2,
             test = p1$data == hemoglobin, 
             correct_message = "Correct! You used hemoglobin as the data.",
             error_message = "Use hemoglobin as the data")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p1$mapping$y) == "hemo_level", 
             correct_message = "Correct! You used hemoglobin as the data!",
             error_message = "Use hemoglobin as the data")
  
  checkpoint(checkpoint_number = 4,
             test = quo_get_expr(p1$mapping$x) == "ward", 
             correct_message = "Correct! You used hemoglobin as the data!",
             error_message = "Use hemoglobin as the data")
  
  checkpoint(checkpoint_number = 5,
             test = "GeomBoxplot" %in% class(p1$layers[[1]]$geom), 
             correct_message = "Correct! You defined a boxplot.",
             error_message = "Did you define a boxplot?")
  
  checkpoint(checkpoint_number = 6,
             test = "GeomPoint" %in% class(p1$layers[[2]]$geom), 
             correct_message = "Correct! You plotted the raw data points with geom_point overlaid on top of the boxplot.",
             error_message = "Did you plot the raw data points with geom_point overlaid on top of the boxplot?")
  
  
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

check_problem2 = function() {
  problem_num <- 2 # problem number
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

check_problem3 = function() {
  problem_num <- 3 # problem number
  max_scores[problem_num] <<- 2 # total pts possible
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

check_problem4 = function() {
  problem_num <- 4 # problem number
  max_scores[problem_num] <<- 3 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(round(CI_upperbound, 3), 1.498, 0.001), 
             correct_message = "You got the correct CI_upperbound!",
             error_message = "Did you use mean_diff - t_star * (se_diff)?")
  
  checkpoint(checkpoint_number = 2,
             test = all.equal(round(CI_lowerbound, 2), -0.38, 0.01),
             correct_message = "You got the correct CI_lowerbound!",
             error_message = "Did you use mean_diff + t_star * (se_diff)?"
  )
  
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
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(round(t_statistics, 2), 1.25, 0.01), 
             correct_message = "Correct t statistic!",
             error_message = "Did you follow the hint?")
  
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
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(round(p_value, 2), 0.23, 0.01), 
             correct_message = "Correct!",
             error_message = "Did you use the pt() function?")
  
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
  max_scores[problem_num] <<- 2 # total pts possible
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

check_problem10 = function() {
  problem_num <- 10 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(round(p_value_10, 2), 0, 0.01), 
             correct_message = "Correct!",
             error_message = "Did you find the mean and standard deviation?")

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

check_problem11 = function() {
  problem_num <- 11 # problem number
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

check_problem12 = function() {
  problem_num <- 12 # problem number
  max_scores[problem_num] <<- 3 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(round(CI_upperbound_12, 2), 4.73, 0.01), 
             correct_message = "Correct!",
             error_message = "Make sure your CI appears reasonable given the question.")
  
  checkpoint(checkpoint_number = 2,
             test = all.equal(round(CI_lowerbound_12, 2), 4.31, 0.01),
             correct_message = "Correct",
             error_message = "Make sure your CI appears reasonable given the question."
  )
  
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
check_problem13 = function() {
  problem_num <- 13 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = p13 == "-1.20 to 0.90", 
             correct_message = "Correct!",
             error_message = "Incorrect.")
  
  
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

check_problem14 = function() {
  problem_num <- 14 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = p14 == "A 95% CI will not contain 0, but a 99% CI will.", 
             correct_message = "Correct!",
             error_message = "Incorrect.")
  
  
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
capture.output(check_problem10(), file='NUL')
capture.output(check_problem11(), file='NUL')
capture.output(check_problem12(), file='NUL')
capture.output(check_problem13(), file='NUL')
capture.output(check_problem14(), file='NUL')