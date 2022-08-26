page 80001 SalesTest
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 80001;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; rec."Document No.")
                {
                    ApplicationArea = All;

                }
                field("Line No."; rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(No; rec.No)
                {
                    ApplicationArea = All;
                }
                field("Location Code"; rec."Location Code")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            // action(Test)
            // {
            //     ApplicationArea = All;

            //     trigger OnAction();
            //     begin
            //         repeat
            //             Rec.Init();
            //             rec."Document No." := SalesLine."Document No.";
            //             rec.No := SalesLine."No.";
            //             rec."Line No." := SalesLine."Line No.";
            //             rec."Location Code" := SalesLine."Location Code";
            //             Rec.Insert();
            //         until SalesLine.Next() = 0;
            //         Message('Done');
            //     end;
            // }
            action(Open)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Page.Run(48);
                end;
            }
        }
    }
    var
        SalesLine: Record "Sales Line";
}