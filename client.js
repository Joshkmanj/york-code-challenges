console.log('Client loaded');

  // Starting by initializing the variables that the page will store
    let uid;
    let fname;
    let lname;
    let birthday;
    let errorMessage = [];


  // --------- Test code, delete this later ------------
console.log(uid);
console.log(fname);
console.log(lname);
 console.log(birthday);

  function testSetup() {
    document.getElementById('user-id').value = 'UserName57'
    document.getElementById('first-name').value = 'Josh'
    document.getElementById('last-name').value = 'Kralewski'
    document.getElementById('birthdate').value = '1990-05-26'
    }
// --------- Test code, delete this later ------------


  function submissionHandler (){
    // This function handles the overarching processes required to submit data from the DOM

    // First, all data is collected from the inputs
    collectInputs();


    // Next, the input data is tested to ensure it passes requirements
    verifyInputs();




    // Lastly, all the inputs are reset
    // resetInputs(); // Temporarily disabled for testing purposes
  }



  function verifyInputs() {
    // Initialize a copy of the UID that can be manipulated without affecting original data
    let uidCopy = uid

    // The UserID must contain an uppercase, a lowercase, a number
    
    // This tests for password length matching 8 to 12 chars long. 
    if(uid.length < 8 || uid.length > 12){
      console.log('uid is bad')
       // errorMessage.push('Invalid UserID') // optional feature, can be deleted
       // console.log(errorMessage) // test, can be deleted
      return; // If the userId length fails, the test function is stopped
    } else{
      console.log('uid is good') // if test passes, function continues
    }

    // Next, uppercase and lowercase is tested
      for (let i = 0; i < uid.length; i++) {
        console.log('testing letter', uid[i], uid[i].toUpperCase());
        
        // if(uid[i] === uid[i].toUppercase()){

        // }
      }


  }



  function collectInputs (){
    console.log('(1/3) collecting inputs');

    // Initialize variables and store input data
    uid = document.getElementById('user-id').value
    fname = document.getElementById('first-name').value
    lname = document.getElementById('last-name').value
    birthday = document.getElementById('birthdate').value
    
    // --------- Test code ------------
    console.log(uid);
    console.log(fname);
    console.log(lname);
    console.log(birthday);
    // --------- Test code ------------
    
    
  }


  function resetInputs (){
    console.log('(3/3) resetting inputs');

    document.getElementById('user-id').value = ''
    document.getElementById('first-name').value = ''
    document.getElementById('last-name').value = ''
    document.getElementById('birthdate').value = ''

  }
    // put your JavaScript code to read HTML inputs
    // and validate inputs here using if statements
    // and document.getElementById().innerHTML to display results
    // write your JS functions here
    // write your JS Loop For here to print the Xs
    // use something like document.write(str.padStart(i,"x") + "<br>");
        
        // Starting with the HTML wrapper code in the Code Editor...

// You may or may not use a <form>. Note that there is no backend process or program to submit a form to. 
// If you use a form and submit, you must suppress the default action or the page will clear/load unpredictable results.

// Ask the user to input their first name, last name, a UserID, and a birthdate in type date format.  The UserID must contain an uppercase, a lowercase, a number, and be 8 to 12 chars long.  

// Create a JS function to verify formats of the UserID field.

// You will either need to use a For loop to iterate through your data fields character by character with JS functions like char.toUpperCase() and parsInt(char), or use Regular Expressions, to validate the UserID format.

// Use the following variables (with exact variable names) to hold the data:

// uid is UserID.

// fname is first name.

// lname is last name.

// birthday is birthday, using type 'date'.

// You have to write a function called ???dateDiff??? that accepts one date parameter and returns the number of days between the birthday provided and the current date.

// Create an ???Accept??? button to execute your functions and create the following output:

// If the UserID does not pass your verification, then print ???Invalid UserID??? to the Display window.

// If the fname, lname, or birthday fields are left empty then print ???Invalid fname??? etc???

// Print ???fname lname you have been breathing for ### days!??? where ### is the number returned by your dateDiff() function.  Remember to convert milliseconds to days and only return the integer (whole) number of days.

// If the number of days is less than (365*18) then print ???You are probably not old enough to take this class!???

// Use document.getElementById().innerHtml to display results and information messages on the Display window.

// Create a "For loop??? that loops 20 times and uses code similar to:

// let str = "";
// str = str.padStart(i,???x???); // i is the loop counter

// to print 20 lines of Xs from 1 to 20 Xs.  The first line should have a single X and the 20th line should have 20 Xs.

// Your Xs should be printed on the Display page as depicted in the example below.

// Make sure you understand and can explain a For Loop, padStart(i,"X"), innerHTML and what the DOM (Document Object Model) is.

// Your code output should show in the Display window.  This serves as the equivalent of the browser window and shows the render of the DOM document you are coding.

