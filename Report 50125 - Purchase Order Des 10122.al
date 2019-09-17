report 50125 "Purchase Order Des 10122"
{
    // version NAVNA13.01

    // //GES.001 - MSL - 20190322 - Ajout contact no, contact title, GSt no, QST no, report language ln 16 et 65
    DefaultLayout = RDLC;
    RDLCLayout = './Purchase Order Des 10122.rdlc';
    UseRequestPage = True;

    CaptionML = ENU = 'Purchase Order',
                ESM = 'Pedido compra',
                FRC = 'Bon de commande',
                ENC = 'Purchase Order';

    Permissions = TableData 38 = rimd;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            //DataItem4458
            DataItemTableView = SORTING ("Document Type", "No.")
                                WHERE ("Document Type" = CONST (Order));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Buy-from Vendor No.", "Pay-to Vendor No.", "No. Printed";
            column(No_PurchaseHeader; "No.")
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING (Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING (Number)
                                        WHERE (Number = CONST (1));
                    column(CompanyAddress1; CompanyAddress[1])
                    {
                    }
                    column(CompanyAddress2; CompanyAddress[2])
                    {
                    }
                    column(CompanyAddress3; CompanyAddress[3])
                    {
                    }
                    column(CompanyAddress4; CompanyAddress[4])
                    {
                    }
                    column(CompanyAddress5; CompanyAddress[5])
                    {
                    }
                    column(CompanyAddress6; CompanyAddress[6])
                    {
                    }
                    column(CopyTxt; CopyTxt)
                    {
                    }
                    column(BuyFromAddress1; BuyFromAddress[1])
                    {
                    }
                    column(BuyFromAddress2; BuyFromAddress[2])
                    {
                    }
                    column(BuyFromAddress3; BuyFromAddress[3])
                    {
                    }
                    column(BuyFromAddress4; BuyFromAddress[4])
                    {
                    }
                    column(BuyFromAddress5; BuyFromAddress[5])
                    {
                    }
                    column(BuyFromAddress6; BuyFromAddress[6])
                    {
                    }
                    column(BuyFromAddress7; BuyFromAddress[7])
                    {
                    }
                    column(ExptRecptDt_PurchaseHeader; "Purchase Header"."Expected Receipt Date")
                    {
                    }
                    column(ShipToAddress1; ShipToAddress[1])
                    {
                    }
                    column(ShipToAddress2; ShipToAddress[2])
                    {
                    }
                    column(ShipToAddress3; ShipToAddress[3])
                    {
                    }
                    column(ShipToAddress4; ShipToAddress[4])
                    {
                    }
                    column(ShipToAddress5; ShipToAddress[5])
                    {
                    }
                    column(ShipToAddress6; ShipToAddress[6])
                    {
                    }
                    column(ShipToAddress7; ShipToAddress[7])
                    {
                    }
                    column(BuyfrVendNo_PurchaseHeader; "Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(YourRef_PurchaseHeader; "Purchase Header"."Your Reference")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No1_PurchaseHeader; "Purchase Header"."No.")
                    {
                    }
                    column(OrderDate_PurchaseHeader; "Purchase Header"."Order Date")
                    {
                    }
                    column(CompanyAddress7; CompanyAddress[7])
                    {
                    }
                    column(CompanyAddress8; CompanyAddress[8])
                    {
                    }
                    column(BuyFromAddress8; BuyFromAddress[8])
                    {
                    }
                    column(ShipToAddress8; ShipToAddress[8])
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(CompanyInformationPhoneNo; CompanyInformation."Phone No.")
                    {
                    }
                    column(CopyNo; CopyNo)
                    {
                    }
                    column(VendTaxIdentificationType; FORMAT(Vend."Tax Identification Type"))
                    {
                    }
                    column(ToCaption; ToCaptionLbl)
                    {
                    }
                    column(ReceiveByCaption; ReceiveByCaptionLbl)
                    {
                    }
                    column(VendorIDCaption; VendorIDCaptionLbl)
                    {
                    }
                    column(ConfirmToCaption; ConfirmToCaptionLbl)
                    {
                    }
                    column(BuyerCaption; BuyerCaptionLbl)
                    {
                    }
                    column(ShipCaption; ShipCaptionLbl)
                    {
                    }
                    column(ToCaption1; ToCaption1Lbl)
                    {
                    }
                    column(PurchOrderCaption; PurchOrderCaptionLbl)
                    {
                    }
                    column(PurchOrderNumCaption; PurchOrderNumCaptionLbl)
                    {
                    }
                    column(PurchOrderDateCaption; PurchOrderDateCaptionLbl)
                    {
                    }
                    column(PageCaption; PageCaptionLbl)
                    {
                    }
                    column(ShipViaCaption; ShipViaCaptionLbl)
                    {
                    }
                    column(TermsCaption; TermsCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(TaxIdentTypeCaption; TaxIdentTypeCaptionLbl)
                    {
                    }
                    column(VendorOrderNo_Lbl; VendorOrderNoLbl)
                    {
                    }
                    column(VendorInvoiceNo_Lbl; VendorInvoiceNoLbl)
                    {
                    }
                    column(VendorOrderNo; "Purchase Header"."Vendor Order No.")
                    {
                    }
                    column(VendorInvoiceNo; "Purchase Header"."Vendor Invoice No.")
                    {
                    }
                    column(BuyFromLbl; BuyFromLbl)
                    {
                    }
                    column(ShipToLbl; ShipToLbl)
                    {
                    }
                    column(ContactTitle; ContactTitle)
                    {
                    }
                    column(ContactNo; ContactNo)
                    {
                    }
                    column(TitleLbl; TitleLbl)
                    {
                    }
                    column(GSTNo; GSTNo)
                    {
                    }
                    column(QSTNo; QSTNo)
                    {
                    }
                    column(GSTNoLbl; GSTNoLbl)
                    {
                    }
                    column(QSTNoLbl; QSTNoLbl)
                    {
                    }
                    column(ContactLbl; ContactLbl)
                    {
                    }
                    column(CompanyHomePage; CompanyInformation."Home Page")
                    {
                    }
                    column(CompanyEMail; CompanyInformation."E-Mail")
                    {
                    }
                    column(CompanyPicture; CompanyInformation.Picture)
                    {
                    }
                    column(CompanyPhoneNo; CompanyInformation."Phone No.")
                    {
                    }
                    column(CompanyPhoneNo_Lbl; CompanyInfoPhoneNoLbl)
                    {
                    }
                    column(CompanyFaxNo; CompanyInformation."Fax No.")
                    {
                    }
                    column(CompanyFaxNo_Lbl; CompanyInfoFaxNoLbl)
                    {
                    }
                    column(HomePageLbl; HomePageLbl)
                    {
                    }
                    column(EMailLbl; EMailLbl)
                    {
                    }
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document No." = FIELD ("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING ("Document Type", "Document No.", "Line No.")
                                            WHERE ("Document Type" = CONST (Order));
                        column(AmountExclInvDisc; AmountExclInvDisc)
                        {
                        }
                        column(ItemNumberToPrint; ItemNumberToPrint)
                        {
                        }
                        column(UnitofMeasure_PurchaseLine; "Unit of Measure")
                        {
                        }
                        column(Quantity_PurchaseLine; Quantity)
                        {
                        }
                        column(UnitPriceToPrint; UnitPriceToPrint)
                        {
                            DecimalPlaces = 2 : 5;
                        }
                        column(Description_PurchaseLine; Description)
                        {
                        }
                        column(PrintFooter; PrintFooter)
                        {
                        }
                        column(InvDiscountAmt_PurchaseLine; "Inv. Discount Amount")
                        {
                        }
                        column(TaxAmount; TaxAmount)
                        {
                        }
                        column(LineAmtTaxAmtInvDiscountAmt; "Line Amount" + TaxAmount - "Inv. Discount Amount")
                        {
                        }
                        column(TotalTaxLabel; TotalTaxLabel)
                        {
                        }
                        column(BreakdownTitle; BreakdownTitle)
                        {
                        }
                        column(BreakdownLabel1; BreakdownLabel[1])
                        {
                        }
                        column(BreakdownAmt1; BreakdownAmt[1])
                        {
                        }
                        column(BreakdownLabel2; BreakdownLabel[2])
                        {
                        }
                        column(BreakdownAmt2; BreakdownAmt[2])
                        {
                        }
                        column(BreakdownLabel3; BreakdownLabel[3])
                        {
                        }
                        column(BreakdownAmt3; BreakdownAmt[3])
                        {
                        }
                        column(BreakdownAmt4; BreakdownAmt[4])
                        {
                        }
                        column(BreakdownLabel4; BreakdownLabel[4])
                        {
                        }
                        column(DocumentNo_PurchaseLine; "Document No.")
                        {
                        }
                        column(ItemNoCaption; ItemNoCaptionLbl)
                        {
                        }
                        column(UnitCaption; UnitCaptionLbl)
                        {
                        }
                        column(DescriptionCaption; DescriptionCaptionLbl)
                        {
                        }
                        column(QuantityCaption; QuantityCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(TotalPriceCaption; TotalPriceCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(InvDiscCaption; InvDiscCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }
                        column(LineAmountByDesc; LineAmountByDesc)
                        {
                        }
                        column(QtyByDesc; QtyByDesc)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            OnLineNumber := OnLineNumber + 1;

                            IF ("Purchase Header"."Tax Area Code" <> '') AND NOT UseExternalTaxEngine THEN
                                SalesTaxCalc.AddPurchLine("Purchase Line");

                            IF "Vendor Item No." <> '' THEN
                                ItemNumberToPrint := "Vendor Item No."
                            ELSE
                                ItemNumberToPrint := "No.";

                            IF Type = 0 THEN BEGIN
                                ItemNumberToPrint := '';
                                "Unit of Measure" := '';
                                "Line Amount" := 0;
                                "Inv. Discount Amount" := 0;
                                Quantity := 0;
                            END;

                            AmountExclInvDisc := "Line Amount";

                            IF Quantity = 0 THEN
                                UnitPriceToPrint := 0 // so it won't print
                            ELSE
                                UnitPriceToPrint := ROUND(AmountExclInvDisc / Quantity, 0.00001);

                            IF OnLineNumber = NumberOfLines THEN BEGIN
                                PrintFooter := TRUE;

                                IF "Purchase Header"."Tax Area Code" <> '' THEN BEGIN
                                    IF UseExternalTaxEngine THEN
                                        SalesTaxCalc.CallExternalTaxEngineForPurch("Purchase Header", TRUE)
                                    ELSE
                                        SalesTaxCalc.EndSalesTaxCalculation(UseDate);
                                    SalesTaxCalc.GetSummarizedSalesTaxTable(TempSalesTaxAmtLine);
                                    BrkIdx := 0;
                                    PrevPrintOrder := 0;
                                    PrevTaxPercent := 0;
                                    TaxAmount := 0;
                                    WITH TempSalesTaxAmtLine DO BEGIN
                                        RESET;
                                        SETCURRENTKEY("Print Order", "Tax Area Code for Key", "Tax Jurisdiction Code");
                                        IF FIND('-') THEN
                                            REPEAT
                                                IF ("Print Order" = 0) OR
                                                   ("Print Order" <> PrevPrintOrder) OR
                                                   ("Tax %" <> PrevTaxPercent)
                                                THEN BEGIN
                                                    BrkIdx := BrkIdx + 1;
                                                    IF BrkIdx > 1 THEN BEGIN
                                                        IF TaxArea."Country/Region" = TaxArea."Country/Region"::CA THEN
                                                            BreakdownTitle := Text006
                                                        ELSE
                                                            BreakdownTitle := Text003;
                                                    END;
                                                    IF BrkIdx > ARRAYLEN(BreakdownAmt) THEN BEGIN
                                                        BrkIdx := BrkIdx - 1;
                                                        BreakdownLabel[BrkIdx] := Text004;
                                                    END ELSE
                                                        BreakdownLabel[BrkIdx] := STRSUBSTNO("Print Description", "Tax %");
                                                END;
                                                BreakdownAmt[BrkIdx] := BreakdownAmt[BrkIdx] + "Tax Amount";
                                                TaxAmount := TaxAmount + "Tax Amount";
                                            UNTIL NEXT = 0;
                                    END;
                                    IF BrkIdx = 1 THEN BEGIN
                                        CLEAR(BreakdownLabel);
                                        CLEAR(BreakdownAmt);
                                    END;
                                END;
                            END;

                            //GES.001 Start
                            IF FirstLineHasBeenOutput THEN
                                CLEAR(CompanyInformation.Picture);
                            FirstLineHasBeenOutput := TRUE;
                            LineAmountByDesc := "Purchase Line"."Line Amount";
                            QtyByDesc := "Purchase Line".Quantity;
                            //GES.001 End
                        end;

                        trigger OnPreDataItem();
                        begin
                            //GES.001 ?
                            //CurrReport.CREATETOTALS(AmountExclInvDisc,"Line Amount","Inv. Discount Amount");
                            //GES.001
                            NumberOfLines := COUNT;
                            OnLineNumber := 0;
                            PrintFooter := FALSE;

                            //GES.001 Start
                            FirstLineHasBeenOutput := FALSE;
                            CompanyInformation.Picture := TempBlobCompanyLogo.Blob;
                            LineAmountByDesc := 0;
                            QtyByDesc := 0;
                            //GES.001 End
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    //GES.001 ?
                    //CurrReport.PAGENO := 1;
                    //GES.001

                    IF CopyNo = NoLoops THEN BEGIN
                        IF NOT CurrReport.PREVIEW THEN
                            PurchasePrinted.RUN("Purchase Header");
                        CurrReport.BREAK;
                    END;
                    CopyNo := CopyNo + 1;
                    IF CopyNo = 1 THEN // Original
                        CLEAR(CopyTxt)
                    ELSE
                        CopyTxt := Text000;
                    TaxAmount := 0;

                    CLEAR(BreakdownTitle);
                    CLEAR(BreakdownLabel);
                    CLEAR(BreakdownAmt);
                    TotalTaxLabel := Text008;
                    IF "Purchase Header"."Tax Area Code" <> '' THEN BEGIN
                        TaxArea.GET("Purchase Header"."Tax Area Code");
                        CASE TaxArea."Country/Region" OF
                            TaxArea."Country/Region"::US:
                                TotalTaxLabel := Text005;
                            TaxArea."Country/Region"::CA:
                                TotalTaxLabel := Text007;
                        END;
                        UseExternalTaxEngine := TaxArea."Use External Tax Engine";
                        SalesTaxCalc.StartSalesTaxCalculation;
                    END;
                end;

                trigger OnPreDataItem();
                begin
                    NoLoops := 1 + ABS(NoCopies);
                    IF NoLoops <= 0 THEN
                        NoLoops := 1;
                    CopyNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                IF PrintCompany THEN
                    IF RespCenter.GET("Responsibility Center") THEN BEGIN
                        FormatAddress.RespCenter(CompanyAddress, RespCenter);
                        CompanyInformation."Phone No." := RespCenter."Phone No.";
                        CompanyInformation."Fax No." := RespCenter."Fax No.";
                    END;
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                IF "Purchaser Code" = '' THEN
                    CLEAR(SalesPurchPerson)
                ELSE
                    SalesPurchPerson.GET("Purchaser Code");

                IF "Payment Terms Code" = '' THEN
                    CLEAR(PaymentTerms)
                ELSE
                    PaymentTerms.GET("Payment Terms Code");

                IF "Shipment Method Code" = '' THEN
                    CLEAR(ShipmentMethod)
                ELSE
                    ShipmentMethod.GET("Shipment Method Code");

                FormatAddress.PurchHeaderBuyFrom(BuyFromAddress, "Purchase Header");
                FormatAddress.PurchHeaderShipTo(ShipToAddress, "Purchase Header");

                IF NOT CurrReport.PREVIEW THEN BEGIN
                    IF ArchiveDocument THEN
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    IF LogInteraction THEN BEGIN
                        CALCFIELDS("No. of Archived Versions");
                        SegManagement.LogDocument(
                          13, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Buy-from Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                    END;
                END;

                IF "Posting Date" <> 0D THEN
                    UseDate := "Posting Date"
                ELSE
                    UseDate := WORKDATE;

                //GES.001 - Start
                IF Vend.GET("Purchase Header"."Buy-from Vendor No.") THEN BEGIN
                    ContactNo := Vend."Primary Contact No.";
                    ContactTitle := '';
                    IF Contact.Get(ContactNo) then
                        ContactTitle := Contact.Title;

                    CurrReport.LANGUAGE := Language.GetLanguageID(Vend."Language Code");
                END;
                GSTNo := CompanyInformation."VAT Registration No.";
                QSTNo := CompanyInformation."QST Registration No.";

                //GES.001 - end
            end;

            trigger OnPreDataItem();
            begin
                IF PrintCompany THEN
                    FormatAddress.Company(CompanyAddress, CompanyInformation)
                ELSE
                    CLEAR(CompanyAddress);

                //GES.001 - Start
                ContactNo := '';
                ContactTitle := '';
                GSTNo := '';
                QSTNo := '';
                FirstLineHasBeenOutput := FALSE;
                //GES.001 - End
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
                    field(NumberOfCopies; NoCopies)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Number of Copies',
                                    ESM = 'Número de copias',
                                    FRC = 'Nombre de copies',
                                    ENC = 'Number of Copies';
                    }
                    field(PrintCompanyAddress; PrintCompany)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Print Company Address',
                                    ESM = 'Imprimir dir. empresa',
                                    FRC = 'Imprimer l''adresse de la compagnie',
                                    ENC = 'Print Company Address';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Archive Document',
                                    ESM = 'Archivar documento',
                                    FRC = 'Archiver document',
                                    ENC = 'Archive Document';
                        Enabled = ArchiveDocumentEnable;

                        trigger OnValidate();
                        begin
                            IF NOT ArchiveDocument THEN
                                LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = all;
                        CaptionML = ENU = 'Log Interaction',
                                    ESM = 'Log interacción',
                                    FRC = 'Journal interaction',
                                    ENC = 'Log Interaction';
                        Enabled = LogInteractionEnable;

                        trigger OnValidate();
                        begin
                            IF LogInteraction THEN
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
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
            ArchiveDocumentEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            PrintCompany := True;
            ArchiveDocument := ArchiveManagement.PurchaseDocArchiveGranule;
            LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';

            ArchiveDocumentEnable := ArchiveDocument;
            LogInteractionEnable := LogInteraction;

        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin

        //GES.001 Start
        CompanyInformation.SETAUTOCALCFIELDS(Picture);
        //GES.001 End
    end;

    trigger OnPreReport();
    begin
        CompanyInformation.GET('');

        //GES.001 Start
        TempBlobCompanyLogo.Blob := CompanyInformation.Picture;
        TempBlobCompanyLogo.INSERT;
        //GES.001 End
    end;

    var
        UnitPriceToPrint: Decimal;
        AmountExclInvDisc: Decimal;
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInformation: Record "Company Information";
        RespCenter: Record "Responsibility Center";
        Language: Record "Language";
        TempSalesTaxAmtLine: Record "Sales Tax Amount Line" temporary;
        TaxArea: Record "Tax Area";
        Vend: Record "Vendor";
        CompanyAddress: array[8] of Text[50];
        BuyFromAddress: array[8] of Text[50];
        ShipToAddress: array[8] of Text[50];
        CopyTxt: Text[10];
        ItemNumberToPrint: Text[20];
        PrintCompany: Boolean;
        PrintFooter: Boolean;
        NoCopies: Integer;
        NoLoops: Integer;
        CopyNo: Integer;
        NumberOfLines: Integer;
        OnLineNumber: Integer;
        PurchasePrinted: Codeunit "Purch.Header-Printed";
        FormatAddress: Codeunit "Format Address";
        SalesTaxCalc: Codeunit "Sales Tax Calculate";
        ArchiveManagement: Codeunit "ArchiveManagement";
        SegManagement: Codeunit "SegManagement";
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        TaxAmount: Decimal;
        TotalTaxLabel: Text[30];
        BreakdownTitle: Text[30];
        BreakdownLabel: array[4] of Text[30];
        BreakdownAmt: array[4] of Decimal;
        BrkIdx: Integer;
        PrevPrintOrder: Integer;
        PrevTaxPercent: Decimal;
        UseDate: Date;
        Text000: TextConst ENU = 'COPY', ESM = 'COPIA', FRC = 'COPIER', ENC = 'COPY';
        Text003: TextConst ENU = 'Sales Tax Breakdown:', ESM = 'Análisis impto. vtas.:', FRC = 'Ventilation taxe de vente :', ENC = 'Sales Tax Breakdown:';
        Text004: TextConst ENU = 'Other Taxes', ESM = 'Otros impuestos', FRC = 'Autres taxes', ENC = 'Other Taxes';
        Text005: TextConst ENU = 'Total Sales Tax:', ESM = 'Total impto. vtas.:', FRC = 'Taxes de vente totales:', ENC = 'Total Sales Tax:';
        Text006: TextConst ENU = 'Tax Breakdown:', ESM = 'Desglose imptos.:', FRC = 'Ventilation fiscale :', ENC = 'Tax Breakdown:';
        Text007: TextConst ENU = 'Total Tax:', ESM = 'Total impto.:', FRC = 'Taxe totale :', ENC = 'Total Tax:';
        Text008: TextConst ENU = 'Tax:', ESM = 'Impto.:', FRC = 'Taxe :', ENC = 'Tax:';
        UseExternalTaxEngine: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        ToCaptionLbl: TextConst ENU = 'To:', ESM = 'Para:', FRC = 'À :', ENC = 'To:';
        ReceiveByCaptionLbl: TextConst ENU = 'Receive By', ESM = 'Recibir por', FRC = 'Recevoir par', ENC = 'Receive By';
        VendorIDCaptionLbl: TextConst ENU = 'Vendor ID', ESM = 'Id. proveedor', FRC = 'Code de fournisseur', ENC = 'Vendor ID';
        ConfirmToCaptionLbl: TextConst ENU = 'Confirm To', ESM = 'Confirmar a', FRC = 'Confirmer à', ENC = 'Confirm To';
        BuyerCaptionLbl: TextConst ENU = 'Buyer', FRA = 'Acheteur', ESM = 'Comprador', FRC = 'Acheteur', ENC = 'Buyer';
        ShipCaptionLbl: TextConst ENU = 'Ship-To Address', FRA = 'Adresse de livraison', ESM = 'Enviar', FRC = 'Adresse de livraison', ENC = 'Ship-To Address';
        ToCaption1Lbl: TextConst ENU = 'To:', ESM = 'Para:', FRC = 'À :', ENC = 'To:';
        PurchOrderCaptionLbl: TextConst ENU = 'PURCHASE ORDER', ESM = 'PEDIDO COMPRA', FRC = 'BON DE COMMANDE', ENC = 'PURCHASE ORDER';
        PurchOrderNumCaptionLbl: TextConst ENU = 'Purchase Order Number:', ESM = 'Número pedido compra:', FRC = 'Numéro de bon de commande :', ENC = 'Purchase Order Number:';
        PurchOrderDateCaptionLbl: TextConst ENU = 'Purchase Order Date', ESM = 'Fecha pedido compra:', FRC = 'Date du bon de commande', ENC = 'Purchase Order Date';
        PageCaptionLbl: TextConst ENU = 'Page:', ESM = 'Pág.:', FRC = 'Page :', ENC = 'Page:';
        ShipViaCaptionLbl: TextConst ENU = 'Ship Via', FRA = 'Livrer par', ESM = 'Envío a través de', FRC = 'Livrer par', ENC = 'Ship Via';
        TermsCaptionLbl: TextConst ENU = 'Terms', FRA = 'Terms', ESM = 'Términos', FRC = 'Modalités', ENC = 'Terms';
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ESM = 'Nº teléfono', FRC = 'N° téléphone', ENC = 'Phone No.';
        TaxIdentTypeCaptionLbl: TextConst ENU = 'Tax Ident. Type', ESM = 'Tipo de identificación fiscal', FRC = 'Type ident. taxe', ENC = 'Tax Ident. Type';
        ItemNoCaptionLbl: TextConst ENU = 'Item No.', ESM = 'Nº producto', FRC = 'N° d''article', ENC = 'Item No.';
        UnitCaptionLbl: TextConst ENU = 'Unit', ESM = 'Unidad', FRC = 'Unité', ENC = 'Unit';
        DescriptionCaptionLbl: TextConst ENU = 'Description', ESM = 'Descripción', FRC = 'Description', ENC = 'Description';
        QuantityCaptionLbl: TextConst ENU = 'Quantity', ESM = 'Cantidad', FRC = 'Quantité', ENC = 'Quantity';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ESM = 'Precio unitario', FRC = 'Prix unitaire', ENC = 'Unit Price';
        TotalPriceCaptionLbl: TextConst ENU = 'Total Price', ESM = 'Precio total', FRC = 'Prix total', ENC = 'Total Price';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal:', ESM = 'Subtotal:', FRC = 'Sous-total :', ENC = 'Subtotal:';
        InvDiscCaptionLbl: TextConst ENU = 'Invoice Discount:', ESM = 'Descuento factura:', FRC = 'Escompte de la facture :', ENC = 'Invoice Discount:';
        TotalCaptionLbl: TextConst ENU = 'Total:', ESM = 'Total:', FRC = 'Total :', ENC = 'Total:';
        VendorOrderNoLbl: TextConst ENU = 'Vendor Order No.', FRA = 'N° commande fournisseur', ESM = 'Nº. de pedido de proveedor', FRC = 'N° commande fournisseur', ENC = 'Vendor Order No.';
        VendorInvoiceNoLbl: TextConst ENU = 'Vendor Invoice No.', FRA = 'N° facture fournisseur', ESM = 'Nº. de factura de proveedor', FRC = 'N° facture fournisseur', ENC = 'Vendor Invoice No.';
        ContactTitle: Text;
        ContactNo: Text;
        Contact: Record Contact;
        TitleLbl: TextConst ENU = 'Title:', FRA = 'Titre:', FRC = 'Titre:', ENC = 'Title:';
        GSTNo: Text;
        QSTNo: Text;
        TempBlobCompanyLogo: Record "TempBlob" temporary;
        FirstLineHasBeenOutput: Boolean;
        BuyFromLbl: TextConst ENU = 'Buy-from Address', FRA = 'Adresse du fournisseur', FRC = 'Adresse du fournisseur', ENC = 'Buy-from Address';
        ShipToLbl: TextConst ENU = 'Ship-to Address', FRA = 'Adresse de Livraison', FRC = 'Adresse de Livraison', ENC = 'Ship-to Address';
        DocumentTitleLbl: TextConst ENU = 'Purchase Order', FRA = 'Bon d''achat', FRC = 'Bon d''achat', ENC = 'Purchase Order';
        GSTNoLbl: TextConst ENU = 'GST No', FRA = 'No TPS', FRC = 'No TPS', ENC = 'GST No';
        QSTNoLbl: TextConst ENU = 'QST No', FRA = 'No TVQ', FRC = 'No TVQ', ENC = 'QST No';
        ContactLbl: TextConst ENU = 'For the attention of:', FRA = 'À l''attention de:', FRC = 'À l''attention de:', ENC = 'For the attention of:';
        HomePageLbl: TextConst ENU = 'Home Page', FRA = 'Page d''accueil', ESM = 'Página Web', FRC = 'Page d''accueil', ENC = 'Home Page';
        CompanyInfoPhoneNoLbl: TextConst ENU = 'Phone No', FRA = 'N° téléphone', ESM = 'Nº teléfono', FRC = 'N° téléphone', ENC = 'Phone No';
        CompanyInfoFaxNoLbl: TextConst ENU = 'Fax No: ', FRA = 'N° Fax: ', ESM = 'Nº Fax: ', FRC = 'N° Fax: ', ENC = 'Fax No: ';
        EMailLbl: TextConst ENU = 'Email', FRA = 'Courriel', ESM = 'Correo electrónico', FRC = 'Courriel', ENC = 'Email';
        LineAmountByDesc: Decimal;
        QtyByDesc: Decimal;

}

