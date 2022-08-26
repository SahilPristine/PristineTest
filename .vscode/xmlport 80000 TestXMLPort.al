xmlport 80000 TestXMLPort
{
    Format = Xml;

    schema
    {
        textelement(root)
        {
            tableelement(Integer; Integer)
            {
                textelement(No_)
                {

                }
                textelement(Name)
                {

                }
                trigger OnAfterGetRecord()
                begin
                    If Linecount < 10 then begin
                        recVendor."No." := No_;
                        recVendor.Name := Name;
                    end;
                    Linecount += 1;
                end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        Linecount: Integer;
        recVendor: Record Vendor;
}