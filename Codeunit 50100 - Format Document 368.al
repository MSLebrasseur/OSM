codeunit 50100 "FormatDocumentOSM"
{
    // version NAVW113.03.GES
    // GES : 2019-05-02 : Remplacer la procédure SetTotalLabels du CU368 - Format Document
    //                    pour retirer TTC du Total CAD TTC - TotalInclVatTxt, TotalExclVatTxt

    trigger OnRun();
    begin
    end;

    var
        TotalTxt: TextConst Comment = '%1 = Currency Code', ENU = 'Total %1', ESM = 'Total %1', FRC = 'Total %1', ENC = 'Total %1';
        TotalInclVATTxt: TextConst Comment = '%1 = Currency Code', ENU = 'Total %1', ESM = 'Total %1', FRC = 'Total %1', ENC = 'Total %1';
        TotalExclVATTxt: TextConst Comment = '%1 = Currency Code', ENU = 'Total %1', ESM = 'Total %1', FRC = 'Total %1', ENC = 'Total %1';
        GLSetup: Record "General Ledger Setup";

    [Scope('Personalization')]
    procedure SetTotalLabelsOSM(CurrencyCode: Code[10]; var TotalText: Text[50]; var TotalInclVATText: Text[50]; var TotalExclVATText: Text[50]);
    begin
        IF CurrencyCode = '' THEN BEGIN
            GLSetup.GET;
            GLSetup.TESTFIELD("LCY Code");
            TotalText := STRSUBSTNO(TotalTxt, GLSetup."LCY Code");
            TotalInclVATText := STRSUBSTNO(TotalInclVATTxt, GLSetup."LCY Code");
            TotalExclVATText := STRSUBSTNO(TotalExclVATTxt, GLSetup."LCY Code");
        END ELSE BEGIN
            TotalText := STRSUBSTNO(TotalTxt, CurrencyCode);
            TotalInclVATText := STRSUBSTNO(TotalInclVATTxt, CurrencyCode);
            TotalExclVATText := STRSUBSTNO(TotalExclVATTxt, CurrencyCode);
        END;
    end;

}

