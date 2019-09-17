tableextension 50120 TableContactExtension extends Contact
{
    fields
    {
        field(50120; Title; Text[50])
        {
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                //if (rec.Title < '') then
                //begin
                //   message('Title cannot be empty: %1', rec.Title);
                //end;
            end;
        }
    }

    var
        myInt: Integer;
}