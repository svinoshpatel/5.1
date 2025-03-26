program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Type
Zalikova = class // залікова книжка студента
StudN: String; // прізвище студента
 DekN: String; // прізвище декана
 Procedure SetStr (z: String);
 Function Get_Dekan: String;
Public
 Constructor Creat (Const StudName, DekName: String);
 Property Student: String read StudN write SetStr;
 Property Dekan: String read Get_Dekan;
end;
// Реалізація методів класу Zalikova
Constructor Zalikova.Creat(Const StudName, DekName: String);
Begin
 Student := StudName; // StudN := StudName; – не правильно
 DekN := DekName; // Dekan := DekName; – не правильно
end;
Procedure Zalikova.SetStr (z: String);
Begin
 If z <> 'Ivanov' then
 Self.StudN :=z
 else
 Self.StudN:='Petrenko';
end;
Function Zalikova.Get_Dekan: String;
Begin
 Result := DekN;
end;
Var K: Zalikova; // оголошення змінної-об’єкта класу Zalikova
BEGIN // початок головної програми
K := Zalikova.Creat(' Ivanenko',' Furgalа'); // створення об’єкта класу Zalikova
WriteLn (K.Student);
K.StudN := ' Petrenko';
WriteLn (K.StudN);
WriteLn (K.Dekan);
ReadLn;
End.
