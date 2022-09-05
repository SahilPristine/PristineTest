// page 80000 TestSahil
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = 80000;
//     Editable = true;
//     layout
//     {
//         area(Content)
//         {
//             group(GroupName)
//             {
//                 field(Value; rec.Value)
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(Test)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 begin
//                     Codeunit.Run(80000, Rec)
//                 end;
//             }
//             action(TestXML)
//             {
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 begin
//                     Xmlport.Run(80000, false, false);
//                 end;
//             }
//         }
//     }

//     var
//         number: Text[20];
//         Substring: text[20];
//         num1: Text[20];
//         num2: Text[20];
//         Pos: Integer;
//         TestCodeunit: Record 80000;
// }