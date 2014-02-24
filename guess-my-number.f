*           GUESS MY NUMBER IN... 
*              FORTRAN77!

*    To compile and run on your friendly Linux system:
*           1. Install GNU Fortran
*              (Debian: apt-get install gfortran) 
*           2. gfortran guess-my-number.f -o guess-my-number
*  
*    Notes:
*           * Not bothering with pseudo-randomization.
*             The answer is hard-coded!
*           * No input checking. At all. Why bother?
*             If you enter something out of range, 
*             you're a bad player. If you enter 
*             text, the program explodes!

      PROGRAM GUESSMYNUMBER
          INTEGER ANSWER
          INTEGER GUESS
          INTEGER NUMBEROFGUESSES
          ANSWER = 63
          NUMBEROFGUESSES=0
   10     PRINT *, 'Enter a number between 1 and 99!'
          READ *, GUESS
          NUMBEROFGUESSES = NUMBEROFGUESSES + 1
          IF (GUESS .lt. ANSWER) THEN
              PRINT *, 'Your guess is too low!'
              GOTO 10
          ENDIF
          IF (GUESS .gt. ANSWER) THEN
              PRINT *, 'Your guess is too high!'
              GOTO 10
          ENDIF
          PRINT *, 'You got it! Number of guesses:'
          PRINT *, NUMBEROFGUESSES 
      END
