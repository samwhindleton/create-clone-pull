#!/bin/bash

# =============================================
# Script to git pull from all students repos  |
# =============================================


# ------------------------------
# | variables                  |
# ------------------------------

# cohort name
# NOTE cohort="foobar"
cohort=""

# array of student names
students=(
  "John"
  "Jane"
)


# ------------------------------
# | arithmetic for loop        |
# ------------------------------

for ((i = 0; i < ${#students[*]}; i++)); do
  echo "=================================================="

  echo "Changing directoy to ${students[i]}/$cohort ..."
  # cd into `student[i]/cohort` directory
  cd ${students[i]}/$cohort

  echo "Git pull origin master from ${students[i]}'s repo ..."
  # `git pull origin master` from `student[i]` repo
  git pull origin master

  echo "Going back to parent directory ..."
  cd ../..

  echo "=================================================="
# end of for loop
done

# display "DONE." when for loop is complete
echo DONE.
