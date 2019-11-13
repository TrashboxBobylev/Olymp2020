Type
        Rect = Record
         X1, Y1, X2, Y2: Integer
        end;
        RectArray = Array of Rect;

function IsCollision(r1, r2: Rect) : Boolean;
begin
        IsCollision := (r1.X1 < r2.X2) and (r2.X1 < r1.X2) and (r1.Y1 < r2.Y2) and (r2.Y1 < r1.Y2);
end;

var
        rArr: RectArray;
        colArray: Array of Boolean;
        X, Y, N, i, j, k, x1, y1, o, m, lul: Integer;
        stop: Boolean;
begin
        readln(X, Y);
        readln(N);
        lul := 1;
        SetLength(rArr, N);
        SetLength(colArray, N);
        for i := 0 to N do
        begin
                  readln(x1, y1, o, m);
                  rArr[i].X1 := x1 - 1;
                  rArr[i].X2 := x1 - 2 + o;
                  rArr[i].Y1 := y1 - 1;
                  rArr[i].Y2 := y1 - 2 + m;
                  if i - 1 >= 0 then
                      if IsCollision(rArr[i - 1], rArr[i]) = True then colArray[i - 1] := True;
        end;
        for i := 0 to N do
        begin
                  if colArray[i] = True then lul := lul + 1
                  else lul := 1;
        end;
        writeln(lul);
end.