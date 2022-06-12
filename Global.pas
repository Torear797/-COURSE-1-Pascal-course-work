Unit Global;
interface
uses wingraph,wincrt,winmouse,sysutils,Options;
Procedure AppendChoce(const c:integer);
Procedure WriteC2(const c:integer);
Procedure WriteC(const c:integer);
Procedure Change(const N,M,x,x1,y,y1:integer;var i:byte;var xi,yi,c:integer;var Move:byte);
Procedure Paint(const s:byte;const speedX,speedY,CountY,N,M,x,y,xi,yi:integer;const s1,c1:string;var x1,y1:integer);
Procedure keypressed1(var c1,s1:string;var s,s2:byte;var c:integer);
Procedure ReadlnNM(var N,M:integer;var Error:boolean);
implementation
Procedure WriteC(const c:integer);
var f2:text;
begin
Assign(f2,'output.txt');
Rewrite(f2);
Write(f2,'Number of collisions: ',c,' ');
Close(f2);
end;
Procedure AppendChoce(const c:integer);
var f2:text; K:char;   x2, y2: integer; Evt: MouseEventType;
begin
setactivepage(0);SetVisualPage(0);
 setfillstyle(1,8);
 bar(getMaxX div 2-300,GetmaxY div 2-200,getMaxX div 2+300,GetmaxY div 2+200);
  rectangle(getMaxX div 2-280,GetmaxY div 2-180,getMaxX div 2+280,GetmaxY div 2+180);
   OutTextXY(getMaxX div 2-120,GetmaxY div 2-100,'To add the file?');

    rectangle(getMaxX div 2-220,GetmaxY div 2,getMaxX div 2-70,GetmaxY div 2+50);
    OutTextXY(getMaxX div 2-175,GetmaxY div 2+45,'Yes');
    rectangle(getMaxX div 2+70,GetmaxY div 2,getMaxX div 2+220,GetmaxY div 2+50);
    OutTextXY(getMaxX div 2+120,GetmaxY div 2+45,'No');
 repeat
  GetMouseEvent(Evt);
 x2:=GetMouseX; y2:=GetMouseY;
     if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and(x2 > getMaxX div 2 - 220) and
    (x2 < getMaxX div 2 -70) and (y2 > GetmaxY div 2) and (y2 < GetmaxY div 2+50) then begin WriteC2(c); break; end;

    if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and(x2 > getMaxX div 2 +70) and
    (x2 < getMaxX div 2 +220) and (y2 > GetmaxY div 2) and (y2 < GetmaxY div 2+50) then begin WriteC(c); break; end;
   until k=#32;
end;
Procedure WriteC2(const c:integer);
var f2:text;
begin
Assign(f2,'output.txt');
Append(f2);
Writeln(f2);
Writeln(f2,'Number of collisions: ',c,' ');
Close(f2);
end;
Procedure Change(const N,M,x,x1,y,y1:integer;var i:byte;var xi,yi,c:integer;var Move:byte);
begin
if Move = 1 then begin
  if (sqrt(sqr(x-x1-xi*5)+sqr(y-y1-yi*5))>=N-M) then begin i:=(i+1) mod 8; inc(c);
   case i of
      0: begin xi:= 1; yi:= 0; end;
      1: begin xi:= 1; yi:= 1; end;
      2: begin xi:= 0; yi:= 1; end;
      3: begin xi:=-1; yi:= 1; end;
      4: begin xi:=-1; yi:= 0; end;
      5: begin xi:=-1; yi:=-1; end;
      6: begin xi:= 0; yi:=-1; end;
      7: begin xi:= 1; yi:=-1; end;
    end; end; end;
    If move = 2 then begin
    if Sqr(x-x1-xi*5)+Sqr(y-y1-yi*5)>=Sqr(N-M) then begin i:=(i+1) mod 4; inc(c);
    case i of
      0: begin xi:=1 ; yi:= 0;  end;
      1: begin xi:= -1; yi:= 1;  end;
      2: begin xi:= 1; yi:= 0;  end;
      3: begin xi:=-1; yi:= -1;  end;
    end;  end;
    end;
end;
Procedure Paint(const s:byte;const speedX,speedY,CountY,N,M,x,y,xi,yi:integer;const s1,c1:string;var x1,y1:integer);
begin
 setActivePage(1);clearDevice; delay(s);
 OutTextXY(speedX+70,speedY,s1);OutTextXY(speedX+70,CountY,c1);  OutTextXY(speedX+70,speedY,s1);
 OutTextXY(speedX-50,y+N+50,'RMC - return to the Menu');
 OutTextXY(speedX+20,y+N-50,'> - Spead UP');
 OutTextXY(speedX,y+N,'< - Spead DOWN');
  y1:=y1+yi*5; x1:=x1+xi*5;
  Circle(x,y,N);
  Circle(x1,y1,M); FloodFill(x1,y1,White);
  SetVisualPage(1);
  SetActivePage(0); clearDevice;  Delay(s);
  OutTextXY(speedX+70,speedY,s1);OutTextXY(speedX+70,CountY,c1);  OutTextXY(speedX+70,speedY,s1);
 OutTextXY(speedX-50,y+N+50,'RMC - return to the Menu');
 OutTextXY(speedX+20,y+N-50,'> - Spead UP');
 OutTextXY(speedX,y+N,'< - Spead DOWN');
  y1:=y1+yi*5; x1:=x1+xi*5;
   Circle(x,y,N);
    Circle(x1,y1,M);FloodFill(x1,y1,White);
    SetvisualPage(0);
end;
Procedure keypressed1(var c1,s1:string;var s,s2:byte;var c:integer);
var k:char;
begin
 if keypressed then begin
   k:=readkey;
    case k of
    #77:if s-5>-1 then begin s:=s-5; inc(s2); end;
    #75:if s+5<40 then begin s:=s+5; dec(s2); end;
    end; end;
    s1:='Speed '+IntTostr(s2);c1:='Count '+IntTostr(c);
    end;
Procedure ReadlnNM(var N,M:integer;var Error:boolean);
var f:text;a,T,i:integer;s,s2:string;
begin
Assign(f,'input.txt'); Reset(f);
while not eof(f) do begin
Readln(f,s);
s2:=s2+s;
end;
for i:=1 to length(s2) do
if (s2[i]>#57)or(s2[i]<#48) then Error:=true;
Close(f);
if Error = false then begin
Reset(f);
Read(f,a); N:=a; Read(f,a); M:=a;
if N<M then begin T:=N; N:=M; M:=T; end;
if (N<200)or(N>600)or(M<50)or(M>100) then Error:=true;
N:=N div 2; M:=M div 2;
Close(f);
end; end;
end.
