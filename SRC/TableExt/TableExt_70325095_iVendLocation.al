tableextension 70325095 "iVendLocation" extends Location //14
{
    // version NAVW114.00,CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration
    fields
    {
        field(70325075; "iVendCXS_Retail Store"; Boolean)
        {
            Caption = 'Retail';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325076; "iVendCXS_DC For Retail"; Boolean)
        {
            Caption = 'Distribution Center for Retail';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325077; "iVendCXS_Warehouse Type"; Option)
        {
            Caption = 'Warehouse Type';
            Description = 'CitiXsysiVend2.00';
            OptionCaption = 'General,Retail,InTransit';
            OptionMembers = General,Retail,InTransit;
            DataClassification = CustomerContent;
        }
        field(70325078; "iVendCXS_OwnershipType"; Option)
        {
            Caption = 'OwnerShip Type';
            Description = 'CitiXsysiVend2.00 This field value will tell the information about the Store Location.';
            OptionCaption = 'CompanyOwnedCompanyOperated,CompanyOwnedDistributorOperated,DistributorOwnedDistributorOperated';
            OptionMembers = CompanyOwnedCompanyOperated,CompanyOwnedDistributorOperated,DistributorOwnedDistributorOperated;
            DataClassification = CustomerContent;
        }
        field(70325079; "iVendCXS_CashAccount"; Code[20])
        {
            Caption = 'Cash Account';
            Description = 'CitiXsysiVend2.00 Cash Account will be picked from this field for posting all the Journal entries for this location. For eg. Cash used as mode of payment on POS.';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325080; "iVendCXS_CheckReceivedAccount"; Code[20])
        {
            Caption = 'Check Received Account';
            Description = 'CitiXsysiVend2.00 Check Account will be picked from this field for posting all the Journal entries for this location. For eg. Check used as mode of payment on POS.';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325081; "iVendCXS_ExpenseAccount"; Code[20])
        {
            Caption = 'Expense Account';
            Description = 'CitiXsysiVend2.00 Expense Account will be picked from this field for posting all the Journal entries for this location.';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325082; "iVendCXS_TenderVariance"; Code[20])
        {
            Caption = 'Tender Variance';
            Description = 'CitiXsysiVend2.00 Tender Variance Account will be picked from this field for posting all the Journal entries for this location.';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325083; "iVendCXS_HouseBank"; Code[20])
        {
            Caption = 'House Bank';
            Description = 'CitiXsysiVend2.00';
            TableRelation = "Bank Account"."No.";
            DataClassification = CustomerContent;
        }
        field(70325084; "iVendCXS_Dimension Type 1"; Code[20])
        {
            Caption = 'Dimension Type 1';
            Description = 'CitiXsysiVend2.00 Dimensions type 1 are available for use through out the transaction which will flow from iVend to NAV.Dimension Code 1 defined will be used on entries in journals and documents for this Location';
            TableRelation = Dimension.Code;
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "iVendCXS_Dimension Value 1" <> '' then
                    "iVendCXS_Dimension Value 1" := '';
            end;
        }
        field(70325085; "iVendCXS_Dimension Value 1"; Code[20])
        {
            Caption = 'Dimension Value 1';
            Description = 'CitiXsysiVend2.00 Default dimension value 1 will be used in posting entries in journals and documents for this Location.';
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = FIELD("iVendCXS_Dimension Type 1"));
            DataClassification = CustomerContent;
        }
        field(70325086; "iVendCXS_Dimension Type 2"; Code[20])
        {
            Caption = 'Dimension Type 2';
            Description = 'CitiXsysiVend2.00 Dimensions type 2 are available for use through out the transaction which will flow from iVend to NAV.Dimension Code 1 defined will be used on entries in journals and documents for this Location';
            TableRelation = Dimension.Code;
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "iVendCXS_Dimension Value 2" <> '' then
                    "iVendCXS_Dimension Value 2" := '';
            end;
        }
        field(70325087; "iVendCXS_Dimension Value 2"; Code[20])
        {
            Caption = 'Dimension Value 2';
            Description = 'CitiXsysiVend2.00 Default dimension value 2 will be used in posting entries in journals and documents for this Location.';
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = FIELD("iVendCXS_Dimension Type 2"));
            DataClassification = CustomerContent;
        }
        field(70325088; "iVendCXS_InTransitWarehouse"; Code[20])
        {
            CalcFormula = Lookup("Transfer Route"."In-Transit Code" WHERE("Transfer-to Code" = FIELD(Code)));
            Caption = 'In-Transit Warehouse Code';
            Description = 'CitiXsysiVend2.00 In-transit location define for Retail Location will be defined here. This field value will automatically update if TYransfer Route is defined for Retail Location.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70325089; "iVendCXS_Store Id"; Code[20])
        {
            Caption = 'Store Id';
            Description = 'CitiXsysiVend2.00';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(70325090; "iVendCXS_Discount Income A/C"; Code[20])
        {
            Caption = 'Discount Income Account';
            Description = 'CitiXsysiVend2.00 Discount Income A/C will be picked from this field for posting all the Journal entries for this location.';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325091; "iVendCXS_Franchisee CashAcc"; Code[20])
        {
            Caption = 'Franchisee Cash Account';
            Description = 'CitiXsysiVend2.00';
            TableRelation = "G/L Account"."No." WHERE("Account Type" = CONST(Posting),
                                                       "Direct Posting" = CONST(true));
            DataClassification = CustomerContent;
        }
        field(70325092; "iVendCXS_StoreType"; Option)
        {
            Caption = 'CXS_StoreType';
            Description = 'CitiXsysiVend2.00';
            Editable = false;
            OptionCaption = 'RetailStore,eCommerceStore';
            OptionMembers = RetailStore,eCommerceStore;
            DataClassification = CustomerContent;
        }
        field(70325093; "iVendCXS_StopInvAdjstTrx"; Boolean)
        {
            Caption = 'Stop Inv. Adjust. Integration';
            DataClassification = CustomerContent;
        }
    }

    //Unsupported feature: Property Modification (Attributes) on "GetLocationsIncludingUnspecifiedLocation(PROCEDURE 14)".


    procedure iVendCXS_CheckTransferRoute(TransferToLoc: Code[20])
    begin
        //CitiXsysiVend2.00 -
        TransferRoute.Reset;
        TransferRoute.SetRange("Transfer-to Code", TransferToLoc);
        if TransferRoute.FindFirst then begin
            InTransitRoute := TransferRoute."In-Transit Code";
            TransferRoute.Next;
            repeat
                if InTransitRoute <> TransferRoute."In-Transit Code" then
                    Error(CXS_TEXT_005, TransferRoute."Transfer-to Code");
            until TransferRoute.Next = 0;
        end;
        //CitiXsysiVend2.00 +
    end;

    var
        CXS_TEXT_001: Label 'The Value for this field cannot be modify, Do you want to continue ?';
        CXS_TEXT_002: Label 'This field cannot be modify as entries are already integrated to iVend';
        CXS_TEXT_003: Label 'Bin cannot be activated on Retail Store Location';
        TransferRoute: Record "Transfer Route";
        CXS_TEXT_004: Label 'Please define transfer route';
        InTransitRoute: Code[20];
        CXS_TEXT_005: Label 'In-Transit Location should not be different for the same Transfer-To Location %1 in the Transfer Route.';
        CXS_TEXT_006: Label 'Please define transfer route from %1 to %2';
        CXS_TEXT_008: Label 'You cannot modify Use As In-Transit value';
        CXS_TEXT_009: Label 'Update is interrupted';
        CXS_TEXT_010: Label 'Distribution Center for Retail cannot be true, if Use As In-Transit value is true.';
        CXS_TEXT_011: Label 'Warehouse Type cannot be modify';
        CXS_TEXT_012: Label 'Update is interrupted';
}

