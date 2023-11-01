{ Written by: Faris Mismar
  1997
}
program MathQuiz(input, output);

var
   m, n, oper, result, answer: integer;
   correct: integer;
   score: real;
   operChar: char;
   valid: boolean;

begin
     writeln('*** Math Quiz ***');
     writeln;

     while true do
           begin
                valid := true;
                Randomize; {improves quality of randomness}
                oper := random(4);
                m := random(9) + 1;
                n := random(9) + 1;

                if (oper = 0) then {addition}
                   begin
                        operChar := '+';
                        result := m + n
                   end
                else if (oper = 1) then {subtraction}
                     begin
                          operChar := '-';
                          result := m - n;
                          if (result < 0) then valid := false
                     end
                else if (oper = 2) then {multiplication}
                     begin
                          operChar := '*';
                          result := m * n
                     end
                else {division}
                     begin
                          operChar := '/';
                          result := m div n;
                          if (result <> (m / n)) then valid := false {integer div}
                     end;

                if (valid) then
                   begin
                        write(m, operChar, n, ' = ');
                        readln(answer);
                        if (answer = result) then
                           begin
                                writeln('Good job!');
                                inc(correct)
                           end
                        else
                            begin
                                 writeln('Wrong answer. The answer was: ', result);
                                 score := 100 * (correct / (correct + 1));
                                 writeln('Your score is: ', score:2:3, '%.');
                                 break
                            end
                   end
     end;
     readln
end.