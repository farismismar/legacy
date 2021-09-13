1.1 CLS
1.2 COLOR 14, 1, 1
1.3 CLS
1.4 COLOR 14, 1, 1
1 DATA DOG,τυ¬,CAT,σν­,MOUSE,ς§η,EAT,ύ§τυ,MORNING,λ¬«γ,AFTERNOON,φι«¥
2 DATA LOOK,ύψξη,DATA,¬ύ«ψ«ΰ,FEED,ύνοφ,ART,ςψ,HELP,ύι«οε,DO,ύςου,USE,ύιΰοφυ
3 DATA KILL,ύσΰυ,OPEN,ύςΰγ,CLOSE,ύπυσ,LIST,υ«ªγ­,OUT,δ«ηβ,DIRTY,ϋιδ,FLAT,φινγ
4 DATA INSIDE,ε«δυ,PLAY,ύυο¬,STUDY,ύεηι,FILL,ύο¬ª,DESIGN,ύλφφ
5 DATA PAST,φ«μύ,PRESENT,φμ«ηο,PRESENT,ωεύ­,MAN,ηβυ,KEY,φςΰ«γ,YES,ψοφ,NO,υ«
6 DATA FATHER,§¬,MOTHER,§φ
100 num = 34: CLS : PRINT : PRINT "                      Dictionary             «υσρρρρρρρρρ«φϋι"
    PRINT "                      •••••••••••••••••             ••••••••••"
    PRINT : PRINT : PRINT "             Options:         "; "              ‡«υδύ«η«ΰ"
110 PRINT : PRINT SPC(8); "1. English TO Arabic                 φψ «υ©ψβυύθύ­ ©υό «υοη¬ύ­"
120 PRINT : PRINT SPC(8); "2. Arabic TO English                 φψ «υοη¬ύ­ ©υό «υ©ψβυύθύ­"
121 PRINT : PRINT SPC(8); "3. Exiting to System                 «υδηϋβ ©υό «υψξ«φ"
122 PRINT : PRINT SPC(8); "4. About This Program                γϋυ ωζ« «υ¬ηψ«φβ"
125 PRINT SPC(8); "•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••"
130 PRINT : PRINT : PRINT SPC(18); "Choose a number       ", "«δΰη ησφ«"
140 z$ = INKEY$: IF z$ = "" THEN 140
150 IF z$ <> "1" AND z$ <> "2" AND z$ <> "3" AND z$ <> "4" THEN PRINT : PRINT "     Press 1 or 2 or 3 or 4 only          ΰδα κ 1 ν 2 ν 3 ν 4 εηα": GOTO 180
160 z = VAL(z$)
170 ON z GOSUB 220, 285, 1000, 3000
180 PRINT : PRINT : PRINT "Press any key to continue                       «μπν §ύ φςΰ«γ υυ«ιΰφη«η"
190 c$ = INKEY$
200 IF c$ <> "" THEN 100 ELSE 190
210 REM
220 FOR a = 1 TO 500: NEXT: CLS : PRINT : PRINT : PRINT "Press Alt-Shift which is on the Left": PRINT
222 PRINT : PRINT : PRINT "Press any key to continue"
223 c$ = INKEY$
224 IF c$ = "" THEN 223 ELSE 225
225 PRINT : INPUT "Type in the ENGLISH Word ", a$: RESTORE: PRINT
227 a$ = LTRIM$(RTRIM$(UCASE$(a$)))
230 FOR a = 1 TO num
240 READ B$, c$: IF a$ = B$ THEN 270
250 NEXT
260 PRINT : PRINT TAB(7); "Not Found In DATA List           δο© κν¤ν§ εο ηκ•••••••΅ ικγαοΆ": RETURN
270 PRINT "Meaning is: "; c$: RETURN
285 FOR a = 1 TO 500: NEXT: CLS
290  PRINT : PRINT : PRINT "Type Alt-Shift which is on the right": PRINT
290.5 PRINT : PRINT : PRINT "Press any key to continue"
291 c$ = INKEY$
292 IF c$ = "" THEN 291 ELSE 295
295 PRINT : INPUT "Type in the ARABIC Word ", a$: RESTORE
300 FOR a = 1 TO num
310 READ c$, B$: IF a$ = B$ THEN 340
320 NEXT
330 GOTO 260
340 PRINT "Meaning is: "; c$: RETURN
1000 PRINT : PRINT SPC(24); : INPUT "   Exit to System?  (Y/N) ", a$
1001 IF a$ = "Y" OR a$ = "y" THEN SYSTEM ELSE RETURN
3000 FOR a = 1 TO 500: NEXT: CLS
3001 PRINT : PRINT
3002 PRINT "                About Program, Dictionary   γλ  ©λκ¤ ιηκ••••ν« "
3003 PRINT "                •••••••••••••••••••••••••••••••••••••••••••••••••"
3004 PRINT : PRINT
3005 PRINT "                  THIS PROGRAM has been done by Faris Mismar "
3006 PRINT "             and it contains about "; num; " words Arabic and English..."

3008 PRINT "          ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••"
3009 PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
3009.5 PRINT "       Translate? (Y/N)";
3010 a$ = INKEY$
3010.2 IF a$ = "" THEN 3010 ELSE 3011
3011 IF a$ <> "Y" AND a$ <> "y" THEN GOTO 180
     FOR a = 1 TO 500: NEXT: CLS : PRINT : PRINT
3012 PRINT "                About Program, Dictionary   γλ  ©λκ¤ ιηκ••••ν« "
3013 PRINT "                •••••••••••••••••••••••••••••••••••••••••••••••••"
3014 PRINT : PRINT
3015 PRINT "                      ωμ¨ ι ©λκ¤ κλ γκ••••••ι ε©« κ«••κ©        "
3016 PRINT "                    "; "ν ο¥Άνο κ οη©  34 θικ΅ γ© ο΅ ν λ¤ιοªο΅"
3018 PRINT "      •••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••"
3020 RETURN

