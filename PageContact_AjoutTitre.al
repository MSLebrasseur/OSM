pageextension 50120 PageContactExtension extends "Contact Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Title"; Title)
            {
                ApplicationArea = All;

                trigger OnValidate();
                begin
                    //if Title = '' then
                    //    Error('Title is empty');
                end;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}