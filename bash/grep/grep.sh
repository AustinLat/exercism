#!/usr/bin/env bash

setup() {
	cat > iliad.txt << END_ILIAD
Achilles sing, O Goddess! Peleus' son;
His wrath pernicious, who ten thousand woes
Caused to Achaia's host, sent many a soul
Illustrious into Ades premature,
And Heroes gave (so stood the will of Jove)
To dogs and to all ravening fowls a prey,
When fierce dispute had separated once
The noble Chief Achilles from the son
Of Atreus, Agamemnon, King of men.
END_ILIAD
	cat > midsummer-night.txt << END_MIDSUMMER
I do entreat your grace to pardon me.
I know not by what power I am made bold,
Nor how it may concern my modesty,
In such a presence here to plead my thoughts;
But I beseech your grace that I may know
The worst that may befall me in this case,
If I refuse to wed Demetrius.
END_MIDSUMMER
    cat > paradise-lost.txt << END_PARADISE
Of Mans First Disobedience, and the Fruit
Of that Forbidden Tree, whose mortal tast
Brought Death into the World, and all our woe,
With loss of Eden, till one greater Man
Restore us, and regain the blissful Seat,
Sing Heav'nly Muse, that on the secret top
Of Oreb, or of Sinai, didst inspire
That Shepherd, who first taught the chosen Seed
END_PARADISE
}

teardown() {
  rm iliad.txt midsummer-night.txt paradise-lost.txt
}


optstring="nlivx"
count=0

grep() {
# flags pattern files

  # flags
  # - `-n` Print the line numbers of each matching line.
  # - `-l` Print only the names of files that contain at least one matching line.
  # - `-i` Match line using a case-insensitive comparison.
  # - `-v` Invert the program -- collect all lines that fail to match the pattern.
  # - `-x` Only match entire lines, instead of lines that contain a match.
  # The `grep` command should support multiple flags at once.
  # For example, running `grep -l -v "hello" file1.txt file2.txt`should
  # print the names of files that do not contain the string "hello".
  
  local linenum=0
  local nameonly=0
  # local case_ins=0
  local invert=0
  local entire=0

  while (( "$#" >  0 )); do
    [[ "${1}" =~ -. ]] || break
    case "${1}" in
	  "-n") linenum="1" #Print line number
	    ;;
	  "-l") nameonly="1" #Print only the names of files that contain at least one matching line
	    ;;
	  "-i") shopt -s nocasematch #Return case insensitive matches
	    ;;
	  "-v") invert="1" #Collect all lines that fail to match the pattern
	    ;;
	  "-x") entire="1" #Only match entire lines
	    ;;
    esac
    shift
  done
 # for file in $3; do
  while read line; do
    
  done < $3
#done
}

setup
grep "$@"
teardown
