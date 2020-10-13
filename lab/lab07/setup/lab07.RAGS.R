#################################################
# Autograder tests for PH142 lab06-CLT
# This is the full solution

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")

#source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(6)

# --------------------------------------------
# check_problem1 = function() {
#   problem_num <- 1 # problem number
#   max_scores[problem_num] <<- 1 # total pts possible
#   num_tests <<- 2 # num of checkpoints
# 
#   problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
#   problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
# 
#   tests_failed <<- num_tests
# 
#   # Test cases here:
# 
#   checkpoint(checkpoint_number = 1,
#              test = as.numeric(size_5_samples),
#              correct_message = "Correct",
#              error_message = "Make sure your values are numerics")
# 
#   checkpoint(checkpoint_number = 2,
#              test = length(size_5_samples) == 10,
#              correct_message = "Correct",
#              error_message = "Did you run the sample 10 times?")
# 
# 
#   # Assign appropriate score to problem depending on tests passed/failed
# 
#   if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
#     scores[problem_num] <<- max_scores[problem_num]
#   } else {
#     scores[problem_num] <<- 0
#   }
# 
#   assert_that(tests_failed <= num_tests, tests_failed >= 0,
#               msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
#   return_score(problem_num, num_tests, tests_failed)
# }

check_problem1 = function() {
  problem_num <- 1 # problem number
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
# check_problem2 = function() {
#   problem_num <- 2 # problem number
#   max_scores[problem_num] <<- 1 # total pts possible
#   num_tests <<- 2 # num of checkpoints
# 
#   problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
#   problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
# 
#   tests_failed <<- num_tests
# 
#   # Test cases here:
# 
#   checkpoint(checkpoint_number = 1,
#              test = as.numeric(size_50_samples),
#              correct_message = "Correct",
#              error_message = "Make sure your values are numerics")
# 
#   checkpoint(checkpoint_number = 2,
#              test = length(size_50_samples) == 10,
#              correct_message = "Correct",
#              error_message = "Did you run the sample 10 times?")
# 
# 
#   # Assign appropriate score to problem depending on tests passed/failed
# 
#   if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
#     scores[problem_num] <<- max_scores[problem_num]
#   } else {
#     scores[problem_num] <<- 0
#   }
# 
#   assert_that(tests_failed <= num_tests, tests_failed >= 0,
#               msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
#   return_score(problem_num, num_tests, tests_failed)
# }


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
# check_problem3 = function() {
#   problem_num <- 3 # problem number
#   max_scores[problem_num] <<- 1 # total pts possible
#   num_tests <<- 2 # num of checkpoints
# 
#   problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
#   problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
# 
#   tests_failed <<- num_tests
# 
#   # Test cases here:
# 
#   checkpoint(checkpoint_number = 1,
#              test = as.numeric(size_500_samples),
#              correct_message = "Correct",
#              error_message = "Make sure your values are numerics")
# 
#   checkpoint(checkpoint_number = 2,
#              test = length(size_500_samples) == 10,
#              correct_message = "Correct",
#              error_message = "Did you run the sample 10 times?")
# 
# 
#   # Assign appropriate score to problem depending on tests passed/failed
# 
#   if (tests_failed == 0 && problem_types[problem_num] != "free-response"){
#     scores[problem_num] <<- max_scores[problem_num]
#   } else {
#     scores[problem_num] <<- 0
#   }
# 
#   assert_that(tests_failed <= num_tests, tests_failed >= 0,
#               msg = sprintf("Did you set your num_test correctly for problem %d?", problem_num))
#   return_score(problem_num, num_tests, tests_failed)
# }

check_problem3 = function() {
  problem_num <- 3 # problem number
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
check_problem4 = function() {
  problem_num <- 4 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = sampleSize_answer== "c", 
             correct_message = "Correct",
             error_message = "Wrong")
  
  
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
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = identical(plot1$data, alameda_pop),
             correct_message = "You used alameda_pop",
             error_message = "Make sure to use alameda_pop.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(plot1$mapping$x) == "height",
             correct_message = "height is on the x axis",
             error_message = "height should be on the x axis.")
  
  checkpoint(checkpoint_number = 3,
             test = "GeomBar" %in% class(plot1$layers[[1]]$geom), 
             correct_message = "A histogram has been defined in ggplot",
             error_message = "Did you define a histogram?")
  
  checkpoint(checkpoint_number = 4,
             test = nrow(height_mean_sd) == 1 & 
               ncol(height_mean_sd) == 2,
             correct_message = "height_mean_sd has 1 row and 2 columns.",
             error_message = "height_mean_sd should have 1 row and 2 columns.")
  
  checkpoint(checkpoint_number = 5,
             test = class(height_mean_sd$mean_height) == 'numeric' &
               class(height_mean_sd$sd_height) == 'numeric',
             correct_message = "You did the corret manipulation!",
             error_message = "Are the mean and sd numeric?")
  
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

#--------------------------------------------------------------------------------------------

check_problem6 = function() {
  problem_num <- 6 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(known_pop_sd, 2.786314, tol = 0.01),
             correct_message = "You found the correct standard deviation!",
             error_message = "Did you make sure to use the function sd() in problem 5?")
  
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
#----------------------------------------------------------------------------------------------

capture.output(check_problem1(), file='NUL')
capture.output(check_problem2(), file='NUL')
capture.output(check_problem3(), file='NUL')
capture.output(check_problem4(), file='NUL')
capture.output(check_problem5(), file='NUL')
capture.output(check_problem6(), file='NUL')