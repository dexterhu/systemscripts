#!/bin/bash

#!/bin/bash
# This shell script demonstrates how to write interactive shell scripts
# by allowing you to get user input.  Also demonstrated is the use of
# shell functions and shell arrays, timing using SECONDS, and more!
# Written by Wayne Pollock, Tampa FL 1996

# Define a shell function called Pause
#Pause()
#{
#    echo
#    echo -n Hit Enter to continue....
#    read
#}

Pause()
{
    key=""
    echo -n Hit any key to continue....
    stty -icanon
    key=`dd count=1 2>/dev/null`
    stty icanon
}

# Simple input
echo
echo -n "Enter something: "
read ANSWER
echo You typed: "$ANSWER"
Pause				# invoke the function Pause.

# Example of using input.  Note the use of the shell variable SECONDS to 
# time the user's input.
echo
echo -n "What is the capitol of Florida? "
START=$SECONDS
read
END=$SECONDS
echo -n "It took you $(($END - $START)) Seconds "
if [ "$REPLY" != "Tallahassee" ]
then
    echo 'to come up with the wrong answer!! ("Tallahassee")'
else
    echo "to figure that out!"
fi

echo
echo -n "OK, now type in a short sentence: "
read WORD1 REST
echo The first word is "${WORD1}"
echo the rest is: $REST
set -- ${WORD1} ${REST}		 # This sets $1, $2, ... to the input
echo
echo You typed $# words.

# old ksh way for creating an array:
#set +A WordList "$@"
WordList=("$@")	    # Sets an array from the positional parameters
		    # Note the use of "$@" instead of "$*".
echo "Counting again... yup, there are ${#WordList[*]} words."
if [ $# = 0 ]
then
    echo Why didn\'t you type something, you dummy?
else
    echo -n The last word was \"${WordList[$(($# - 1))]}\".
    echo "  Isn't that interesting?"
fi

Pause				# invoke the function Pause.

# Example of select menu:
clear
echo Let\'s reach out and finger someone...
echo
PS3='Please enter a choice from the above menu: '

#set +A WhoList $(who |awk '{print $1}')
WhoList=($(who |awk '{print $1}'))

select CHOICE in ${WhoList[*]} Quit
do
    case "$CHOICE" in
    "") echo Hit Enter to see menu again!
	continue
	;;
    Quit) break			# exit the loop
    	;;
    *)	finger $CHOICE |more
	;;
    esac
done

echo
echo "Th-th-th-that's all, Folks!"
