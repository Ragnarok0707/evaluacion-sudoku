program Evaluacion_Sudoku;
uses crt;
type matriz=array[1..9] of integer;
var
eleccion,seguridad,i,fila,co,p,opcion:integer;
ver:array[1..9] of boolean;
f,fila1,fila2,fila3,fila4,fila5,fila6,fila7,fila8,fila9:matriz;
c,co1,co2,co3,co4,co5,co6,co7,co8,co9:matriz;
desigual,termino,cuadrante1,cuadrante2,cuadrante3,cuadrante4,cuadrante5,cuadrante6,cuadrante7,cuadrante8,cuadrante9:boolean;
procedure seleccion_columna;
begin
textbackground(red);
 writeln('    NUMERO DE COLUMNA   ');
 textbackground(Green);
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(i,' ','  ')
 else
 write(i,' ',);
 writeln;
 textbackground(black);
end;
Procedure valorsudoku;  //Construyendo filas
 Begin
 begin 
   co:=0;
   fila:=0;
   eleccion:=0;
   seguridad:=0;
   p:=0;
   for i:= 1 to 9 do
   begin
   f[i]:=0;
   end;
   for i:= 1 to 9 do
   begin
   c[i]:=0;
   end;
   for i:= 1 to 9 do
   begin
   ver[i]:=false;
   end;
   termino:=false;
   desigual:=false;
   cuadrante1:=false;
   cuadrante2:= false;
   cuadrante3:=false;
   cuadrante4:=false;
   cuadrante5:=false;
   cuadrante6:=false;
   cuadrante7:=false;
   cuadrante8:=false;
   cuadrante9:=false;
 end;
  begin //Construyendo fila 1 del sudoku
  fila1[2]:=7; fila1[3]:=8; fila1[4]:=2; fila1[5]:=5; fila1[8]:=6;
  fila1[9]:=3;
  end;
  begin //Construyendo fila 2 del sudoku
  fila2[2]:=4; fila2[5]:=1; 
  end;
  begin //Construyendo fila 3 del sudoku
  fila3[2]:=2; fila3[4]:=4; fila3[5]:=8;
  end;
  begin //Construyendo fila 4 del sudoku
  fila4[3]:=7; fila4[4]:=5; fila4[6]:=3; fila4[7]:=2; fila4[9]:=4;
  end;
  begin //Construyendo fila 5 del sudoku
  fila5[1]:= 9; fila5[7]:=7;
  end;
  begin //Construyendo fila 6 del sudoku
  fila6[1]:= 4;
  end;
  begin //Construyendo fila 7 del sudoku
  fila7[1]:= 7; fila7[2]:= 8; fila7[4]:= 9; fila7[5]:= 2; fila7[8]:=3; fila7[9]:=5;
  end;
  begin //Construyendo fila 8 del sudoku
  fila8[1]:= 5; fila8[8]:= 7; fila8[9]:= 2;
  end;
  begin //Construyendo fila 9 del sudoku
  fila9[4]:=6; fila9[5]:=7; fila9[9]:=1;
 end;
 begin //Construyendo columnos
   begin //columna 1
   i:=1; 
   co1[1]:=fila1[i]; co1[2]:=fila2[i]; co1[3]:=fila3[i];
   co1[4]:=fila4[i]; co1[5]:=fila5[i]; co1[6]:=fila6[i];
   co1[7]:=fila7[i]; co1[8]:=fila8[i]; co1[9]:=fila9[i];
   end;
   begin //columna 2
   i:=2; 
   co2[1]:=fila1[i]; co2[2]:=fila2[i]; co2[3]:=fila3[i];
   co2[4]:=fila4[i]; co2[5]:=fila5[i]; co2[6]:=fila6[i];
   co2[7]:=fila7[i]; co2[8]:=fila8[i]; co2[9]:=fila9[i];
   end;
   begin //columna 3
   i:=3;
   co3[1]:=fila1[i]; co3[2]:=fila2[i]; co3[3]:=fila3[i];
   co3[4]:=fila4[i]; co3[5]:=fila5[i]; co3[6]:=fila6[i];
   co3[7]:=fila7[i]; co3[8]:=fila8[i]; co3[9]:=fila9[i];
   end;
   begin //columna 4
   i:=4;
   co4[1]:=fila1[i]; co4[2]:=fila2[i]; co4[3]:=fila3[i];
   co4[4]:=fila4[i]; co4[5]:=fila5[i]; co4[6]:=fila6[i];
   co4[7]:=fila7[i]; co4[8]:=fila8[i]; co4[9]:=fila9[i];
   end;
   begin //columna 5
   i:=5;
   co5[1]:=fila1[i]; co5[2]:=fila2[i]; co5[3]:=fila3[i];
   co5[4]:=fila4[i]; co5[5]:=fila5[i]; co5[6]:=fila6[i];
   co5[7]:=fila7[i]; co5[8]:=fila8[i]; co5[9]:=fila9[i];
   end;
   begin //columna 6
   i:=6;
   co6[1]:=fila1[i]; co6[2]:=fila2[i]; co6[3]:=fila3[i];
   co6[4]:=fila4[i]; co6[5]:=fila5[i]; co6[6]:=fila6[i];
   co6[7]:=fila7[i]; co6[8]:=fila8[i]; co6[9]:=fila9[i];
   end;
   begin //columna 7
   i:=7;
   co7[1]:=fila1[i]; co7[2]:=fila2[i]; co7[3]:=fila3[i];
   co7[4]:=fila4[i]; co7[5]:=fila5[i]; co7[6]:=fila6[i];
   co7[7]:=fila7[i]; co7[8]:=fila8[i]; co7[9]:=fila9[i];
   end;
   begin //columna 8
   i:=8;
   co8[1]:=fila1[i]; co8[2]:=fila2[i]; co8[3]:=fila3[i];
   co8[4]:=fila4[i]; co8[5]:=fila5[i]; co8[6]:=fila6[i];
   co8[7]:=fila7[i]; co8[8]:=fila8[i]; co8[9]:=fila9[i];
   end;
   begin //columna 9
   i:=9;
   co9[1]:=fila1[i]; co9[2]:=fila2[i]; co9[3]:=fila3[i];
   co9[4]:=fila4[i]; co9[5]:=fila5[i]; co9[6]:=fila6[i];
   co9[7]:=fila7[i]; co9[8]:=fila8[i]; co9[9]:=fila9[i];
   end;
 end;
end;
procedure sudoku;
begin
 begin
 seleccion_columna;
 end;
 textbackground(White); //Mostrar el sudoku
 textcolor(black);
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila1[i],' ','| ')
 else
 write(fila1[i],' ',); 
 textbackground(blue);
 write(' 1 ', ' N '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila2[i],' ','| ')
 else
 write(fila2[i],' ',);
 textbackground(blue);
 write(' 2 ', ' U '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila3[i],' ','| ')
 else
 write(fila3[i],' ',);
 textbackground(blue);
 write(' 3 ', ' M '); textbackground(white);
 writeln;
 end;
 begin
 write('__|__|__| ');
 textbackground(blue);
 write('    E ');
 textbackground(white);
 writeln;
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila4[i],' ','| ')
 else
 write(fila4[i],' ',);
 textbackground(blue);
 write(' 4 ', ' R '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila5[i],' ','| ')
 else
 write(fila5[i],' ',);
 textbackground(blue);
 write(' 5 ', ' O '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila6[i],' ','| ')
 else
 write(fila6[i],' ',);
 textbackground(blue);
 write(' 6 ', '   '); textbackground(white);
 writeln;
 end;
 begin
 write('__|__|__| '); 
 textbackground(blue);
 write('    F ');
 textbackground(white);
 writeln;
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila7[i],' ','| ')
 else
 write(fila7[i],' ',);
 textbackground(blue);
 write(' 7 ', ' I '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila8[i],' ','| ')
 else
 write(fila8[i],' ',);
 textbackground(blue);
 write(' 8 ', ' L '); textbackground(white);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila9[i],' ','| ')
 else
 write(fila9[i],' ',);
 textbackground(blue);
 write(' 9 ', ' A '); textbackground(white);
 writeln;
 textbackground(black);
 textcolor(white);
 end;
 end;
procedure localizarf(a,b:matriz);
begin
  for i:= 1 to 9 do //Funcion para facilitar busqueda
  a[i]:= b[i];
  for i:= 1 to 9 do
  f[i]:=a[i]
end;
procedure localizar(a,b:matriz); // Localizar columna
begin
  for i:= 1 to 9 do //Funcion para facilitar busqueda
  a[i]:= b[i];
  for i:= 1 to 9 do
  c[i]:=a[i]
end;
procedure obtenerubicacion;
begin
  begin //obteniendo fila
  repeat
  begin
  writeln('INDIQUE EN QUE FILA SE ENCUENTRA EL ESPACIO QUE QUIERE CAMBIAR');
  readln(fila);
  writeln('MUY BIEN FILA: ',fila);
  end;
  until (fila>=1) and (fila<=9);
  repeat
  begin //obteniendo columna
  writeln('INDIQUE EN QUE COLUMNA QUIERE QUE VAYA EL NUMERO');
  readln(co);
  writeln('EXCELENTE FILA: ', fila,' COLUMNA: ',co);
  end;
  until (co>=1) and (co<=9);
  end;
end;
procedure identificar_cuadrante;
begin
  //identificando los primeros 3 cuadrantes
  if (fila>=1) and (fila<=3) and (co>=1) and (co<=3) then
    cuadrante1:=true
    else if (fila>=1) and (fila<=3) and (co>=4) and (co<=6) then       //Identifica los 3 primeros cuadrantes
     cuadrante2:=true
      else if (fila>=1) and (fila<=3) and (co>=7) and (co<=9) then
      cuadrante3:=true
      // Identifando del 4 al 6 cuadrante
       else if (fila>=4) and (fila<=6) and (co>=1) and (co<=3) then
       cuadrante4:=true
        else if (fila>=4) and (fila<=6) and (co>=4) and (co<=6) then   //identifica los 3 cuadrantes del medio   
         cuadrante5:=true
          else if (fila>=4) and (fila<=6) and (co>=7) and (co<=9) then
           cuadrante6:=true
            // Identificar los ultimos 3 cuadrantes
            else if (fila>=7) and (fila<=9) and (co>=1) and (co<=3) then
             cuadrante7:=true
              else if (fila>=7) and (fila<=9) and (co>=4) and (co<=6) then  // Identifica los ultimos 3 cuadrantes
               cuadrante8:=true
                else if (fila>=7) and (fila<=9) and (co>=7) and (co<=9) then
                 cuadrante9:=true
                  end;
procedure obtenerdatos;
begin //obteniendo fila
  begin //localizar Fila 1
  if (fila=1) then
  localizarf(f,fila1);
  end;
  begin
  if (fila=2) then //Fila 2
  localizarf(f,fila2);
  end;
  begin
  if (fila=3) then //fila 3
  localizarf(f,fila3);
  end;
  begin
  if (fila=4) then //fila 4
  localizarf(f,fila4);
  end;
  begin
  if (fila=5) then //fila 5
  localizarf(f,fila5);
  end;
  begin
  if (fila=6) then //fila 6
  localizarf(f,fila6);
  end;
  begin
  if (fila=7) then //fila 7
  localizarf(f,fila7);
  end;
  begin
  if (fila=8) then //fila 8
  localizarf(f,fila8);
  end;
  begin
  if (fila=9) then //fila 9
  localizarf(f,fila9);
  end;
  begin //localizar columna 1
  if (co=1) then
  localizar(c,co1);
  end;
  begin
  if (co=2) then //columna 2
  localizar(c,co2);
  end;
  begin
  if (co=3) then //columna 3
  localizar(c,co3);
  end;
  begin
  if (co=4) then //columna 4
  localizar(c,co4);
  end;
  begin
  if (co=5) then //columna 5
  localizar(c,co5);
  end;
  begin
  if (co=6) then //columna 6
  localizar(c,co6);
  end;
  begin
  if (co=7) then //columna 7
  localizar(c,co7);
  end;
  begin
  if (co=8) then //columna 8
  localizar(c,co8);
  end;
  begin
  if (co=9) then //columna 9
  localizar(c,co9);
  end;
end;
procedure obtenernumero;
begin
  repeat
  begin
  clrscr;
  sudoku;
  writeln('INGRESA EL NUMERO QUE QUIERES PONER EN F: ',FILA,',C: ',co);
  readln(seguridad);
  end;
  until (seguridad>=1) and (seguridad<=9);
end;
    Procedure comprobacion1;
    begin
        for i:= 1 to 3 do
         if (seguridad<>fila1[i]) and (seguridad<>fila2[i]) and (seguridad<>fila3[i]) then //cuadrante 1
          p:= seguridad
         else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
      end;
    procedure comprobacion2;
    begin
       begin
        for i:= 4 to 6 do
         if (seguridad<>fila1[i]) and (seguridad<>fila2[i]) and (seguridad<>fila3[i]) then //cuadrante 2
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end; 
       end;
     end;
     procedure comprobacion3;
     begin
       begin
        for i:= 7 to 9 do
         if (seguridad<>fila1[i]) and (seguridad<>fila2[i]) and (seguridad<>fila3[i]) then //cuadrante 3
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
     end;
     procedure comprobacion4;
     begin
       begin 
       for i:= 1 to 3 do
        if (seguridad<>fila4[i]) and (seguridad<>fila5[i]) and (seguridad<>fila6[i]) then //cuadrante 4
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
     end;
     procedure comprobacion5;
     begin
       begin
       for i:= 4 to 6 do
        if (seguridad<>fila4[i]) and (seguridad<>fila5[i]) and (seguridad<>fila6[i]) then //cuadrante 5
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
      end;
      procedure comprobacion6;
      begin
       begin 
       for i:= 7 to 9 do
        if (seguridad<>fila4[i]) and (seguridad<>fila5[i]) and (seguridad<>fila6[i]) then //cuadrante 6
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
      end;
      procedure comprobacion7;
      begin
       begin 
       for i:= 1 to 3 do
        if (seguridad<>fila7[i]) and (seguridad<>fila8[i]) and (seguridad<>fila9[i]) then //cuadrante 7
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
      end;
      procedure comprobacion8;
      begin
       begin 
       for i:= 4 to 6 do
        if (seguridad<>fila7[i]) and (seguridad<>fila8[i]) and (seguridad<>fila9[i]) then //cuadrante 8
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
      end;
      procedure comprobacion9;
      begin
        begin
        for i:= 7 to 9 do
        if (seguridad<>fila7[i]) and (seguridad<>fila8[i]) and (seguridad<>fila9[i]) then //cuadrante 9
          p:= seguridad
          else
          begin
          writeln('EL NUMERO YA SE ENCUENTRA EN EL CUADRANTE');
          p:=0;
          break;
          end;
       end;
      end;    
procedure leyes_de_juego;
begin
  begin //Leyes de juego
        //desigualdad
  for i:= 1 to 9 do
  if (seguridad<>c[i]) and (seguridad<>f[i]) then
   desigual:=true
   else if(seguridad=c[i]) then
    begin
    writeln('EL NUMERO INGRESADO YA ESTA EN LA COLUMNA');
    writeln('PULSE ENTER PARA REPETIR OPERACIÓN');
    READLN;
    seguridad:=0;
    desigual:=false;
    break;
    end
    else
     begin
     writeln('EL NUMERO INGRESADO YA ESTA EN LA FILA');
     writeln('PULSE ENTER PARA REPETIR OPERACIÓN');
     READLN;
     seguridad:=0;
     desigual:=false;
     break;
     end;
     begin //desigual a su cuadrante
      if (cuadrante1=true) then
          begin
           comprobacion1;
          end
       else if (cuadrante2=true) then
          begin
           comprobacion2;
          end
        else if (cuadrante3=true) then
          begin
            comprobacion3;
          end
        else if (cuadrante4=true) then
          begin
            comprobacion4;
          end
        else if (cuadrante5=true) then
          begin
            comprobacion5;
          end
        else if (cuadrante6=true) then
          begin
            comprobacion6;
          end
        else if (cuadrante7=true) then
          begin
            comprobacion7;
          end
        else if (cuadrante8=true) then
          begin
            comprobacion8;
          end
        else if (cuadrante9=true) then
          begin
            comprobacion9;
          end;
     end;
  end;
end;
procedure guardar_valor;
begin
   for i:= 1 to 9 do
    if (fila=1) and (co=i) then //resultado de fila 1
      fila1[i]:= p
        else if (fila=2) and (co=i) then //resultado de fila 2
         fila2[i]:= p
          else if (fila=3) and (co=i) then //resultado de fila 3
           fila3[i]:= p
           else if (fila=4) and (co=i) then //resultado en fila 4
              fila4[i]:= p
             else if (fila=5) and (co=i) then //resultado en fila 5
                 fila5[i]:= p
               else if (fila=6) and (co=i) then //resultado en fila 6
                 fila6[i]:= p
               else if (fila=7) and (co=i) then  //resultado en fila 7
                 fila7[i]:= p
               else if (fila=8) and (co=i) then //resultado en fila 8
                 fila8[i]:= p
               else if (fila=9) and (co=i) then //resultado en fila 9
                 fila9[i]:= p;     
end;
procedure programa;
begin
  begin
  valorsudoku;
  sudoku;
  end;
  begin
  writeln;
  obtenerubicacion;
  identificar_cuadrante;
  end;
  begin
  obtenerdatos;
  end;
  begin
  obtenernumero;
  end;
  begin
  leyes_de_juego;
  end;
  begin
  guardar_valor;
  end;
end;
procedure opcion1;
begin 
     clrscr;
     writeln('Continuemos...');
end;
procedure opcion2;
begin
clrscr;
writeln('Empezando de nuevo....');
     for i:= 1 to 9 do
     fila1[i]:=0;
     for i:= 1 to 9 do
     fila2[i]:=0;
     for i:= 1 to 9 do
     fila3[i]:=0;
     for i:= 1 to 9 do
     fila4[i]:=0;
     for i:= 1 to 9 do 
     fila5[i]:=0;
     for i:= 1 to 9 do
     fila6[i]:=0;
     for i:= 1 to 9 do
     fila7[i]:=0;
     for i:= 1 to 9 do
     fila8[i]:=0;
     for i:= 1 to 9 do
     fila9[i]:=0;
end;
procedure valores_completos;
begin
begin //Contruyendo fila 1 del sudoku
  fila1[1]:=1;
  fila1[2]:=7; fila1[3]:=8; fila1[4]:=2; fila1[5]:=5; fila1[6]:=9; 
  fila1[7]:=4;
  fila1[8]:=6;
  fila1[9]:=3;
  end;
  begin //Contruyendo fila 2 del sudoku
  fila2[1]:=6; fila2[2]:=4; fila2[3]:=9;
  fila2[4]:=3; fila2[5]:=1; fila2[6]:=7;
  fila2[7]:=5; fila2[8]:=2; fila2[9]:=8;
  end;
  begin //Contruyendo fila 3 del sudoku
  fila3[1]:= 3; fila3[2]:= 2; fila3[3]:= 5;
  fila3[4]:= 4; fila3[5]:= 8; fila3[6]:= 6;
  fila3[7]:= 1; fila3[8]:= 9; fila3[9]:= 7;
  end;
  begin //Contruyendo fila 4 del sudoku
  fila4[1]:= 8; fila4[2]:= 6; fila4[3]:= 7;
  fila4[4]:= 5; fila4[5]:= 9; fila4[6]:= 3;
  fila4[7]:= 2; fila4[8]:= 1; fila4[9]:= 4;
  end;
  begin //Contruyendo fila 5 del sudoku
  fila5[1]:= 9; fila5[2]:= 3; fila5[3]:= 2;
  fila5[4]:= 1; fila5[5]:= 4; fila5[6]:= 8;
  fila5[7]:= 7; fila5[8]:= 5; fila5[9]:= 6;
  end;
  begin //Contruyendo fila 6 del sudoku
  fila6[1]:= 4; fila6[2]:= 5; fila6[3]:= 1;
  fila6[4]:= 7; fila6[5]:= 6; fila6[6]:= 2;
  fila6[7]:= 3; fila6[8]:= 8; fila6[9]:= 9;
  end;
  begin //Contruyendo fila 7 del sudoku
  fila7[1]:= 7; fila7[2]:= 8; fila7[3]:= 4;
  fila7[4]:= 9; fila7[5]:= 2; fila7[6]:= 1;
  fila7[7]:= 6; fila7[8]:= 3; fila7[9]:= 5;
  end;
  begin //Contruyendo fila 8 del sudoku
  fila8[1]:= 5; fila8[2]:= 1; fila8[3]:= 6;
  fila8[4]:= 8; fila8[5]:= 3; fila8[6]:= 4;
  fila8[7]:= 9; fila8[8]:= 7; fila8[9]:= 2;
  end;
  begin //Contruyendo fila 9 del sudoku
  fila9[1]:= 2; fila9[2]:= 9; fila9[3]:= 3;
  fila9[4]:= 6; fila9[5]:= 7; fila9[6]:= 5;
  fila9[7]:= 8; fila9[8]:= 4; fila9[9]:= 1;
end;
end;
procedure sudoku_listo;
begin
 begin
 valores_completos;
 end;
 textcolor(black);
 textbackground(yellow);
 writeln('   TABLA RESUELTA   ');
 textbackground(Green); //Enseñar sudoku
 textcolor(black);
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila1[i],' ','| ')
 else
 write(fila1[i],' ',); 
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila2[i],' ','| ')
 else
 write(fila2[i],' ',);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila3[i],' ','| ')
 else
 write(fila3[i],' ',);
 writeln;
 end;
 begin
 write('__|__|__| ');
 writeln;
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila4[i],' ','| ')
 else
 write(fila4[i],' ',);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila5[i],' ','| ')
 else
 write(fila5[i],' ',);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila6[i],' ','| ')
 else
 write(fila6[i],' ',);
 writeln;
 end;
 begin
 write('__|__|__| '); 
 writeln;
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila7[i],' ','| ')
 else
 write(fila7[i],' ',);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila8[i],' ','| ')
 else
 write(fila8[i],' ',);
 writeln;
 end;
 begin
 for i:=1 to 9 do
 if (i=3) or (i=6) or (i=9) then
 write(fila9[i],' ','| ')
 else
 write(fila9[i],' ',);
 writeln;
 textbackground(black);
 textcolor(white);
 end;
 end;
procedure opcion3;
begin 
clrscr;
writeln('Saliendo...');
textbackground(green);
writeln('Evalucion Sudoku');
textbackground(Blue);
writeln('Tomas Reales');
writeln('V-28.300.640');
writeln('Daniel Carreño');
writeln('V-28.492.649');
writeln('Kevin Torres');
writeln('V-27.693.129');
writeln('Version: Pascal Movil');
textbackground(black);
exit;
end;
procedure opciones;
begin
  WriteLn('***********');
  WriteLn('*     Elija una opcion      * ');
  WriteLn('*     1 Continuar           * ');
  WriteLn('*     2 Empezar de nuevo    * ');
  WriteLn('*     3 Salir               * ');
  WriteLn('***********');
  readln(opcion);
  if (opcion=1) then
     opcion1
    else if (opcion=2) then
       opcion2
       else if (opcion=3) then
         opcion3
         else
         begin
           writeln('Opcion incorrecta');
          end;
end;
procedure gano;
begin
     begin
     termino:=true;
      writeln('Saliendo...');
      textbackground(green);
      writeln('Evaluacion Sudoku');
      textbackground(Blue);
      writeln('Tomas Reales');
      writeln('V-28.300.640');
      writeln('Daniel Carreño');
      writeln('V-8.492.649');
      writeln('Kevin Torres');
      writeln('V-27.693.129');
      end;
      exit;
end;
procedure ganador;
Begin
     begin 
     if (ver[1]=true) and (ver[2]=true) and (ver[3]=true) and (ver[4]=true) and (ver[5]=true) and (ver[6]=true) and (ver[7]=true) and (ver[8]=true)
     and (ver[9]=true) then
      begin
      textbackground(yellow);
      textcolor(Black);
      writeln('!HAS SOLUCIONADO EL SUDOKU!');
      textbackground(black);
      textcolor(white);
      gano;
      end
     else
       termino:=false;
       break;
     end;
end;
procedure comprobar_ganador;
begin
   begin
    for i:= 1 to 9 do 
   if (fila1[i]<>0) then //Comprobando si fila 1 esta completa
   begin
   ver[1]:= true;
   end
   else
   begin
    ver[1]:=false;
    break;
   end;
  end;
  begin
   for i:=1 to 9 do
   if (fila2[i]<>0) then //Comprobando si fila 2 esta completa 
   begin
   ver[2]:= true;
   end
   else
   begin
    ver[2]:=false;
    break;
   end;
  end;
  begin
   for i:=1 to 9 do
   if (fila3[i]<>0) then //Comprobando si fila 3 esta completa
   begin
   ver[3]:= true;
   end
   else
   begin
    ver[3]:=false;
    break;
   end;
  end;
  begin
   for i:=1 to 9 do
   if (fila4[i]<>0) then //Comprobando si fila 4 esta completa
   begin
   ver[4]:= true;
   end
   else
   begin
    ver[4]:=false;
    break;
   end;
  end;
  begin
   for i:= 1 to 9 do
   if (fila5[i]<>0) then //Comprobando si fila 5 esta completa
   begin
   ver[5]:= true;
   end
   else
   begin
    ver[5]:=false;
    break;
   end;
  end;
  begin
   for i:= 1 to 9 do
   if (fila6[i]<>0) then //Comprobando si fila 6 esta completa
   begin
   ver[6]:= true;
   end
   else
   begin
    ver[6]:=false;
    break;
   end;
  end;
  begin
   for i:=1 to 9 do
   if (fila7[i]<>0) then //Comprobando si fila 7 esta completa
   begin
   ver[7]:= true;
   end
   else
   begin
    ver[7]:=false;
    break;
   end;
  end;
  begin
   for i:=1 to 9 do
   if (fila8[i]<>0) then //Comprobando si fila 8 esta completa
   begin
   ver[8]:= true;
   end
   else
   begin
    ver[8]:=false;
    break;
   end;
  end;
  begin
   for i:= 1 to 9 do
   if (fila9[i]<>0) then // Comprobando si fila 9 esta completa
   begin
   ver[9]:= true;
   end
   else
   begin
    ver[9]:=false;
    break;
   end;
  end;
   begin
   ganador;
   end;
end;
procedure sistema;
begin
 repeat
 begin
  programa;
  opciones;
  comprobar_ganador;
  end;
  until (p<>0) and (desigual=false) or (opcion=3);
  begin
 end;
end;
procedure instrucciones;
begin
  begin
   begin
   textcolor(Yellow);
   writeln('_________________');
   writeln('                    INSTRUCCIONES                  ');
   writeln('_________________');
   end;
   begin
   textcolor(blue);
   writeln('*Si ingresas un numero mal vuelve a colocar su ubicación y asignale cualquier valor, El sistema te lo borra automáticamente...                           ');
   textcolor(brown);
   WRITELN('*Con cada cambio el programa te pedira si seguir o no debes ingresar una opcion...                    ');
   textcolor(red);
   writeln('*El programa te pedira que des la ubicación fijate en los numeros de columnas y filas estos te apareceran uno encima y otro al costado del sudoku...   ');
   textcolor(magenta);
   writeln('                    PULSE ENTER                    ');
   textcolor(white);
   end;
   readln();
   end;
end;

begin
 begin
  clrscr;
  instrucciones;
  clrscr;
  WriteLn('Creando tabla de Sudoku....');
  begin
  while (opcion<>3) and (termino<>true) do
  sistema;
  end;
  begin
  sudoku_listo
  end;
  end;
end.
