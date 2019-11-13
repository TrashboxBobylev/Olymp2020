program A;
var
 x1, x2, y1, y2, x_pech, y_pech, r, i, k, destinations: integer;
begin;
    readln(x1, y1, x2, y2);
    readln(x_pech, y_pech, r);
    destinations := 0;
    for i := x1 to x2 do
        begin
         for k := y1 to y2 do
          begin
                 if sqrt((x_pech - i)*(x_pech - i) + (y_pech - k)*(y_pech - k)) <= r then destinations := destinations + 1;
                  end;
    end;
    writeln(destinations);
end.