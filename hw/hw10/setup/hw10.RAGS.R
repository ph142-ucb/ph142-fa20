#################################################
# Autograder tests for PH142 hw09
# This is the full solution

###############################################
sol_path <- "setup/sol/"
source("setup/autograder_setup.R")
#source("../common/setup/autograder_setup.R")

# Replace with number of problems
setup_autograder(19)

# --------------------------------------------

check_problem1 = function() {
  problem_num <- 1 # problem number
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 4 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p1),
             correct_message = "A ggplot has been for p1",
             error_message = "You did not define a ggplot for p1.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(p1$mapping$x) == "pop.density",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the x axis for p1?")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p1$mapping$y) == "democrat",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the y axis for p1?")
  
  checkpoint(checkpoint_number = 4,
             test = "GeomPoint" %in% class(p1$layers[[1]]$geom), 
             correct_message = "A scatterplot has been defined in p1",
             error_message = "Did you define a scatterplot in p1?")
  
  
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
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p2),
             correct_message = "A ggplot has been for p2",
             error_message = "You did not define a ggplot for p2.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(p2$mapping$x) == "pop.density",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the x axis for p2?")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p2$mapping$y) == "democrat",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the y axis for p2?")
  
  checkpoint(checkpoint_number = 4,
             test = "GeomPoint" %in% class(p2$layers[[1]]$geom), 
             correct_message = "A scatterplot has been defined in p2",
             error_message = "Did you define a scatterplot in p14?")
  
  checkpoint(checkpoint_number = 5,
             test = "GeomTextRepel" %in% class(p2$layers[[2]]$geom), 
             correct_message = "Labeling has been added to p2",
             error_message = "Did you add labeling to p2?")
  
  
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
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p3),
             correct_message = "A ggplot has been for p3",
             error_message = "You did not define a ggplot for p3.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(p3$mapping$x) == "log_pop_density",
             correct_message = "Correct!",
             error_message = "Did you plot the right (and correctly named) variable on the x axis for p3?")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p3$mapping$y) == "democrat",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the y axis for p3?")
  
  checkpoint(checkpoint_number = 4,
             test = "GeomPoint" %in% class(p3$layers[[1]]$geom), 
             correct_message = "A scatterplot has been defined in p3",
             error_message = "Did you define a scatterplot in p3?")
  
  checkpoint(checkpoint_number = 5,
             test = "GeomTextRepel" %in% c(class(p3$layers[[2]]$geom), class(p3$layer[[3]]$geom)), 
             correct_message = "Labeling has been added to p3",
             error_message = "Did you add labeling to p3?")
  
  
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
             test = all.equal(p4, 0.6381187, tolerance = .01), 
             correct_message = "Correct",
             error_message = "Incorrect")
  
  
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
  max_scores[problem_num] <<- 4 # total pts possible
  num_tests <<- 2 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "lm" %in% class(lm_CA), 
             correct_message = "Correct",
             error_message = "Did you make a linear model for lm_CA")
  
  checkpoint(checkpoint_number = 2,
             test = all.equal(r.squared, 0.41, tolerance = .01),
             correct_message = "Correct",
             error_message = "Did you calculate r-squared?")
  
  
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
  max_scores[problem_num] <<- 4 # total pts possible
  num_tests <<- 13 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(plot1),
             correct_message = "A ggplot has been for plot1",
             error_message = "You did not define a ggplot for plot1.")
  
  checkpoint(checkpoint_number = 2,
             test = quo_get_expr(plot1$mapping$x) == "log_pop_density",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the x axis for plo1?")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(plot1$mapping$y) == "democrat",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the y axis for plot1?")
  
  checkpoint(checkpoint_number = 4,
             test = "GeomPoint" %in% class(plot1$layers[[1]]$geom), 
             correct_message = "A scatterplot has been defined in plot1",
             error_message = "Did you define a scatterplot in plot1?")
  
  checkpoint(checkpoint_number = 5,
             test = "ggplot" %in% class(plot2),
             correct_message = "A ggplot has been for plot2",
             error_message = "You did not define a ggplot for plot2.")
  
  checkpoint(checkpoint_number = 6,
             test = quo_get_expr(plot2$mapping$sample) == ".resid",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable in 'sample' for plot2")
  
  checkpoint(checkpoint_number = 7,
             test = "StatQqLine" %in% class(plot2$layers[[2]]$stat), 
             correct_message = "A QQ plot has been defined in plot2",
             error_message = "Did you define a QQplot in plot2?")
  
  checkpoint(checkpoint_number = 8,
             test = "ggplot" %in% class(plot3),
             correct_message = "A ggplot has been for plot3",
             error_message = "You did not define a ggplot for plot3.")
  
  checkpoint(checkpoint_number = 9,
             test = quo_get_expr(plot3$mapping$x) == ".fitted",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the x axis for plot3?")
  
  checkpoint(checkpoint_number = 10,
             test = quo_get_expr(plot3$mapping$y) == ".resid",
             correct_message = "Correct!",
             error_message = "Did you plot the right variable on the y axis for plot3?")
  
  checkpoint(checkpoint_number = 11,
             test = "GeomPoint" %in% class(plot3$layers[[1]]$geom), 
             correct_message = "A scatterplot has been defined in plot3",
             error_message = "Did you define a scatterplot in plot3?")
  
  checkpoint(checkpoint_number = 12,
             test = "ggplot" %in% class(plot4),
             correct_message = "A ggplot has been for plot4",
             error_message = "You did not define a ggplot for plot4.")
  
  checkpoint(checkpoint_number = 13,
             test = "GeomBoxplot" %in% class(plot4$layers[[1]]$geom), 
             correct_message = "A boxplot has been defined in plot4",
             error_message = "Did you define a boxplot in plot4?")
  
  
  
  
  
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
  num_tests <<- 0 # num of checkpoints
  
  problem_types[problem_num] <<- "free-response" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
 
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

check_problem13 = function() {
  problem_num <- 13 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 3 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "data.frame" %in% class(p13), 
             correct_message = "Pass",
             error_message = "p13 should be a dataframe")
  
  checkpoint(checkpoint_number = 2,
             test = all.equal(p13[[2]], c(111.0524, 113.1113, 113.3995), tolerance = .01),
             correct_message = "Correct",
             error_message = "Wrong answer for mean"
  )
  
  checkpoint(checkpoint_number = 3,
            test = all.equal(p13[[3]], c(35.00980, 35.09351, 35.11905), tolerance = .01),
            correct_message = "Correct",
            error_message = "wrong answer for sd"
            
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
check_problem14 = function() {
  problem_num <- 14 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 5 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "ggplot" %in% class(p14),
             correct_message = "A ggplot has been defined",
             error_message = "You did not define a ggplot.")
  
  checkpoint(checkpoint_number = 2,
             test = identical(p14$data, nhanes),
             correct_message = "Correct dataset",
             error_message = "Did you use the right dataset?")
  
  checkpoint(checkpoint_number = 3,
             test = quo_get_expr(p14$mapping$x) == "bpcat",
             correct_message = "Correct x variable",
             error_message = "Did you plot the right variable on the x axis?")
  
  checkpoint(checkpoint_number = 4,
             test = quo_get_expr(p14$mapping$y) == "lbdldl",
             correct_message = "Correct y variable",
             error_message = "Did you plot the right variable on the y axis?")
  
  checkpoint(checkpoint_number = 5,
             test = "GeomBoxplot" %in% class(p14$layers[[1]]$geom), 
             correct_message = "A boxplot has been defined in ggplot",
             error_message = "Did you define a boxplot in ggplot?")
  
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
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 4 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = "data.frame" %in% class(p15),
             correct_message = "Correct!",
             error_message = "Did you use the tidy function")
  
  checkpoint(checkpoint_number = 2,
             test = "bpcat" %in% p15$term ,
             correct_message = "Correct!",
             error_message = "Did you use the correct formula")
  
  checkpoint(checkpoint_number = 3,
             test = "Hypertension-Elevated" %in% p15$contrast,
             correct_message = "Correct!",
             error_message = "Did you use the correct formula")
  checkpoint(checkpoint_number = 4,
             test = all.equal(p15$estimate, c(2.06, 2.35, 0.288), tolerance = 0.01),
             correct_message = "Correct!",
             error_message = "Incorrect estimates. Check your code"
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

check_problem16 = function() {
  problem_num <- 16 # problem number
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

check_problem17 = function() {
  problem_num <- 17 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
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

check_problem18 = function() {
  problem_num <- 18 # problem number
  max_scores[problem_num] <<- 2 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(p18, 0.1579393, tolerance = .01),
             correct_message = "Correct",
             error_message = "Incorrect p-value. Check your work"
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

check_problem19 = function() {
  problem_num <- 19 # problem number
  max_scores[problem_num] <<- 1 # total pts possible
  num_tests <<- 1 # num of checkpoints
  
  problem_types[problem_num] <<- "autograded" # choices: autograded, free-response
  problem_names[problem_num] <<- sprintf("Problem %d", problem_num)
  
  tests_failed <<- num_tests
  
  # Test cases here:
  
  checkpoint(checkpoint_number = 1,
             test = all.equal(p19, 0.1579393, tolerance = .01),
             correct_message = "Correct",
             error_message = "Incorrect p-value. Check your work"
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


check_problem1()
check_problem2()
check_problem3()
check_problem4()
check_problem5()
check_problem6()
check_problem7()
check_problem8()
check_problem9()
check_problem10()
check_problem11()
check_problem12()
check_problem13()
check_problem14()
check_problem15()
check_problem16()
check_problem17()
check_problem18()
check_problem19()
