table 70325077 "iVendNavisioniVendFieldMapping"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    // Caption = 'Navision iVend Field Mapping';
    // DrillDownPageID = "iVendNavisioniVendFieldMapping";
    // LookupPageID = "iVendNavisioniVendFieldMapping";

    fields
    {
        field(1; "NAV Table No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'NAV Table No.';
            TableRelation = "iVendNavisioniVendTableMapping"."NAV Table No.";

            trigger OnValidate()
            begin
                NavisionIVendTableMapping.Reset;
                NavisionIVendTableMapping.SetRange("NAV Table No.", "NAV Table No.");
                if NavisionIVendTableMapping.FindFirst then
                    "NAV Table Name" := NavisionIVendTableMapping."NAV Table Name";
            end;
        }
        field(2; "NAV Table Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'NAV Table Name';
            Editable = true;
        }
        field(3; "NAV Field Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'NAV Field Name';

            trigger OnValidate()
            begin
                // if "NAV Field Name" <> '' then
                    Field.Reset;
                    Field.SetRange(Field.TableNo, "NAV Table No.");
                    Field.SetRange(Field.FieldName, "NAV Field Name");
                    if not (Field.FindFirst) then
                        Error('%1 is not Navision field',Rec."NAV Field Name");
            end;
        }
        // field(4; "NAV Field Length"; Integer)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'NAV Field Length';
        // }
        field(5; "IVend Table Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'iVend Table Name';
        }
        field(6; "IVend API Field Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'iVend API Field Name';
        }
        // field(7; "IVend API Field Length"; Integer)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend API Field Length';
        // }
        // field(8; "Is IVend UDF"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Is iVend UDF';
        // }
        // field(9; "IVend Sub-1 API Field Name"; Text[50])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend Sub-1 API Field Name';
        // }
        // field(10; "Is Mandatory"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Is Mandatory';
        // }
        // field(11; "Conditional Mapping"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Conditional Mapping';
        // }
        // field(12; "IVend Default Value"; Text[80])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend Default Value';
        // }
        // field(13; "Is IVend Sub API Collection"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Is iVend Sub API Collection';
        //     Description = 'Tracking of {/[ bracket in Json String based on whether the field is a single record or a collection';
        // }
        // field(14; "IVend Sub-2 API Field Name"; Text[50])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend Sub-2 API Field Name';
        // }
        // field(15; Direction; Option)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Direction';
        //     OptionCaption = 'Bidirectional,NAV To IVend,IVend To NAV';
        //     OptionMembers = Bidirectional,"NAV To IVend","IVend To NAV";
        // }
        // field(16; "Sequence of Execution"; Integer)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Sequence of Execution';
        //     Description = 'Mainly used in transaction where sequence of execution of field is important while entering field value i.e in sales line item code will entered first & then Unit Price will update';
        // }
        // field(17; "IVend Sub-3 API Field Name"; Text[50])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend Sub-3 API Field Name';
        // }
        // field(18; "IVend Sub-4 API Field Name"; Text[50])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'iVend Sub-4 API Field Name';
        // }
        // field(19; "Not NAV Field Name"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Not NAV Field Name';
        //     //Editable = false;
        // }
        // field(20; "Use For Concatenate"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Use For Concatenate';
        //     Description = 'Ivend --> NAV == This field will be used for Concatenate';
        // }
        // field(21; "Concatenate in this field"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Concatenate in this field';
        //     Description = 'IVend --> NAV == Concatenate above field in this field';
        // }
        field(22; "Document Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Type';
            OptionCaption = ' ,Sales Invoice,Sales Order,Sales Credit Memo,Positive Adjmt.,Negative Adjmt.,Payment Agnst SI,Purchase Invoice,Purchase Order,Purchase Return Order,GRPO,SI Agnst SO,Sales Fulfillment,Layaways Fulfillment,GC Expiry,Layaways Sale,Transfer Order,Expense Posting,Transfer Shipment,ProductBuildBreak,Transfer Receipt,Till Variance,Payment,Sales Exchange,Gift Certificates,Layaways Cancel,Surcharge Invoice';
            OptionMembers = " ","Sales Invoice","Sales Order","Sales Credit Memo","Positive Adjmt.","Negative Adjmt.","Payment Agnst SI","Purchase Invoice","Purchase Order","Purchase Return Order",GRPO,"SI Agnst SO","Sales Fulfillment","Layaways Fulfillment","GC Expiry","Layaways Sale","Transfer Order","Expense Posting","Transfer Shipment",ProductBuildBreak,"Transfer Receipt","Till Variance",Payment,"Sales Exchange","Gift Certificates","Layaways Cancel","Surcharge Invoice";
        }
        // field(23; "Is IVend UDT"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Editable = true;
        // }
        // field(24; "Allow UDF_Attribute in Filter"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        // }
    }

    keys
    {
        key(Key1; "NAV Table No.", "NAV Field Name", "IVend API Field Name","Document Type")
        {
        }
        // key(Key2; "NAV Table No.", "IVend API Field Name")
        // {
        // }
        // key(Key3; "NAV Table No.", "Sequence of Execution")
        // {
        // }
    }

    fieldgroups
    {
    }

    var
        NavisionIVendTableMapping: Record "iVendNavisioniVendTableMapping";
        "Field": Record "Field";
}

