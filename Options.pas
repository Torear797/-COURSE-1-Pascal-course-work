Unit Options;
interface
uses wingraph,wincrt,winmouse,sysutils;
Procedure OptionsPaint(const N,M:integer);
Procedure OptionsAct(var color,color2:byte;var N,M:integer;var Move,choce:byte;var x,y:integer);
Procedure NM_Write(const x2, y2,x3,y3: integer;const Evt: MouseEventType;var N,M:integer;var x,y:integer);
implementation
Procedure OptionsPaint(const N,M:integer);
var x3,y3:integer;
begin
 x3:=getMaxX; y3:=getMaxY;
  setActivePage(3);
 setfillstyle(1,7);
 bar(0,0,x3,y3);
  SetColor(15);  SetTextStyle(2,0,45); SetTextJustify(0, 1);
  setfillstyle(1,8);
  bar(x3 div 2-150,y3 div 2-480,x3 div 2+670,y3 div 2+440);
  rectangle(x3 div 2 - 130, y3 div 2-460 , x3 div 2+650, y3 div 2+420);
   setfillstyle(1,7);
  OutTextXY(x3 div 2+150,y3 div 2-400,'Select colour');
  SetFillStyle (1,1);
  rectangle(x3 div 2-100,y3 div 2-350,x3 div 2,y3 div 2-250);
  FloodFill(x3 div 2-50,y3 div 2-260,White);
  SetFillStyle (1,2);
  rectangle(x3 div 2+100,y3 div 2-350,x3 div 2+200,y3 div 2-250);
  FloodFill(x3 div 2+150,y3 div 2-260,White);
  SetFillStyle (1,3);
  rectangle(x3 div 2+300,y3 div 2-350,x3 div 2+400,y3 div 2-250);
  FloodFill(x3 div 2+350,y3 div 2-260,White);
  SetFillStyle (1,4);
  rectangle(x3 div 2+500,y3 div 2-350,x3 div 2+600,y3 div 2-250);
  FloodFill(x3 div 2+550,y3 div 2-260,White);

  SetFillStyle (1,14);
  rectangle(x3 div 2-100,y3 div 2-150,x3 div 2,y3 div 2-50);
  FloodFill(x3 div 2-50,y3 div 2-100,White);
  SetFillStyle (1,6);
  rectangle(x3 div 2+100,y3 div 2-150,x3 div 2+200,y3 div 2-50);
  FloodFill(x3 div 2+150,y3 div 2-100,White);
  SetFillStyle (1,7);
  rectangle(x3 div 2+300,y3 div 2-150,x3 div 2+400,y3 div 2-50);
  FloodFill(x3 div 2+350,y3 div 2-100,White);
  SetFillStyle (1,15);
  rectangle(x3 div 2+500,y3 div 2-150,x3 div 2+600,y3 div 2-50);
  FloodFill(x3 div 2+550,y3 div 2-100,White);

  SetFillStyle (1,9);
  rectangle(x3 div 2-100,y3 div 2+50,x3 div 2,y3 div 2+150);
  FloodFill(x3 div 2-50,y3 div 2+100,White);
  SetFillStyle (1,10);
  rectangle(x3 div 2+100,y3 div 2+50,x3 div 2+200,y3 div 2+150);
  FloodFill(x3 div 2+150,y3 div 2+100,White);
  SetFillStyle (1,11);
  rectangle(x3 div 2+300,y3 div 2+50,x3 div 2+400,y3 div 2+150);
  FloodFill(x3 div 2+350,y3 div 2+100,White);
  SetFillStyle (1,12);
  rectangle(x3 div 2+500,y3 div 2+50,x3 div 2+600,y3 div 2+150);
  FloodFill(x3 div 2+550,y3 div 2+100,White);

  SetFillStyle (1,13);
  rectangle(x3 div 2-100,y3 div 2+250,x3 div 2,y3 div 2+350);
  FloodFill(x3 div 2-50,y3 div 2+300,White);
  SetFillStyle (1,4);
  rectangle(x3 div 2+100,y3 div 2+250,x3 div 2+200,y3 div 2+350);
  FloodFill(x3 div 2+150,y3 div 2+300,White);
  SetFillStyle (1,5);
  rectangle(x3 div 2+300,y3 div 2+250,x3 div 2+400,y3 div 2+350);
  FloodFill(x3 div 2+350,y3 div 2+300,White);
  SetFillStyle (1,0);
  rectangle(x3 div 2+500,y3 div 2+250,x3 div 2+600,y3 div 2+350);
  FloodFill(x3 div 2+550,y3 div 2+300,White);


  setfillstyle(1,8);

  bar(x3 div 2-600,y3 div 2-480,x3 div 2-170,y3 div 2-80);
  rectangle(x3 div 2 - 580, y3 div 2-460 , x3 div 2-190, y3 div 2-100);

  rectangle(x3 div 2 - 550, y3 div 2-400 , x3 div 2-430, y3 div 2-355);
  rectangle(x3 div 2 - 350 ,y3 div 2-400,  x3 div 2-230, y3 div 2-355);

  SetColor(White);
  OutTextXY(x3 div 2 - 500, y3 div 2 - 405 ,'N');
  OutTextXY(x3 div 2 - 305, y3 div 2 - 405 ,'M');
  Line(x3 div 2 - 580 ,y3 div 2-335,  x3 div 2-190, y3 div 2-335);
  Line(x3 div 2 - 580 ,y3 div 2-200,  x3 div 2-190, y3 div 2-200);
  OutTextXY(x3 div 2 - 500, y3 div 2 - 275 ,'X');
  OutTextXY(x3 div 2 - 300, y3 div 2 - 275 ,'Y');

  rectangle(x3 div 2 - 550, y3 div 2-270 , x3 div 2-430, y3 div 2-225);
  rectangle(x3 div 2 - 350 ,y3 div 2-270,  x3 div 2-230, y3 div 2-225);

   SetTextStyle(2,0,30);
  bar(x3 div 2-600,y3 div 2-50,x3 div 2-170,y3 div 2+440);
  rectangle(x3 div 2 - 580, y3 div 2-30 , x3 div 2-190, y3 div 2+420);


   rectangle(x3 div 2+420,y3 div 2-445,x3 div 2+570, y3 div 2-400);

  rectangle(x3 div 2 -350,y3 div 2-15,x3 div 2-220, y3 div 2+30);
  rectangle(x3 div 2 -350,y3 div 2-15,x3 div 2-220, y3 div 2+30);
  setcolor(10);
  rectangle(x3 div 2 -560,y3 div 2-15,x3 div 2-430, y3 div 2+30);
  rectangle(x3 div 2 -560,y3 div 2-15,x3 div 2-430, y3 div 2+30);
  rectangle(x3 div 2-50,y3 div 2-445,x3 div 2+80, y3 div 2-400);
  OutTextXY(x3 div 2-500,y3 div 2+80,'Choice of a trajectory');
  OutTextXY(x3 div 2-500,y3 div 2+20,'1');
  SetColor(15);
  OutTextXY(x3 div 2-500,y3 div 2+20,'1');
  OutTextXY(x3 div 2-290,y3 div 2+20,'2');

  OutTextXY(x3 div 2-20,y3 div 2-410,'Sphere');
  OutTextXY(x3 div 2+430,y3 div 2-410,'Background');

  OutTextXY(x3 div 2-570,y3 div 2+ 150,'X ,Y - coordinates of the center');
  OutTextXY(x3 div 2-570,y3 div 2+ 190,'N - diameter of a circle');
  OutTextXY(x3 div 2-570,y3 div 2+230,'200 <= N <= 600 ');
  OutTextXY(x3 div 2-570,y3 div 2+270,'M - diameter of a sphere');
  OutTextXY(x3 div 2-570,y3 div 2+310,'50 <= M <= 100 ');
   OutTextXY(x3 div 2-570,y3 div 2+350,'Enter - end of input');
   OutTextXY(x3 div 2-570,y3 div 2+390,'RMC - Return to the Menu');
    SetTextStyle(0,0,45);
    OutTextXY(x3 div 2 - 550, y3 div 2 - 223 ,IntTostr(GetmaxX div 2));
     OutTextXY(x3 div 2 - 550, y3 div 2 - 353 ,IntTostr(N*2));
     OutTextXY(x3 div 2 - 350, y3 div 2 - 353 ,IntTostr(M*2));
     OutTextXY(x3 div 2 - 350, y3 div 2 - 223 ,IntTostr(GetmaxY div 2));
end;
Procedure OptionsAct(var color,color2:byte;var N,M:integer;var Move,choce:byte;var x,y:integer);
var x3,y3,x2,y2:integer; Evt : MouseEventType; k:char;
begin
 x3:=getMaxX; y3:=getMaxY;
 setvisualPage(3);setActivePage(3);
  while k <>#8 do begin
     GetMouseEvent(Evt);
  x2:=GetMouseX; y2:=GetMouseY;
  NM_Write(x2,y2,x3,y3,Evt,N,M,x,y);
   SetLineStyle(SolidLn, $C3, 1);
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+300)and
   (x2<x3 div 2+400)and(y2>y3 div 2+250)and(y2<y3 div 2+350) then if choce=1 then color:=5 else color2:=5;
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+500)and
   (x2<x3 div 2+600)and(y2>y3 div 2+250)and(y2<y3 div 2+350) then if choce=1 then color:=0 else color2:=0;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+100)and
   (x2<x3 div 2+200)and(y2>y3 div 2+250)and(y2<y3 div 2+350) then if choce=1 then color:=4 else color2:=4;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-100)and
   (x2<x3 div 2)and(y2>y3 div 2+250)and(y2<y3 div 2+350) then if choce=1 then color:=13 else color2:=13;

   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+500)and
   (x2<x3 div 2+600)and(y2>y3 div 2+50)and(y2<y3 div 2+150) then if choce=1 then color:=12 else color2:=12;
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+300)and
   (x2<x3 div 2+400)and(y2>y3 div 2+50)and(y2<y3 div 2+150) then if choce=1 then color:=11 else color2:=11;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+100)and
   (x2<x3 div 2+200)and(y2>y3 div 2+50)and(y2<y3 div 2+150) then if choce=1 then color:=10 else color2:=10;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-100)and
   (x2<x3 div 2)and(y2>y3 div 2+50)and(y2<y3 div 2+150) then if choce=1 then color:=9 else color2:=9;

   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+500)and
   (x2<x3 div 2+600)and(y2>y3 div 2-350)and(y2<y3 div 2-250) then if choce=1 then color:=4 else color2:=4;
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+300)and
   (x2<x3 div 2+400)and(y2>y3 div 2-350)and(y2<y3 div 2-250) then if choce=1 then color:=3 else color2:=3;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+100)and
   (x2<x3 div 2+200)and(y2>y3 div 2-350)and(y2<y3 div 2-250) then if choce=1 then color:=2 else color2:=2;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-100)and
   (x2<x3 div 2)and(y2>y3 div 2-350)and(y2<y3 div 2-250) then if choce=1 then color:=1 else color2:=1;

    if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+500)and
   (x2<x3 div 2+600)and(y2>y3 div 2-150)and(y2<y3 div 2-50) then if choce=1 then color:=15 else color2:=15;
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+300)and
   (x2<x3 div 2+400)and(y2>y3 div 2-150)and(y2<y3 div 2-50) then if choce=1 then color:=7 else color2:=7;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+100)and
   (x2<x3 div 2+200)and(y2>y3 div 2-150)and(y2<y3 div 2-50) then if choce=1 then color:=6 else color2:=6;
   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-100)and
   (x2<x3 div 2)and(y2>y3 div 2-150)and(y2<y3 div 2-50) then if choce=1 then color:=14 else color2:=14;

    if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-560)and
   (x2<x3 div 2-430)and(y2>y3 div 2-15)and(y2<y3 div 2+30) then begin
   Move:=1;setcolor(10);rectangle(x3 div 2 -560,y3 div 2-15,x3 div 2-430, y3 div 2+30);
   bar(x3 div 2-351,y3 div 2-16,x3 div 2-219,y3 div 2+29);
    SetTextStyle(2,0,30);
   SetColor(15);rectangle(x3 div 2 -350,y3 div 2-15,x3 div 2-220, y3 div 2+30);
   OutTextXY(x3 div 2-290,y3 div 2+20,'2');
   end;

   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-350)and
   (x2<x3 div 2-220)and(y2>y3 div 2-15)and(y2<y3 div 2+30) then begin
   Move:=2;setcolor(10);rectangle(x3 div 2 -350,y3 div 2-15,x3 div 2-220, y3 div 2+30);
   bar(x3 div 2-561,y3 div 2-16,x3 div 2-429,y3 div 2+29);
    SetTextStyle(2,0,30);
   SetColor(15);rectangle(x3 div 2 -560,y3 div 2-15,x3 div 2-430, y3 div 2+30);
   OutTextXY(x3 div 2-500,y3 div 2+20,'1');
   end;

   if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2+420)and
   (x2<x3 div 2+570)and(y2>y3 div 2-445)and(y2<y3 div 2-400) then begin
   setcolor(10); rectangle(x3 div 2+420,y3 div 2-445,x3 div 2+570, y3 div 2-400);
   setcolor(15);  rectangle(x3 div 2-50,y3 div 2-445,x3 div 2+80, y3 div 2-400);
   choce:=0;
   end;
  if (Evt.Buttons = MouseLeftButton)and(Evt.Action = MouseActionDown)and(x2>x3 div 2-50)and
   (x2<x3 div 2+80)and(y2>y3 div 2-445)and(y2<y3 div 2-400) then begin
   setcolor(10);  rectangle(x3 div 2-50,y3 div 2-445,x3 div 2+80, y3 div 2-400);
   setcolor(15);  rectangle(x3 div 2+420,y3 div 2-445,x3 div 2+570, y3 div 2-400);
   choce:=1;
   end;



  if (Evt.Buttons = MouseRightButton) and (Evt.Action = MouseActionDown) then break;
  end;
end;
Procedure NM_Write(const x2, y2,x3,y3: integer;const Evt: MouseEventType; var N,M:integer;var x,y:integer);
var  s,s2,s3,s4:string; k:char;
begin
     s3:=IntTostr(x);s4:=IntTostr(y);
     SetTextStyle(0,0,45);  setfillstyle(1,8);
    if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and (x2 > x3 div 2 - 550) and
    (x2 < x3 div 2 -430) and (y2 > y3 div 2 - 400) and (y2 < y3 div 2 - 355) then  begin
     bar(x3 div 2 - 571, y3 div 2-180 , x3 div 2-200, y3 div 2-130 );
     bar(x3 div 2 - 550, y3 div 2-400 , x3 div 2-430, y3 div 2-355);
     setcolor(red);
      rectangle(x3 div 2 - 550, y3 div 2-400 , x3 div 2-430, y3 div 2-355);
      setcolor(white);
    repeat
    while keypressed do ReadKey;
    k:=readkey;
    if k<>#8 then begin
    if (length(s)<3)and(k<=#57)and(k<>#13)and(k>=#48)  then
    s:=s+k; end else
     begin
    bar(x3 div 2 - 549, y3 div 2 -399, x3 div 2-431, y3 div 2 -356);
    if length(s)>0 then begin
    s:=Copy(s, 1, length(s) - 1); end;
    end;
    setcolor(15);
    OutTextXY(x3 div 2 - 550, y3 div 2 - 353 ,s);
    if length(s)=3 then break;
    Until (k=#13)and(length(s)<>0);
    setcolor(white);
      rectangle(x3 div 2 - 550, y3 div 2-400 , x3 div 2-430, y3 div 2-355);
    if (strtoint(s)>=200)and(strtoint(s)<=600) then

    if (StrToint(s3)+strtoint(s) div 2 <= GetMaxX)and
    (StrToint(s3)-strtoint(s) div 2-300>= 0)and
     ((StrToint(s4))+strtoint(s)div 2+50 <= GetMaxY)and((StrToint(s4))-strtoint(s)div 2-50 >=0) then
    N:=strtoint(s)div 2
    else begin
    bar(x3 div 2 - 549, y3 div 2 -399, x3 div 2-431, y3 div 2 -356);
    OutTextXY(x3 div 2 - 550, y3 div 2 - 353 ,IntTostr(N*2));
    setcolor(red);
    OutTextXY(x3 div 2 - 530, y3 div 2 -130 ,'Incorrect N');
    setcolor(15);
    end else  begin
    bar(x3 div 2 - 549, y3 div 2 -399, x3 div 2-431, y3 div 2 -356);
    OutTextXY(x3 div 2 - 550, y3 div 2 - 353 ,IntTostr(N*2));
    setcolor(red);
    OutTextXY(x3 div 2 - 530, y3 div 2 -130 ,'200<=N<=600');
    setcolor(15);
    end;

    end;

     if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and (x2 > x3 div 2-350) and
    (x2 < x3 div 2 -230) and (y2 > y3 div 2 - 400) and (y2 < y3 div 2 -355) then  begin
    setcolor(white);
    bar(x3 div 2 - 571, y3 div 2-180 , x3 div 2-200, y3 div 2-130 );
     bar(x3 div 2 - 350, y3 div 2 -400, x3 div 2-230, y3 div 2 -355);
      setcolor(red);
    rectangle(x3 div 2 - 350 ,y3 div 2-400,  x3 div 2-230, y3 div 2-355);
    setcolor(white);
    repeat
   while keypressed do ReadKey;
    k:=readkey;
    if k<>#8 then begin
    if (length(s2)<3)and(k<=#57)and(k<>#13)and(k>=#48) then
    s2:=s2+k; end else
     begin
    bar(x3 div 2 - 349, y3 div 2 -399, x3 div 2-231, y3 div 2 -356);
    if length(s2)>0 then begin
    s2:=Copy(s2, 1, length(s2) - 1);end;
    end;
    OutTextXY(x3 div 2 - 350, y3 div 2 - 353 ,s2);
    if length(s2)=3 then break;
    Until (k=#13)and(length(s2)<>0);
    setcolor(white);
    rectangle(x3 div 2 - 350 ,y3 div 2-400,  x3 div 2-230, y3 div 2-355);
     if (strtoint(s2)>=50)and(strtoint(s2)<=100) then M:=strtoint(s2) div 2 else  begin

    bar(x3 div 2 - 349, y3 div 2 -399, x3 div 2-231, y3 div 2 -356);
     OutTextXY(x3 div 2 - 350, y3 div 2 - 353 ,IntTostr(M*2));
    setcolor(red);
    OutTextXY(x3 div 2 - 510, y3 div 2 -130 ,'50<=M<=100');
    setcolor(15);
    end;
    end;
      if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and (x2 > x3 div 2 - 550) and
    (x2 < x3 div 2 -430) and (y2 > y3 div 2 - 270) and (y2 < y3 div 2 - 225) then  begin
     bar(x3 div 2 - 571, y3 div 2-180 , x3 div 2-200, y3 div 2-130 );s3:='';
     bar(x3 div 2 - 550, y3 div 2-270 , x3 div 2-430, y3 div 2-225);
     setcolor(red);
      rectangle(x3 div 2 - 550, y3 div 2-270 , x3 div 2-430, y3 div 2-225);
      setcolor(white);
    repeat
    while keypressed do ReadKey;
    k:=readkey;
    if k<>#8 then begin
    if (length(s3)<4)and(k<=#57)and(k<>#13)and(k>=#48)  then
    s3:=s3+k; end else
     begin
    bar(x3 div 2 - 549, y3 div 2 -269, x3 div 2-431, y3 div 2 -226);
    if length(s3)>0 then begin
    s3:=Copy(s3, 1, length(s3) - 1); end;
    end;
    OutTextXY(x3 div 2 - 550, y3 div 2 - 223 ,s3);
    if length(s3)=4 then break;
    Until (k=#13)and(length(s3)<>0);
    setcolor(white);
    rectangle(x3 div 2 - 550, y3 div 2-270, x3 div 2-430, y3 div 2-225);
      if (StrToint(s3)+N <= GetMaxX)and(StrToint(s3)-N-250-50 >= 0) then   X:=strtoint(s3) else begin
      bar(x3 div 2 - 549, y3 div 2-269 , x3 div 2-431, y3 div 2-226);
     setcolor(red);
     OutTextXY(x3 div 2 - 530, y3 div 2 -130 ,'Incorrect X');
      setcolor(white); OutTextXY(x3 div 2 - 550, y3 div 2 - 223 ,IntTostr(X)); end;
    end;

      if (Evt.Buttons = MouseLeftButton) and (Evt.Action = MouseActionDown) and (x2 > x3 div 2 - 350) and
    (x2 < x3 div 2 -230) and (y2 > y3 div 2 - 270) and (y2 < y3 div 2 - 225) then  begin
     bar(x3 div 2 - 571, y3 div 2-180 , x3 div 2-200, y3 div 2-130 );s4:='';
     bar(x3 div 2 - 350, y3 div 2-270 , x3 div 2-230, y3 div 2-225);
     setcolor(red);
      rectangle(x3 div 2 - 350, y3 div 2-270 , x3 div 2-230, y3 div 2-225);
      setcolor(white);
    repeat
    while keypressed do ReadKey;
    k:=readkey;
    if k<>#8 then begin
    if (length(s4)<4)and(k<=#57)and(k<>#13)and(k>=#48)  then
    s4:=s4+k; end else
     begin
    bar(x3 div 2 - 349, y3 div 2 -269, x3 div 2-231, y3 div 2 -226);
    if length(s4)>0 then begin
    s4:=Copy(s4, 1, length(s4) - 1); end;
    end;
    OutTextXY(x3 div 2 - 350, y3 div 2 - 223 ,s4);
    if length(s4)=4 then break;
    Until (k=#13)and(length(s4)<>0);
    setcolor(white);
    rectangle(x3 div 2 - 350, y3 div 2-270, x3 div 2-230, y3 div 2-225);
    if ((StrToint(s4))+N+50 <= GetMaxY)and((StrToint(s4))-N-50 >=0) then  Y:=strtoint(s4) else begin
     bar(x3 div 2 - 349, y3 div 2-269 , x3 div 2-231, y3 div 2-226);
     setcolor(red);
     OutTextXY(x3 div 2 - 530, y3 div 2 -130 ,'Incorrect Y');
      setcolor(white);OutTextXY(x3 div 2 - 350, y3 div 2 - 223 ,IntTostr(Y)); end;
    end;
   setcolor(white);
end;
end.
