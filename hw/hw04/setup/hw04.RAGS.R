#################################################
# Autograder tests for PH142 hw04-probability

# Hidden tests

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")
#source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(16)

# --------------------------------------------
check_problem1 = function() {
  problem_num <- 1 # problem number
  max_scores[problem_num] <<- 3 # total pts possible
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
check_problem2 = function() {
  problem_num <- 2 # problem number
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "integer" %in% class(sim_01), 
             correct_message = "You made an integer vector",
             error_message = "sim_01 should be a integer vector")
  
  checkpoint(checkpoint_number = 2,
             test = length(sim_01) == 200, 
             correct_message = "Correct number of elements!",
             error_message = "Incorrect number of elements.")

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
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = is.data.frame(output_01), 
             correct_message = "Correct! Output_01 should be a dataframe",
             error_message = "output_01 should be a dataframe")
  
  checkpoint(checkpoint_number = 2,
             test = ncol(output_01) == 2, 
             correct_message = "Correct number of columns (two columns)",
             error_message = "ouput_01 should have two columns.")
  
  checkpoint(checkpoint_number = 3,
             test = nrow(output_01) == 1, 
             correct_message = "Correct number of rows (one row)",
             error_message = "ouput_01 should have one row.")
  
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 12 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  
  checkpoint(checkpoint_number = 1,
             test = is.data.frame(output_02), 
             correct_message = "Correct! output_02 should be a dataframe",
             error_message = "output_02 should be a dataframe")
  
  checkpoint(checkpoint_number = 2,
             test = ncol(output_02) == 2, 
             correct_message = "Correct number of columns (two columns)",
             error_message = "output_02 should have two columns.")
  
  checkpoint(checkpoint_number = 3,
             test = nrow(output_02) == 1, 
             correct_message = "Correct number of rows (one row)",
             error_message = "output_02 should have one row.")
  
  checkpoint(checkpoint_number = 4,
             test = is.data.frame(output_03), 
             correct_message = "Correct! output_03 should be a dataframe",
             error_message = "output_03 should be a dataframe")
  
  checkpoint(checkpoint_number = 5,
             test = ncol(output_03) == 2, 
             correct_message = "Correct number of columns (two columns)",
             error_message = "output_03 should have two columns.")
  
  checkpoint(checkpoint_number = 6,
             test = nrow(output_03) == 1, 
             correct_message = "Correct number of rows (one row)",
             error_message = "output_03 should have one row.")
  
  
  checkpoint(checkpoint_number = 7,
             test = is.data.frame(output_04), 
             correct_message = "Correct! output_04 should be a dataframe",
             error_message = "output_04 should be a dataframe")
  
  checkpoint(checkpoint_number = 8,
             test = ncol(output_04) == 2, 
             correct_message = "Correct number of columns (two columns)",
             error_message = "output_04 should have two columns.")
  
  checkpoint(checkpoint_number = 9,
             test = nrow(output_04) == 1, 
             correct_message = "Correct number of rows (one row)",
             error_message = "output_04 should have one row.")
  
  
  checkpoint(checkpoint_number = 10,
             test = is.data.frame(output_05), 
             correct_message = "Correct! output_05 should be a dataframe",
             error_message = "output_05 should be a dataframe")
  
  checkpoint(checkpoint_number = 11,
             test = ncol(output_05) == 2, 
             correct_message = "Correct number of columns (two columns)",
             error_message = "output_05 should have two columns.")
  
  checkpoint(checkpoint_number = 12,
             test = nrow(output_05) == 1, 
             correct_message = "Correct number of rows (one row)",
             error_message = "output_05 should have one row.")
 
  
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
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "numeric" %in% class(p5), 
             correct_message = "You made a numeric vector",
             error_message = "You need to make a numeric vector")
  
  checkpoint(checkpoint_number = 2,
             test = length(p5) == 5, 
             correct_message = "You inputted 5 values",
             error_message = "Need to input 5 values")
  
  checkpoint(checkpoint_number = 3,
             test = p5[1] <= p5[2] & p5[2] <= p5[3] & p5[3] <= p5[4] & p5[4] <= p5[5], 
             correct_message = "Correct input for p5",
             error_message = "incorrect. check your values.")
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "numeric" %in% class(p8), 
             correct_message = "You made a numeric vector",
             error_message = "You need to make a numeric vector")
  
  checkpoint(checkpoint_number = 2,
             test = length(p8) == 2, 
             correct_message = "You inputted 2 values",
             error_message = "Need to input 2 values")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(p8[1], 0.34, tol = 0.1) & all.equal(p8[2], 1.09, tol = 0.1), 
             correct_message = "Correct input for p8",
             error_message = "Incorrect. Check your values.")
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = class(p9) == "numeric",
             correct_message = "Correct! It is numeric",
             error_message = "Incorrect. Please enter a number")
  
  checkpoint(checkpoint_number = 2,
             test = round(p9, 2) == p9, 
             correct_message = "Correct rounding",
             error_message = "Did you round")
  
  checkpoint(checkpoint_number = 3,
             test = all.equal(p9, 0.09, tol = 0.1), 
             correct_message = "Correct answer for p9",
             error_message = "Incorrect. Check your value.")
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = class(p10) == "character", 
             correct_message = "Correct selection",
             error_message = "Did you make a selection?")
  
  checkpoint(checkpoint_number = 2,
             test = p10 == "not independent", 
             correct_message = "Correct",
             error_message = "incorrect.")
  
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




check_problem13 = function() {
  problem_num <- 13 # problem number
  max_scores[problem_num] <<- 3 # total pts possible
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


check_problem14 = function() {
  problem_num <- 14 # problem number
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


check_problem15 = function() {
  problem_num <- 15 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 4 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  checkpoint(checkpoint_number = 1,
             test = class(p15) == "numeric", 
             correct_message = "Correct, it's numeric",
             error_message = "Is your answer a number?")
  
  checkpoint(checkpoint_number = 2,
             test = p15 > 1,
             correct_message = "Correct, it is a percentage",
             error_message = "Is your answer a percentage?")
  
  checkpoint(checkpoint_number = 3,
             test = round(p15, 1) == p15,
             correct_message = "Correct rounding",
             error_message = "Is your answer rounded?")
  
  checkpoint(checkpoint_number = 4,
             test = all.equal(p15, 28.2, tol = 0.1),
             correct_message = "Correct",
             error_message = "incorrect value.")
  
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

check_problem16 = function() {
  problem_num <- 16 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  checkpoint(checkpoint_number = 1,
             test = class(p16) == "character", 
             correct_message = "Correct, it is character",
             error_message = "Is your answer a character?")
  
  checkpoint(checkpoint_number = 2,
             test = grepl("po.*pred.*value|ppv", p16,
                          ignore.case = TRUE))
  
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

