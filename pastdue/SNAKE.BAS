5 REM Faris Mismar
10 REM SNAKE 2023-09-09
20 H=24:W=37:REM SCREEN IN GR. 0
25 MAXLEN=100
27 DIM X(MAXLEN),Y(MAXLEN):REM Coordinates of the snake.
30 GOSUB 2000
40 POSITION X(0),Y(0):PRINT " ";
41 FOR I=0 TO L-1:X(I)=X(I+1):Y(I)=Y(I+1):NEXT I
42 GOSUB 1000
45 FOR I=0 TO L:POSITION X(I),Y(I):PRINT " ":NEXT I
47 POSITION 16,H-2:PRINT "Score: ";SCORE
50 GOSUB 4000
60 GOTO 40
1000 REM *** Detect keypress and move snake
1010 IF PEEK(764)=58 THEN X(L)=X(L)+1
1020 IF PEEK(764)=63 THEN X(L)=X(L)-1
1030 IF PEEK(764)=46 THEN Y(L)=Y(L)-1
1040 IF PEEK(764)=62 THEN Y(L)=Y(L)+1
1042 IF PEEK(764)<>255 THEN SCORE=SCORE+1
1045 REM Various collision scenarios
1050 IF X(L)=W OR X(L)=0 OR Y(L)=H-2 OR Y(L)=0 THEN GOSUB 5000:REM Out of screen borders
1055 IF L<=2 THEN 1100
1060 FOR J=2 TO L-1
1062 IF X(J)=X(0) AND Y(J)=Y(0) THEN COL=1
1064 IF X(J)=X(L) AND Y(J)=Y(L) THEN COL=1
1066 NEXT J
1070 IF COL=1 THEN GOSUB 5000:REM Self collision
1100 RETURN 
2000 REM *** Reset position
2010 L=1:REM Initial snake size
2015 X(L)=20:Y(L)=12
2017 SCORE=0
2020 PRINT "}":REM Clear screen
2030 POKE 752,1:REM Turn off cursor
2040 GOSUB 3000
2050 RETURN 
3000 REM *** Food creation
3010 XF=INT(RND(0)*(W-3))+1
3020 YF=INT(RND(0)*(H-3))+1
3030 POSITION XF,YF:PRINT ""
3040 RETURN 
4000 REM *** Detect food eating by snake
4010 IF X(L)=XF AND Y(L)=YF THEN GOSUB 6000
4020 RETURN 
5000 REM *** Game over!
5010 POSITION 16,12:PRINT "GAME OVER!"
5020 POKE 752,0:REM Turn on cursor
5030 POKE 764,255:REM Flush keypress buffer
5040 END 
6000 REM *** Snake eating food event
6010 SCORE=SCORE+5
6020 L=L+1
6030 IF L>MAXLEN THEN L=MAXLEN
6040 X(L)=X(L-1)
6050 Y(L)=Y(L-1)
6060 GOSUB 3000
6070 RETURN 
