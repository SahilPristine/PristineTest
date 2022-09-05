// codeunit 80000 Test
// {
//     TableNo = 80000;

//     trigger OnRun()
//     begin
//         StrFunction(Rec);
//     end;

//     var
//         number: Text[20];
//         Substring: text[20];
//         num1: Text[20];
//         num2: Text[20];
//         Pos: Integer;


//     procedure StrFunction(rec: Record TestTable)
//     begin
//         number := rec.Value;
//         Substring := '.';
//         Pos := StrPos(number, Substring);
//         num1 := CopyStr(number, 1, Pos - 1);
//         num2 := DelStr(number, 1, Pos);
//         Message('Value is %1', number);
//         Message('value before decimal is %1', num1);
//         Message('Value after decimal is %1', num2);
//     end;
// }