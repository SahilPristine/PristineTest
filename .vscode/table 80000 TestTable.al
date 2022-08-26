table 80000 TestTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Value; Text[20])
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
    }

    keys
    {
        // key(Key1; MyField)
        // {
        //     Clustered = true;
        // }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}