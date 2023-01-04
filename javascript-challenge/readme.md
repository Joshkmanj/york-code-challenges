* Using the tutorial and other resources you may find helpful complete this JavaScript assessment.  If the requirements say use the innerHTML method then use that method.  Do everything exactly as stated.  Remember that you will have to understand and be able to explain each line of code that you submit.  We will ask you about everything you write so pay attention and understand the code.  After all, you wrote it so you should know what it does and how it works! Submitting code that was completed by someone else, or code found online published with the intention of solving this assessment (i.e. someone else has submitted a complete assignment to a third-party website and you copy that code) will be considered intellectual dishonesty and are grounds for disqualification for entry. Do what you can to learn each of the components necessary, create your own code, and be prepared to explain how all of it works.

# Carefully follow the requirements below:

## Starting with the HTML wrapper code in the Code Editor...

## You may or may not use a <form>. Note that there is no backend process or program to submit a form to. If you use a form and submit, you must suppress the default action or the page will clear/load unpredictable results.


[] Ask the user to input their first name, last name, a UserID, and a birthdate in type date format.  The UserID must contain an uppercase, a lowercase, a number, and be 8 to 12 chars long.  

## ----------------------------------^^^^  COMPLETED  ^^^^--------------------------------------
[] Create a JS function to verify formats of the UserID field.


editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor

editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly



[] You will either need to use a For loop to iterate through your data fields character by character with JS functions like char.toUpperCase() and parsInt(char), or use Regular Expressions, to validate the UserID format.

[] Use the following variables (with exact variable names) to hold the data: uid is UserID.
  * fname is first name.
  * lname is last name.
  * birthday is birthday, using type 'date'.

[] You have to write a function called “dateDiff” that accepts one date parameter and returns the number of days between the birthday provided and the current date.

[] Create an “Accept” button to execute your functions and create the following output:

[] If the UserID does not pass your verification, then print “Invalid UserID” to the Display window.

[] If the fname, lname, or birthday fields are left empty then print “Invalid fname” etc…

[] Print “fname lname you have been breathing for ### days!” where ### is the number returned by your dateDiff() function.  Remember to convert milliseconds to days and only return the integer (whole) number of days.

[] If the number of days is less than (365*18) then print “You are probably not old enough to take this class!”

[] Use document.getElementById().innerHtml to display results and information messages on the Display window.

[] Create a "For loop” that loops 20 times and uses code similar to:

let str = "";
str = str.padStart(i,”x”); // i is the loop counter

to print 20 lines of Xs from 1 to 20 Xs.  The first line should have a single X and the 20th line should have 20 Xs.

[] Your Xs should be printed on the Display page as depicted in the example below.

[] Make sure you understand and can explain a For Loop, padStart(i,"X"), innerHTML and what the DOM (Document Object Model) is.

[] Your code output should show in the Display window.  This serves as the equivalent of the browser window and shows the render of the DOM document you are coding.

# The console window is used to display error and log messages only.  It is for use in debugging your code. Output to the log window will not be considered as satisfying project requirements. 

