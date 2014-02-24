000001*             GUESS MY NUMBER IN...
000002*                    COBOL!
000003* 
000004*    To compile and run on your friendly Linux system:
000005*           1. Install GNU Cobol
000006*              (Debian: apt-get install open-cobol) 
000007*           2. cobc -x guess-my-number.cobol
000008*  
000009*    Notes:
000010*           * Randomization is not a core function
000011*             in old school COBOL!  Thus, the answer
000012*             is hard-coded. Awesome! Not the most
000013*             exciting game is it, eh?
000014*           * No input checking. At all. Why bother?
000015*             Non-numerics read as "zero". Enter a 
000016*             7-digit number? It ignores the last
000017*             five digits!

000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. GUESS-MY-NUMBER.

000300 DATA DIVISION.
000400 WORKING-STORAGE SECTION.
000500 01 GUESS PIC 99.
000600 01 ANSWER PIC 99.
000700 01 TOTAL-GUESSES PIC 99.

000800 PROCEDURE DIVISION.
000900 COMPUTE TOTAL-GUESSES = 0.
001000 COMPUTE ANSWER = 43.

001300 ENTER-GUESS.
001400 DISPLAY 'Enter a number from  1 to 99.'.
001500 ACCEPT GUESS.
001600 ADD 1 TO TOTAL-GUESSES.

001700 IF GUESS > ANSWER
001800   DISPLAY "Your guess is too high! Guess again."
002000   GO TO ENTER-GUESS
002100   END-IF.
  
002200 IF GUESS < ANSWER
002300   DISPLAY "Your guess is too low! Guess again."
002500   GO TO ENTER-GUESS
002600   END-IF.

002700 DISPLAY "You got it! Total guesses:".
002800 DISPLAY TOTAL-GUESSES.

002900 STOP RUN.
