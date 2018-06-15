#!/bin/bash

# =============================================
# Script to create student directories and    |
# clone student repo within their directory   |
# =============================================


# ------------------------------
# | variables                  |
# ------------------------------

# github repo url
# NOTE foobarRepo="git@foobar.com:"
repo=""

# cohort name
# NOTE cohort="/foobar.git"
cohort=""

# array of student names
students=(
  "John"
  "Jane"
)

# array of students repos, matching order of `students` array
studentsRepos=(
  "JohnD2018"
  "JaneD2014"
)


# ------------------------------
# | arithmetic for loop        |
# ------------------------------

for ((i = 0; i < ${#students[*]}; i++)); do
  echo "Creating ${students[i]}'s directory ..."
  # create `student[i]` directory
  mkdir ${students[i]}

  echo "Changing directory to ${students[i]} ..."
  # cd into current `student[i]`
  cd ${students[i]}

  echo "Cloning repo $repo${studentsRepos[i]}$cohort ..."
  # clone current `student[i]` repo
  git clone $repo${studentsRepos[i]}$cohort

  echo "Going back to parent directory ..."
  cd ..
# end of for loop
done

# display "DONE." when for loop is complete
echo DONE.
