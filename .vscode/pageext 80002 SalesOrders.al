pageextension 80002 SalesOrders extends "Sales Orders"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(Processing)
        {
            action(Insert)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    CurrPage.SetSelectionFilter(Rec);

                    // repeat
                    // SetSelectionFilter(Rec);
                    TestTable.Init();
                    TestTable."Document No." := Rec."Document No.";
                    TestTable."Line No." := rec."Line No.";
                    TestTable."Location Code" := Rec."Location Code";
                    TestTable.No := Rec."No.";
                    TestTable.Insert(true);

                    // until Rec.Next() = 0;
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        TestTable: Record SalesLineTest;
}