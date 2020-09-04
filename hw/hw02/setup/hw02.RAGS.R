#################################################
# Autograder tests for PH142 hw02_cesarean-delivery.Rmd

# Hidden tests (not done)

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")

# source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(15)

# --------------------------------------------
check_problem1 = function() {
  problem_num <- 1 # problem number
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test =  a == "CS_rate", # @TODO: FIX FOR AFTER SP20
             correct_message = "You got the a correct!",
             error_message = "a is incorrect! Try again.")
  
  checkpoint(checkpoint_number = 2,
             test =  b == "CS_rate_100", # @TODO: FIX FOR AFTER SP20
             correct_message = "You got the b correct!",
             error_message = "b is incorrect! Try again.")
  
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
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = p2 == "skewed right", 
             correct_message = "You chose the correct shape of distribution!",
             error_message = "Please set p2 to one of the provided choices.")
  
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
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = p3 == "larger than", 
             correct_message = "Correct choice!",
             error_message = "Please set p3 to one of the provided choices.")
  
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
check_problem5 = function() {
  problem_num <- 5 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  # checkpoint(checkpoint_number = 1,
  #            test = identical(GDP_summary, readRDS(paste0(sol_path, "p5.RDS"))),
  #            correct_message = "",
  #            error_message = "FAILED")
  checkpoint(checkpoint_number = 1,
             test = GDP_summary$mean_GDP > 10000 && GDP_summary$mean_GDP < 15000,
             correct_message = "Correct mean value has been calculated!",
             error_message = "Incorrect mean value. Try again!")
  
  checkpoint(checkpoint_number = 2,
             test = GDP_summary$median_GDP > 3000 && GDP_summary$median_GDP < 3500,
             correct_message = "Correct median value has been calculated!",
             error_message = "Incorrect median value. Try again!")
  
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p6),
             correct_message = "A ggplot has been defined",
             error_message = "You did not define a ggplot.")
  
  checkpoint(checkpoint_number = 2,
             test = p6$layers[[2]]$mapping$xintercept > 11000 &&
                    p6$layers[[2]]$mapping$xintercept < 12000, 
             correct_message = "A vertical line of the correct mean added!",
             error_message = "Incorrect mean value. Try again!")
  
  checkpoint(checkpoint_number = 3,
             test = p6$layers[[3]]$mapping$xintercept > 3000 &&
               p6$layers[[3]]$mapping$xintercept < 3500, 
             correct_message = "A vertical line of the correct median added!",
             error_message = "Incorrect median value. Try again!")
  
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
             test = grepl("bimodal", p7) ||
                    grepl("skewed right", p7), 
             correct_message = "You chose the correct shape of distribution!",
             error_message = "Please set p7 to one of the provided choices.")
  
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
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p8),
             correct_message = "A ggplot has been defined",
             error_message = "You did not define a ggplot.")
  
  #p8s <- readRDS(paste0(sol_path, "p8s.RDS"))
  
  checkpoint(checkpoint_number = 2,
             test = !is.null(p8$facet$params[1]$facets$Income_Group) ||
               !is.null(p8$facet$params[1]$facets$`"Income_Group"`),
             correct_message = "A separate histogram for each level of the `Income_Group` variable has been made!",
             error_message = "Incorrect using the facet_wrap() statement. Try again!")
  
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
check_problem11 = function() {
  problem_num <- 11 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = CS_summary$mean_CS > 10 && CS_summary$mean_CS < 20,
             correct_message = "Correct mean value has been calculated!",
             error_message = "Incorrect mean value. Try again!")
  
  checkpoint(checkpoint_number = 2,
             test = CS_summary$median_CS > 10 && CS_summary$median_CS < 20,
             correct_message = "Correct median value has been calculated!",
             error_message = "Incorrect median value. Try again!")
  
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p12),
             correct_message = "A ggplot has been defined",
             error_message = "You did not define a ggplot.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(p12$mapping$y) == "CS_rate_100",
             correct_message = "The correct y axis has been defined!",
             error_message = "Did you plot the right variable?")
  
  checkpoint(checkpoint_number = 3,
             test = "GeomBoxplot" %in% class(p12$layers[[1]]$geom),
             correct_message = "A box plot has been defined!",
             error_message = "Did you define a box plot in ggplot?")
  
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = five_num_summary$min < 5,
             correct_message = "Correct min value has been computed!",
             error_message = "Incorrect min value. Try again!")
  
  checkpoint(checkpoint_number = 2,
             test = five_num_summary$Q1 > 5 && five_num_summary$Q1 < 10,
             correct_message = "Correct value of the first quartile has been computed!",
             error_message = "Incorrect value of the first quartile. Try again!")
  
  checkpoint(checkpoint_number = 3,
             test = five_num_summary$median > 10 && five_num_summary$median < 20,
             correct_message = "Correct median value has been computed!",
             error_message = "Incorrect median value. Try again!")
  
  checkpoint(checkpoint_number = 4,
             test = five_num_summary$Q3 > 20 && five_num_summary$Q3 < 25,
             correct_message = "Correct value of the third quartile has been computed!",
             error_message = "Incorrect value of the third quartile. Try again!")
  
  checkpoint(checkpoint_number = 5,
             test = five_num_summary$max > 20 && five_num_summary$max < 60,
             correct_message = "Correct max value has been computed",
             error_message = "Incorrect max value. Try again!")
  
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = p14$layers[[2]]$mapping$yintercept > 0 && 
               p14$layers[[2]]$mapping$yintercept < 50,
             correct_message = "A geom_hline has been defined!",
             error_message = "Incorrect value of the y intercept. Try again!")
  
  checkpoint(checkpoint_number = 2,
             test = p14$layers[[3]]$mapping$yintercept > 0 && 
               p14$layers[[3]]$mapping$yintercept < 50,
             correct_message = "A geom_hline has been defined!",
             error_message = "Incorrect value of the y intercept. Try again!")
  
  checkpoint(checkpoint_number = 3,
             test = p14$layers[[4]]$mapping$yintercept > 0 && 
               p14$layers[[4]]$mapping$yintercept < 50,
             correct_message = "A geom_hline has been defined!",
             error_message = "Incorrect value of the y intercept. Try again!")
  
  checkpoint(checkpoint_number = 4,
             test = p14$layers[[5]]$mapping$yintercept > 0 && 
               p14$layers[[5]]$mapping$yintercept < 50,
             correct_message = "A geom_hline has been defined!",
             error_message = "Incorrect value of the y intercept. Try again!")
  
  checkpoint(checkpoint_number = 5,
             test = p14$layers[[6]]$mapping$yintercept > 0 && 
               p14$layers[[6]]$mapping$yintercept < 50,
             correct_message = "A geom_hline has been defined!",
             error_message = "Incorrect value of the y intercept. Try again!")
  
  
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
  max_scores[problem_num] <<- 4 # total pts possible
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
capture.output(check_problem15(), file='NUL')
