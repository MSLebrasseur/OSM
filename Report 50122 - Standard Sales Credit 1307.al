report 50122 "Standard Sales Credit 1307"
{
    // version NAVW113.01,NAVNA13.01

    // //GES.001 - MSL - 20190319
    // //ln 63 : ajouter GST et QST no, report language
    // //ln 93 : ajouter LineAmountByDesc = Line Amount total par description
    // //ln 137 : LineAmountByDesc = Line."Line Amount"
    RDLCLayout = './Standard Sales Credit 1307.rdlc';
    WordLayout = './Standard Sales Credit 1307.docx';

    CaptionML = ENU = 'Sales - Credit Memo',
                ESM = 'Ventas - Nota crédito',
                FRC = 'Ventes - Note de crédit',
                ENC = 'Sales - Credit Memo';
    DefaultLayout = RDLC;
    Permissions = TableData 7190 = rimd;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Sales Credit Memo',
                                     ESM = 'Histórico nota crédito venta',
                                     FRC = 'Note de crédit vente reportée',
                                     ENC = 'Posted Sales Credit Memo';
            column(CompanyAddress1; CompanyAddr[1])
            {
            }
            column(CompanyAddress2; CompanyAddr[2])
            {
            }
            column(CompanyAddress3; CompanyAddr[3])
            {
            }
            column(CompanyAddress4; CompanyAddr[4])
            {
            }
            column(CompanyAddress5; CompanyAddr[5])
            {
            }
            column(CompanyAddress6; CompanyAddr[6])
            {
            }
            column(CompanyHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompanyEMail; CompanyInfo."E-Mail")
            {
            }
            column(CompanyPicture; CompanyInfo.Picture)
            {
            }
            column(CompanyPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyPhoneNo_Lbl; CompanyInfoPhoneNoLbl)
            {
            }
            column(CompanyGiroNo; CompanyInfo."Giro No.")
            {
            }
            column(CompanyGiroNo_Lbl; CompanyInfoGiroNoLbl)
            {
            }
            column(CompanyBankName; CompanyInfo."Bank Name")
            {
            }
            column(CompanyBankName_Lbl; CompanyInfoBankNameLbl)
            {
            }
            column(CompanyBankBranchNo; CompanyInfo."Bank Branch No.")
            {
            }
            column(CompanyBankBranchNo_Lbl; CompanyInfo.FIELDCAPTION("Bank Branch No."))
            {
            }
            column(CompanyBankAccountNo; CompanyInfo."Bank Account No.")
            {
            }
            column(CompanyBankAccountNo_Lbl; CompanyInfoBankAccNoLbl)
            {
            }
            column(CompanyIBAN; CompanyInfo.IBAN)
            {
            }
            column(CompanyIBAN_Lbl; CompanyInfo.FIELDCAPTION(IBAN))
            {
            }
            column(CompanySWIFT; CompanyInfo."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl; CompanyInfo.FIELDCAPTION("SWIFT Code"))
            {
            }
            column(CompanyLogoPosition; CompanyLogoPosition)
            {
            }
            column(CompanyRegistrationNumber; CompanyInfo.GetRegistrationNumber)
            {
            }
            column(CompanyRegistrationNumber_Lbl; CompanyInfo.GetRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegNo; CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegistrationNo; CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegistrationNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyLegalOffice; CompanyInfo.GetLegalOffice)
            {
            }
            column(CompanyLegalOffice_Lbl; CompanyInfo.GetLegalOfficeLbl)
            {
            }
            column(CompanyCustomGiro; CompanyInfo.GetCustomGiro)
            {
            }
            column(CompanyCustomGiro_Lbl; CompanyInfo.GetCustomGiroLbl)
            {
            }
            column(CompanyLegalStatement; GetLegalStatement)
            {
            }
            column(CustomerAddress1; CustAddr[1])
            {
            }
            column(CustomerAddress2; CustAddr[2])
            {
            }
            column(CustomerAddress3; CustAddr[3])
            {
            }
            column(CustomerAddress4; CustAddr[4])
            {
            }
            column(CustomerAddress5; CustAddr[5])
            {
            }
            column(CustomerAddress6; CustAddr[6])
            {
            }
            column(CustomerAddress7; CustAddr[7])
            {
            }
            column(CustomerAddress8; CustAddr[8])
            {
            }
            column(CustomerPostalBarCode; FormatAddr.PostalBarCode(1))
            {
            }
            column(YourReference_Header; "Your Reference")
            {
            }
            column(YourReference_Header_Lbl; FIELDCAPTION("Your Reference"))
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(ShipmentMethodDescription_Lbl; ShptMethodDescLbl)
            {
            }
            column(ShipmentDate; FORMAT("Shipment Date", 0, 4))
            {
            }
            column(ShipmentDate_Lbl; FIELDCAPTION("Shipment Date"))
            {
            }
            column(Shipment_Lbl; ShipmentLbl)
            {
            }
            column(ShowShippingAddress; ShowShippingAddr)
            {
            }
            column(ShipToAddress_Lbl; ShiptoAddrLbl)
            {
            }
            column(ShipToAddress1; ShipToAddr[1])
            {
            }
            column(ShipToAddress2; ShipToAddr[2])
            {
            }
            column(ShipToAddress3; ShipToAddr[3])
            {
            }
            column(ShipToAddress4; ShipToAddr[4])
            {
            }
            column(ShipToAddress5; ShipToAddr[5])
            {
            }
            column(ShipToAddress6; ShipToAddr[6])
            {
            }
            column(ShipToAddress7; ShipToAddr[7])
            {
            }
            column(ShipToAddress8; ShipToAddr[8])
            {
            }
            column(PaymentTermsDescription; PaymentTerms.Description)
            {
            }
            column(PaymentTermsDescription_Lbl; PaymentTermsDescLbl)
            {
            }
            column(PaymentMethodDescription; PaymentMethod.Description)
            {
            }
            column(PaymentMethodDescription_Lbl; PaymentMethodDescLbl)
            {
            }
            column(DocumentCopyText; STRSUBSTNO(DocumentCaption, CopyText))
            {
            }
            column(BilltoCustumerNo; "Bill-to Customer No.")
            {
            }
            column(BilltoCustomerNo_Lbl; FIELDCAPTION("Bill-to Customer No."))
            {
            }
            column(DocumentDate; FORMAT("Document Date", 0, '<Year>-<Month,2>-<Day,2>'))
            {
            }
            column(DocumentDate_Lbl; FIELDCAPTION("Document Date"))
            {
            }
            column(DueDate; FORMAT("Due Date", 0, '<Year>-<Month,2>-<Day,2>'))
            {
            }
            column(DueDate_Lbl; FIELDCAPTION("Due Date"))
            {
            }
            column(DocumentNo; "No.")
            {
            }
            column(DocumentNo_Lbl; InvNoLbl)
            {
            }
            column(AppliesToDocument; AppliesToText)
            {
            }
            column(AppliesToDocument_Lbl; AppliesToTextLbl)
            {
            }
            column(PricesIncludingVAT; "Prices Including VAT")
            {
            }
            column(PricesIncludingVAT_Lbl; FIELDCAPTION("Prices Including VAT"))
            {
            }
            column(PricesIncludingVATYesNo; FORMAT("Prices Including VAT"))
            {
            }
            column(SalesPerson_Lbl; SalespersonLbl)
            {
            }
            column(Salesperson_Lbl2; SalespersonLbl2)
            {
            }
            column(SalesPersonBlank_Lbl; SalesPersonText)
            {
            }
            column(SalesPersonName; SalespersonPurchaser.Name)
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerNo_Lbl; FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(VATRegistrationNo; GetCustomerVATRegistrationNumber)
            {
            }
            column(VATRegistrationNo_Lbl; GetCustomerVATRegistrationNumberLbl)
            {
            }
            column(GlobalLocationNumber; GetCustomerGlobalLocationNumber)
            {
            }
            column(GlobalLocationNumber_Lbl; GetCustomerGlobalLocationNumberLbl)
            {
            }
            column(LegalEntityType; Cust.GetLegalEntityType)
            {
            }
            column(LegalEntityType_Lbl; Cust.GetLegalEntityTypeLbl)
            {
            }
            column(Copy_Lbl; CopyLbl)
            {
            }
            column(EMail_Lbl; EMailLbl)
            {
            }
            column(HomePage_Lbl; HomePageLbl)
            {
            }
            column(InvoiceDiscountBaseAmount_Lbl; InvDiscBaseAmtLbl)
            {
            }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl)
            {
            }
            column(LineAmountAfterInvoiceDiscount_Lbl; LineAmtAfterInvDiscLbl)
            {
            }
            column(LocalCurrency_Lbl; LocalCurrencyLbl)
            {
            }
            column(ExchangeRateAsText; ExchangeRateText)
            {
            }
            column(Page_Lbl; PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl; SalesInvLineDiscLbl)
            {
            }
            column(DocumentTitle; SalesCreditMemoLbl)
            {
            }
            column(Subtotal_Lbl; SubtotalLbl)
            {
            }
            column(Total_Lbl; TotalLbl)
            {
            }
            column(VATAmount_Lbl; VATAmtLbl)
            {
            }
            column(VATBase_Lbl; VATBaseLbl)
            {
            }
            column(VATAmountSpecification_Lbl; VATAmtSpecificationLbl)
            {
            }
            column(VATClauses_Lbl; VATClausesLbl)
            {
            }
            column(VATIdentifier_Lbl; VATIdentifierLbl)
            {
            }
            column(VATPercentage_Lbl; VATPercentageLbl)
            {
            }
            column(VATClause_Lbl; VATClause.TABLECAPTION)
            {
            }
            column(CustomerPONumber_Lbl; CustomerPONumberLbl)
            {
            }
            column(CustomerPONumber; "External Document No.")
            {
            }
            column(ContactNo; Cust."Primary Contact No.")
            {
            }
            column(VATRegNo; CompanyInfo."VAT Registration No.")
            {
            }
            column(ContactTitle; ContactTitle)
            {
            }
            column(BillToAddrLbl; BillToAddrLbl)
            {
            }
            dataitem(Line; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = FIELD ("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING ("Document No.", "Line No.");
                column(LineNo_Line; "Line No.")
                {
                }
                column(AmountExcludingVAT_Line; Amount)
                {
                    AutoFormatExpression = GetCurrencyCode;
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FIELDCAPTION(Amount))
                {
                }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {
                    AutoFormatExpression = GetCurrencyCode;
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FIELDCAPTION("Amount Including VAT"))
                {
                    AutoFormatExpression = GetCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Description_Line; Description)
                {
                }
                column(Description_Line_Lbl; FIELDCAPTION(Description))
                {
                }
                column(LineDiscountPercent_Line; "Line Discount %")
                {
                }
                column(LineDiscountPercentText_Line; LineDiscountPctText)
                {
                }
                column(LineAmount_Line; FormattedLineAmount)
                {
                    AutoFormatExpression = GetCurrencyCode;
                    AutoFormatType = 1;
                }
                column(LineAmount_Line_Lbl; FIELDCAPTION("Line Amount"))
                {
                }
                column(ItemNo_Line; "No.")
                {
                }
                column(ItemNo_Line_Lbl; FIELDCAPTION("No."))
                {
                }
                column(ShipmentDate_Line; FORMAT("Shipment Date"))
                {
                }
                column(ShipmentDate_Line_Lbl; PostedShipmentDateLbl)
                {
                }
                column(Quantity_Line; FormattedQuantity)
                {
                }
                column(Quantity_Line_Lbl; FIELDCAPTION(Quantity))
                {
                }
                column(Type_Line; FORMAT(Type))
                {
                }
                column(UnitPrice; FormattedUnitPrice)
                {
                    AutoFormatExpression = GetCurrencyCode;
                    AutoFormatType = 2;
                }
                column(UnitPrice_Lbl; FIELDCAPTION("Unit Price"))
                {
                }
                column(UnitOfMeasure; "Unit of Measure")
                {
                }
                column(UnitOfMeasure_Lbl; FIELDCAPTION("Unit of Measure"))
                {
                }
                column(VATIdentifier_Line; "VAT Identifier")
                {
                }
                column(VATIdentifier_Line_Lbl; FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_Line; FormattedVATPct)
                {
                }
                column(VATPct_Line_Lbl; FIELDCAPTION("VAT %"))
                {
                }
                column(TransHeaderAmount; TransHeaderAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(Unit_Lbl; UnitLbl)
                {
                }
                column(UnitPrice_Lbl2; UnitPriceLbl)
                {
                }
                column(LineAmount_Lbl; LineAmountLbl)
                {
                }
                column(TitleLbl; TitleLbl)
                {
                }
                column(BillToLbl; BillToLbl)
                {
                }
                column(CompanyGSTNo; CompanyGSTNo)
                {
                }
                column(CompanyQSTNo; CompanyQSTNo)
                {
                }
                column(GSTNoLbl; GSTNoLbl)
                {
                }
                column(QSTNoLbl; QSTNoLbl)
                {
                }
                column(SLD_LineAmountByDesc; LineAmountByDesc)
                {
                }
                dataitem(ShipmentLine; "Sales Shipment Buffer")
                {
                    DataItemTableView = SORTING ("Document No.", "Line No.", "Entry No.");
                    UseTemporary = true;
                    column(DocumentNo_ShipmentLine; "Document No.")
                    {
                    }
                    column(PostingDate_ShipmentLine; "Posting Date")
                    {
                    }
                    column(PostingDate_ShipmentLine_Lbl; FIELDCAPTION("Posting Date"))
                    {
                    }
                    column(Quantity_ShipmentLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(Quantity_ShipmentLine_Lbl; FIELDCAPTION(Quantity))
                    {
                    }

                    trigger OnPreDataItem();
                    begin
                        SETRANGE("Line No.", Line."Line No.");
                    end;
                }
                dataitem(AssemblyLine; "Posted Assembly Line")
                {
                    DataItemTableView = SORTING ("Document No.", "Line No.");
                    UseTemporary = true;
                    column(LineNo_AssemblyLine; "No.")
                    {
                    }
                    column(Description_AssemblyLine; Description)
                    {
                    }
                    column(Quantity_AssemblyLine; Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(UnitOfMeasure_AssemblyLine; GetUOMText("Unit of Measure Code"))
                    {
                    }
                    column(VariantCode_AssemblyLine; "Variant Code")
                    {
                    }

                    trigger OnPreDataItem();
                    var
                        ValueEntry: Record "Value Entry";
                    begin
                        CLEAR(AssemblyLine);
                        IF NOT DisplayAssemblyInformation THEN
                            CurrReport.BREAK;
                        GetAssemblyLinesForDocument(
                          AssemblyLine, ValueEntry."Document Type"::"Sales Credit Memo", Line."Document No.", Line."Line No.");
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    InitializeSalesShipmentLine;
                    IF Type = Type::"G/L Account" THEN
                        "No." := '';

                    IF "Line Discount %" = 0 THEN
                        LineDiscountPctText := ''
                    ELSE
                        LineDiscountPctText := STRSUBSTNO('%1%', -ROUND("Line Discount %", 0.1));

                    VATAmountLine.INIT;
                    VATAmountLine."VAT Identifier" := "VAT Identifier";
                    VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                    VATAmountLine."Tax Group Code" := "Tax Group Code";
                    VATAmountLine."VAT %" := "VAT %";
                    VATAmountLine."VAT Base" := Amount;
                    VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                    VATAmountLine."Line Amount" := "Line Amount";
                    IF "Allow Invoice Disc." THEN
                        VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                    VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                    VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                    VATAmountLine.InsertLine;

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                    FormatDocument.SetSalesCrMemoLine(Line, FormattedQuantity, FormattedUnitPrice, FormattedVATPct, FormattedLineAmount);

                    IF FirstLineHasBeenOutput THEN
                        CLEAR(CompanyInfo.Picture);
                    FirstLineHasBeenOutput := TRUE;

                    //GES.001 - Start
                    LineAmountByDesc := Line."Line Amount";
                    //GES.001 - End
                end;

                trigger OnPreDataItem();
                begin
                    VATAmountLine.DELETEALL;
                    VATClauseLine.DELETEALL;
                    ShipmentLine.RESET;
                    ShipmentLine.DELETEALL;
                    MoreLines := FIND('+');
                    WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                        MoreLines := NEXT(-1) <> 0;
                    IF NOT MoreLines THEN
                        CurrReport.BREAK;
                    SETRANGE("Line No.", 0, "Line No.");
                    //GES.001 ?
                    //CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := FALSE;
                    CompanyInfo.Picture := TempBlobCompanyLogo.Blob;

                    //GES.001 - Start
                    LineAmountByDesc := 0;
                    //GES.001 - End
                end;
            }
            dataitem(VATAmountLine; "VAT Amount Line")
            {
                DataItemTableView = SORTING ("VAT Identifier", "VAT Calculation Type", "Tax Group Code", "Use Tax", Positive);
                UseTemporary = true;
                column(InvoiceDiscountAmount_VATAmountLine; "Invoice Discount Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountAmount_VATAmountLine_Lbl; FIELDCAPTION("Invoice Discount Amount"))
                {
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine; "Inv. Disc. Base Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine_Lbl; FIELDCAPTION("Inv. Disc. Base Amount"))
                {
                }
                column(LineAmount_VatAmountLine; "Line Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_VatAmountLine_Lbl; FIELDCAPTION("Line Amount"))
                {
                }
                column(VATAmount_VatAmountLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmount_VatAmountLine_Lbl; FIELDCAPTION("VAT Amount"))
                {
                }
                column(VATAmountLCY_VATAmountLine; VATAmountLCY)
                {
                }
                column(VATAmountLCY_VATAmountLine_Lbl; VATAmountLCYLbl)
                {
                }
                column(VATBase_VatAmountLine; "VAT Base")
                {
                    AutoFormatExpression = Line.GetCurrencyCode;
                    AutoFormatType = 1;
                }
                column(VATBase_VatAmountLine_Lbl; FIELDCAPTION("VAT Base"))
                {
                }
                column(VATBaseLCY_VATAmountLine; VATBaseLCY)
                {
                }
                column(VATBaseLCY_VATAmountLine_Lbl; VATBaseLCYLbl)
                {
                }
                column(VATIdentifier_VatAmountLine; "VAT Identifier")
                {
                }
                column(VATIdentifier_VatAmountLine_Lbl; FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_VatAmountLine; "VAT %")
                {
                    DecimalPlaces = 0 : 5;
                }
                column(VATPct_VatAmountLine_Lbl; FIELDCAPTION("VAT %"))
                {
                }
                column(NoOfVATIdentifiers; COUNT)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    VATBaseLCY :=
                      GetBaseLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");
                    VATAmountLCY :=
                      GetAmountLCY(
                        Header."Posting Date", Header."Currency Code",
                        Header."Currency Factor");

                    TotalVATBaseLCY += VATBaseLCY;
                    TotalVATAmountLCY += VATAmountLCY;

                    IF "VAT Clause Code" <> '' THEN BEGIN
                        VATClauseLine := VATAmountLine;
                        IF VATClauseLine.INSERT THEN;
                    END;
                end;

                trigger OnPreDataItem();
                begin
                    //GES.001 ?
                    //CurrReport.CREATETOTALS(
                    //  "Line Amount","Inv. Disc. Base Amount",
                    //  "Invoice Discount Amount","VAT Base","VAT Amount",
                    //  VATBaseLCY,VATAmountLCY);

                    TotalVATBaseLCY := 0;
                    TotalVATAmountLCY := 0;
                end;
            }
            dataitem(VATClauseLine; "VAT Amount Line")
            {
                UseTemporary = true;
                column(VATIdentifier_VATClauseLine; "VAT Identifier")
                {
                }
                column(Code_VATClauseLine; VATClause.Code)
                {
                }
                column(Code_VATClauseLine_Lbl; VATClause.FIELDCAPTION(Code))
                {
                }
                column(Description_VATClauseLine; VATClause.Description)
                {
                }
                column(Description2_VATClauseLine; VATClause."Description 2")
                {
                }
                column(VATAmount_VATClauseLine; "VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(NoOfVATClauses; COUNT)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    IF "VAT Clause Code" = '' THEN
                        CurrReport.SKIP;
                    IF NOT VATClause.GET("VAT Clause Code") THEN
                        CurrReport.SKIP;
                    VATClause.TranslateDescription(Header."Language Code");
                end;
            }
            dataitem(ReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = SORTING ("Line No.");
                UseTemporary = true;
                column(Description_ReportTotalsLine; Description)
                {
                }
                column(Amount_ReportTotalsLine; Amount)
                {
                }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted")
                {
                }
                column(FontBold_ReportTotalsLine; "Font Bold")
                {
                }

                trigger OnPreDataItem();
                begin
                    CreateReportTotalLines;
                end;
            }
            dataitem(USReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = SORTING ("Line No.");
                UseTemporary = true;
                column(Description_USReportTotalsLine; Description)
                {
                }
                column(Amount_USReportTotalsLine; Amount)
                {
                }
                column(AmountFormatted_USReportTotalsLine; "Amount Formatted")
                {
                }
                column(FontBold_USReportTotalsLine; "Font Bold")
                {
                }
                column(FontUnderline_USReportTotalsLine; "Font Underline")
                {
                }

                trigger OnPreDataItem();
                begin
                    CreateUSReportTotalLines;
                end;
            }
            dataitem(LetterText; Integer)
            {
                DataItemTableView = SORTING (Number)
                                    WHERE (Number = CONST (1));
                column(GreetingText; GreetingLbl)
                {
                }
                column(BodyText; BodyLbl)
                {
                }
                column(ClosingText; ClosingLbl)
                {
                }
            }
            dataitem(Totals; Integer)
            {
                DataItemTableView = SORTING (Number)
                                    WHERE (Number = CONST (1));
                column(TotalNetAmount; TotalAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATBaseLCY; TotalVATBaseLCY)
                {
                }
                column(TotalAmountIncludingVAT; TotalAmountInclVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmount; TotalAmountVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmountLCY; TotalVATAmountLCY)
                {
                }
                column(TotalInvoiceDiscountAmount; TotalInvDiscAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotgalPaymentDiscountOnVAT; TotalPaymentDiscOnVAT)
                {
                }
                column(TotalVATAmountText; VATAmountLine.VATAmountText)
                {
                }
                column(TotalExcludingVATText; TotalExclVATText)
                {
                }
                column(TotalIncludingVATText; TotalInclVATText)
                {
                }
                column(TotalSubTotal; TotalSubTotal)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalSubTotalMinusInvoiceDiscount; TotalSubTotal + TotalInvDiscAmount)
                {
                }
                column(TotalText; TotalText)
                {
                }
                column(AmountSubjectToSalesTax; VATAmountLine.GetAmtSubjectToSalesTax)
                {
                }
                column(AmountSubjectToSalesTaxLbl; AmtSubjecttoSalesTaxLbl)
                {
                }
                column(AmountExemptFromSalesTax; VATAmountLine.GetAmtExemptFromSalesTax)
                {
                }
                column(AmountExemptFromSalesTaxLbl; AmtExemptfromSalesTaxLbl)
                {
                }
            }

            trigger OnAfterGetRecord();
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
            begin
                IF NOT IsReportInPreviewMode THEN
                    CODEUNIT.RUN(CODEUNIT::"Sales Cr. Memo-Printed", Header);

                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields(Header);
                FormatDocumentFields(Header);

                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

                IF "Currency Code" <> '' THEN BEGIN
                    CurrencyExchangeRate.FindCurrency("Posting Date", "Currency Code", 1);
                    CalculatedExchRate :=
                      ROUND(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount", 0.000001);
                    ExchangeRateText := STRSUBSTNO(ExchangeRateTxt, CalculatedExchRate, CurrencyExchangeRate."Exchange Rate Amount");
                END;

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;

                //GES.001 - Start
                CompanyGSTNo := CompanyInfo."VAT Registration No.";
                CompanyQSTNo := CompanyInfo."QST Registration No.";
                CurrReport.LANGUAGE := Language.GetLanguageID(Cust."Language Code");
                //GES.001 - End
            end;

            trigger OnPreDataItem();
            begin
                FirstLineHasBeenOutput := FALSE;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    CaptionML = ENU = 'Options',
                                ESM = 'Opciones',
                                FRC = 'Options',
                                ENC = 'Options';
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Log Interaction',
                                    ESM = 'Log interacción',
                                    FRC = 'Journal interaction',
                                    ENC = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTipML = ENU = 'Specifies if you want to record the related interactions with the involved contact person in the Interaction Log Entry table.',
                                    ESM = 'Especifica si desea registrar las interacciones relacionadas con la persona de contacto implicada en la tabla Mov. log de interacción.',
                                    FRC = 'Spécifie si vous souhaitez enregistrer les interactions associées avec la personne de contact impliquée dans la table Écriture du journal d''interaction.',
                                    ENC = 'Specifies if you want to record the related interactions with the involved contact person in the Interaction Log Entry table.';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Show Assembly Components',
                                    ESM = 'Mostrar componentes del ensamblado',
                                    FRC = 'Afficher les composantes d''assemblage',
                                    ENC = 'Show Assembly Components';
                        ToolTipML = ENU = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.',
                                    ESM = 'Especifica si desea que el informe incluya información sobre componentes que se utilizaron en pedidos de ensamblado vinculados que suministraron el producto de venta.',
                                    FRC = 'Spécifie si vous souhaitez que le rapport contienne des informations sur les composantes qui ont été utilisées dans des ordres d''assemblage liés qui ont fourni le ou les articles vendus.',
                                    ENC = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
                    }
                    field(DisplayShipmentInformation; DisplayShipmentInformation)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Show Shipments',
                                    ESM = 'Mostrar remisiones',
                                    FRC = 'Afficher livraisons',
                                    ENC = 'Show Shipments';
                        ToolTipML = ENU = 'Specifies that shipments are shown on the document.',
                                    ESM = 'Especifica que los envíos se muestran en el documento.',
                                    FRC = 'Spécifie que les livraisons sont affichées dans le document.',
                                    ENC = 'Specifies that shipments are shown on the document.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.SETAUTOCALCFIELDS(Picture);
        CompanyInfo.GET;
        SalesSetup.GET;
        CompanyInfo.VerifyAndSetPaymentInfo;
        TempBlobCompanyLogo.Blob := CompanyInfo.Picture;
        TempBlobCompanyLogo.INSERT;
    end;

    trigger OnPostReport();
    begin
        IF LogInteraction AND NOT IsReportInPreviewMode THEN
            IF Header.FINDSET THEN
                REPEAT
                    IF Header."Bill-to Contact No." <> '' THEN
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Contact, Header."Bill-to Contact No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '')
                    ELSE
                        SegManagement.LogDocument(
                          6, Header."No.", 0, 0, DATABASE::Customer, Header."Bill-to Customer No.", Header."Salesperson Code",
                          Header."Campaign No.", Header."Posting Description", '');
                UNTIL Header.NEXT = 0;
    end;

    trigger OnPreReport();
    begin
        IF Header.GETFILTERS = '' THEN
            ERROR(NoFilterSetErr);

        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;

        CompanyLogoPosition := SalesSetup."Logo Position on Documents";
    end;

    var
        SalesCreditMemoNoLbl: TextConst ENU = 'Sales - Credit Memo %1', ESM = 'Ventas - Nota crédito %1', FRC = 'Ventes - Note de crédit %1', ENC = 'Sales - Credit Memo %1';
        SalespersonLbl: TextConst ENU = 'Sales person', ESM = 'Vendedor', FRC = 'Vendeur', ENC = 'Sales person';
        CompanyInfoBankAccNoLbl: TextConst ENU = 'Account No.', ESM = 'Nº cuenta', FRC = 'N° de compte', ENC = 'Account No.';
        CompanyInfoBankNameLbl: TextConst ENU = 'Bank', ESM = 'Banco', FRC = 'Banque', ENC = 'Bank';
        CompanyInfoGiroNoLbl: TextConst ENU = 'Giro No.', ESM = 'Nº giro postal', FRC = 'N° CCP', ENC = 'Giro No.';
        CompanyInfoPhoneNoLbl: TextConst ENU = 'Phone No', FRA = 'N° téléphone', ESM = 'Nº teléfono', FRC = 'N° téléphone', ENC = 'Phone No';
        CopyLbl: TextConst ENU = 'Copy', ESM = 'Copiar', FRC = 'Copier', ENC = 'Copy';
        EMailLbl: TextConst ENU = 'Email', FRA = 'Courriel', ESM = 'Correo electrónico', FRC = 'Courriel', ENC = 'Email';
        HomePageLbl: TextConst ENU = 'Home Page', FRA = 'Page d''accueil', ESM = 'Página Web', FRC = 'Page d''accueil', ENC = 'Home Page';
        InvDiscBaseAmtLbl: TextConst ENU = 'Invoice Discount Base Amount', ESM = 'Importe base descuento factura', FRC = 'Montant de base d''escompte de la facture', ENC = 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: TextConst ENU = 'Invoice Discount', ESM = 'Descuento factura', FRC = 'Escompte de la facture', ENC = 'Invoice Discount';
        InvNoLbl: TextConst ENU = 'Credit Memo No.', ESM = 'Nº serie nota crédito', FRC = 'N° de la note de crédit', ENC = 'Credit Memo No.';
        LineAmtAfterInvDiscLbl: TextConst ENU = 'Payment Discount on VAT', ESM = 'Descuento P.P. sobre IVA', FRC = 'Escompte de paiement sur TVA', ENC = 'Payment Discount on Tax';
        LocalCurrencyLbl: TextConst ENU = 'Local Currency', ESM = 'Divisa local', FRC = 'Devise locale', ENC = 'Local Currency';
        PageLbl: TextConst ENU = 'Page', ESM = 'Pág.', FRC = 'Page', ENC = 'Page';
        PaymentTermsDescLbl: TextConst ENU = 'Payment Terms', FRA = 'Modalités de paiement', ESM = 'Términos pago', FRC = 'Modalités de paiement', ENC = 'Payment Terms';
        PaymentMethodDescLbl: TextConst ENU = 'Payment Method', ESM = 'Forma pago', FRC = 'Mode de règlement', ENC = 'Payment Method';
        PostedShipmentDateLbl: TextConst ENU = 'Shipment Date', ESM = 'Fecha envío', FRC = 'Date de livraison', ENC = 'Shipment Date';
        SalesInvLineDiscLbl: TextConst ENU = 'Discount %', ESM = '% Descuento', FRC = '% escompte', ENC = 'Discount %';
        SalesCreditMemoLbl: TextConst ENU = 'Credit Memo', FRA = 'Note de crédit', ESM = 'Nota de crédito', FRC = 'Note de crédit', ENC = 'Credit Memo';
        ShipmentLbl: TextConst ENU = 'Shipment', ESM = 'Envío', FRC = 'Livraison', ENC = 'Shipment';
        ShiptoAddrLbl: TextConst ENU = 'Ship-to Address', ESM = 'Dirección de envío', FRC = 'Adresse de livraison', ENC = 'Ship-to Address';
        ShptMethodDescLbl: TextConst ENU = 'Shipment Method', ESM = 'Método de envío', FRC = 'Méthode de livraison', ENC = 'Shipment Method';
        SubtotalLbl: TextConst ENU = 'Subtotal', ESM = 'Subtotal', FRC = 'Sous-total', ENC = 'Subtotal';
        TotalLbl: TextConst ENU = 'Total', ESM = 'Total', FRC = 'Total', ENC = 'Total';
        VATAmtSpecificationLbl: TextConst ENU = 'Tax Amount Specification', ESM = 'Especificación importe IVA', FRC = 'Spécification du montant de TVA', ENC = 'Tax Amount Specification';
        VATAmtLbl: TextConst ENU = 'Tax Amount', ESM = 'Importe IVA', FRC = 'Montant TVA', ENC = 'Tax Amount';
        VATAmountLCYLbl: TextConst ENU = 'Tax Amount ($)', ESM = 'Importe IVA ($)', FRC = 'Montant TVA $', ENC = 'Tax Amount ($)';
        VATBaseLbl: TextConst ENU = 'Tax Base', ESM = 'Base IVA', FRC = 'Base de TVA', ENC = 'Tax Base';
        VATBaseLCYLbl: TextConst ENU = 'Tax Base ($)', ESM = 'Base IVA ($)', FRC = 'Base TVA ($)', ENC = 'Tax Base ($)';
        VATClausesLbl: TextConst ENU = 'Tax Clause', ESM = 'Cláusula de IVA', FRC = 'Clause TVA', ENC = 'Tax Clause';
        VATIdentifierLbl: TextConst ENU = 'Tax Identifier', ESM = 'Identific. IVA', FRC = 'Identificateur de TVA', ENC = 'Tax Identifier';
        VATPercentageLbl: TextConst ENU = 'Tax %', ESM = '% IVA', FRC = '% TVA', ENC = 'Tax %';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        TempBlobCompanyLogo: Record "TempBlob" temporary;
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record "Customer";
        RespCenter: Record "Responsibility Center";
        Language: Record "Language";
        VATClause: Record "VAT Clause";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit "SegManagement";
        CustAddr: array[8] of Text[90];
        ShipToAddr: array[8] of Text[90];
        CompanyAddr: array[8] of Text[90];
        SalesPersonText: Text[30];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        LineDiscountPctText: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        MoreLines: Boolean;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        LogInteraction: Boolean;
        SalesPrepCreditMemoNoLbl: TextConst ENU = 'Sales - Prepmt. Credit Memo %1', ESM = 'Ventas - Nota crédito anticipo %1', FRC = 'Ventes - Note crédit %1 pour paiem. ant.', ENC = 'Sales - Prepmt. Credit Memo %1';
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        DisplayShipmentInformation: Boolean;
        CompanyLogoPosition: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        ExchangeRateTxt: TextConst Comment = '%1 and %2 are both amounts.', ENU = 'Exchange rate: %1/%2', ESM = 'Tipo cambio: %1/%2', FRC = 'Taux de change : %1/%2', ENC = 'Exchange rate: %1/%2';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        AppliesToText: Text;
        AppliesToTextLbl: TextConst ENU = 'Applies to Document', ESM = 'Se aplica al documento', FRC = 'Document lettrage', ENC = 'Applies to Document';
        NoFilterSetErr: TextConst ENU = 'You must specify one or more filters to avoid accidently printing all documents.', ESM = 'Debe especificar uno o más filtros para evitar que se impriman accidentalmente todos los documentos.', FRC = 'Vous devez spécifier un ou plusieurs filtres pour éviter d''imprimer accidentellement tous les documents.', ENC = 'You must specify one or more filters to avoid accidently printing all documents.';
        GreetingLbl: TextConst ENU = 'Hello', ESM = 'Hola', FRC = 'Bonjour', ENC = 'Hello';
        ClosingLbl: TextConst ENU = 'Sincerely', ESM = 'Un saludo,', FRC = 'Cordialement', ENC = 'Sincerely';
        BodyLbl: TextConst ENU = 'Thank you for your business. Your credit memo is attached to this message.', ESM = 'Gracias por confiar en nosotros. Su nota de crédito está adjunto a este mensaje.', FRC = 'Merci pour votre transaction. Votre note de crédit est jointe au présent message.', ENC = 'Thank you for your business. Your credit memo is attached to this message.';
        AmtSubjecttoSalesTaxLbl: TextConst ENU = 'Amount Subject to Sales Tax', ESM = 'Importe sujeto a impuestos de ventas', FRC = 'Montant assujetti à la taxe de vente', ENC = 'Amount Subject to Sales Tax';
        AmtExemptfromSalesTaxLbl: TextConst ENU = 'Amount Exempt from Sales Tax', ESM = 'Importe exento de impuestos de ventas', FRC = 'Montant exonéré de la taxe de vente', ENC = 'Amount Exempt from Sales Tax';
        TotalTaxLbl: TextConst ENU = 'Total Tax', ESM = 'Total impto.', FRC = 'Taxe totale', ENC = 'Total Tax';
        CustomerPONumberLbl: TextConst ENU = 'Customer PO No.', ESM = 'Su/Ntra. ref.', FRC = 'N° bon de commande client', ENC = 'Customer PO No.';
        UnitLbl: TextConst ENU = 'Unit', FRA = 'Unité', ESM = 'Unidad', FRC = 'Unité', ENC = 'Unit';
        UnitPriceLbl: TextConst ENU = 'Unit Price', FRA = 'Prix unitaire', ESM = 'Precio unitario', FRC = 'Prix unitaire', ENC = 'Unit Price';
        LineAmountLbl: TextConst ENU = 'Amount', FRA = 'Montant', ESM = 'Importe', FRC = 'Montant', ENC = 'Amount';
        SalespersonLbl2: TextConst ENU = 'Salesperson', ESM = 'Vendedor', FRC = 'Représentant', ENC = 'Salesperson';
        CompanyGSTNo: Text;
        CompanyQSTNo: Text;
        LineAmountByDesc: Decimal;
        ContactTitle: Text;
        TitleLbl: TextConst ENU = 'Title:', FRA = 'Titre:', FRC = 'Titre:', ENC = 'Title:';
        BillToLbl: TextConst ENU = 'For the attention of:', FRA = 'À l''attention de:', FRC = 'À l''attention de:', ENC = 'For the attention of:';
        GSTNoLbl: TextConst ENU = 'GST No', FRA = 'No TPS', FRC = 'No TPS', ENC = 'GST No';
        QSTNoLbl: TextConst ENU = 'QST No', FRA = 'No TVQ', FRC = 'No TVQ', ENC = 'QST No';
        BillToAddrLbl: TextConst ENU = 'Bill-To Address', FRC = 'Adresse de Facturation', ENC = 'Bill-To Address';

    local procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
    end;

    local procedure InitializeSalesShipmentLine(): Date;
    var
        ReturnReceiptHeader: Record "Return Receipt Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer";
    begin
        IF Line."Return Receipt No." <> '' THEN
            IF ReturnReceiptHeader.GET(Line."Return Receipt No.") THEN
                EXIT(ReturnReceiptHeader."Posting Date");
        IF Header."Return Order No." = '' THEN
            EXIT(Header."Posting Date");
        IF Line.Type = Line.Type::" " THEN
            EXIT(0D);

        ShipmentLine.GetLinesForSalesCreditMemoLine(Line, Header);

        ShipmentLine.RESET;
        ShipmentLine.SETRANGE("Line No.", Line."Line No.");
        IF ShipmentLine.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := ShipmentLine;
            IF NOT DisplayShipmentInformation THEN
                IF ShipmentLine.NEXT = 0 THEN BEGIN
                    ShipmentLine.GET(
                      SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                    ShipmentLine.DELETE;
                    EXIT(SalesShipmentBuffer2."Posting Date");
                END;
            ShipmentLine.CALCSUMS(Quantity);
            IF ShipmentLine.Quantity <> Line.Quantity THEN BEGIN
                ShipmentLine.DELETEALL;
                EXIT(Header."Posting Date");
            END;
        END;
        EXIT(Header."Posting Date");
    end;

    local procedure IsReportInPreviewMode(): Boolean;
    var
        MailManagement: Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        IF Header."Prepayment Credit Memo" THEN
            EXIT(SalesPrepCreditMemoNoLbl);
        EXIT(SalesCreditMemoNoLbl);
    end;

    [Scope('Personalization')]
    procedure InitializeRequest(NewLogInteraction: Boolean; DisplayAsmInfo: Boolean);
    begin
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    local procedure CreateReportTotalLines();
    var
        TempSalesTaxAmountLine: Record "Sales Tax Amount Line" temporary;
        TaxArea: Record "Tax Area";
    begin
        ReportTotalsLine.DELETEALL;
        IF Header."Tax Area Code" <> '' THEN
            IF TaxArea.GET(Header."Tax Area Code") THEN;
        IF (Header."Tax Area Code" = '') OR (TaxArea."Country/Region" = TaxArea."Country/Region"::US) THEN BEGIN
            CreateUSReportTotalLines;
            EXIT;
        END;

        IF (TotalInvDiscAmount <> 0) OR (TotalAmountVAT <> 0) THEN
            ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, TRUE, FALSE, FALSE);
        IF TotalInvDiscAmount <> 0 THEN BEGIN
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, FALSE, FALSE, FALSE);
            IF TotalAmountVAT <> 0 THEN
                ReportTotalsLine.Add(TotalExclVATText, TotalAmount, TRUE, FALSE, FALSE);
        END;
        IF TotalAmountVAT <> 0 THEN BEGIN
            GetTaxSummarizedLines(TempSalesTaxAmountLine);
            TempSalesTaxAmountLine.SETCURRENTKEY("Print Order");
            TempSalesTaxAmountLine.ASCENDING(TRUE);
            IF TempSalesTaxAmountLine.FINDSET THEN
                REPEAT
                    ReportTotalsLine.Add(TempSalesTaxAmountLine."Print Description", TempSalesTaxAmountLine."Tax Amount", FALSE, TRUE, FALSE);
                UNTIL TempSalesTaxAmountLine.NEXT = 0;
        END;
    end;

    local procedure FormatAddressFields(var SalesCrMemoHeader: Record "Sales Cr.Memo Header");
    begin
        FormatAddr.GetCompanyAddr(SalesCrMemoHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesCrMemoBillTo(CustAddr, SalesCrMemoHeader);
        ShowShippingAddr := FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, SalesCrMemoHeader);
    end;

    local procedure FormatDocumentFields(SalesCrMemoHeader: Record "Sales Cr.Memo Header");
    begin
        WITH SalesCrMemoHeader DO BEGIN
            FormatDocument.SetTotalLabels("Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetSalesPerson(SalespersonPurchaser, "Salesperson Code", SalesPersonText);
            FormatDocument.SetPaymentTerms(PaymentTerms, "Payment Terms Code", "Language Code");
            FormatDocument.SetPaymentMethod(PaymentMethod, "Payment Method Code", "Language Code");
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");

            AppliesToText :=
              FormatDocument.SetText("Applies-to Doc. No." <> '', STRSUBSTNO('%1 %2', FORMAT("Applies-to Doc. Type"), "Applies-to Doc. No."));
        END;
    end;

    local procedure CreateUSReportTotalLines();
    begin
        ReportTotalsLine.DELETEALL;
        ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, TRUE, FALSE, FALSE);
        ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, FALSE, FALSE, FALSE);
        ReportTotalsLine.Add(TotalTaxLbl, TotalAmountVAT, FALSE, TRUE, FALSE);
    end;

    local procedure GetTaxSummarizedLines(var TempSalesTaxAmountLine: Record "Sales Tax Amount Line" temporary);
    var
        TaxArea: Record "Tax Area";
        SalesTaxCalculate: Codeunit "Sales Tax Calculate";
    begin
        IF NOT TaxArea.GET(Header."Tax Area Code") THEN
            EXIT;
        TempSalesTaxAmountLine.DELETEALL;
        SalesTaxCalculate.StartSalesTaxCalculation;
        IF TaxArea."Use External Tax Engine" THEN
            SalesTaxCalculate.CallExternalTaxEngineForDoc(DATABASE::"Sales Invoice Header", 0, Header."No.")
        ELSE BEGIN
            SalesTaxCalculate.AddSalesCrMemoLines(Header."No.");
            SalesTaxCalculate.EndSalesTaxCalculation(Header."Posting Date");
        END;
        SalesTaxCalculate.GetSalesTaxAmountLineTable(TempSalesTaxAmountLine);
        SalesTaxCalculate.GetSummarizedSalesTaxTable(TempSalesTaxAmountLine);
    end;
}

