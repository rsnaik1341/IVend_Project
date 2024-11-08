table 70325076 "iVendNavisioniVendTableMapping"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    //Caption = 'Navision iVend Table Mapping';
    //DrillDownPageID = "iVendNavisioniVendTableMapping";
    //LookupPageID = "iVendNavisioniVendTableMapping";

    fields
    {
        field(1; "NAV Table No."; Integer)
        {
            Caption = 'NAV Table No.';
            TableRelation = AllObj."Object ID";
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Object.Reset;
                Object.SetRange(Object."Object Type", Object."Object Type"::Table);
                Object.SetRange(Object."Object ID", "NAV Table No.");
                if Object.FindFirst then
                    "NAV Table Name" := Object."Object Name";
            end;
        }
        field(2; "NAV Table Name"; Text[30])
        {
            Caption = 'NAV Table Name';
            Editable = true;
            DataClassification = CustomerContent;
        }
        field(3; "IVend Table Name"; Text[30])
        {
            Caption = 'iVend Table Name';
            DataClassification = CustomerContent;
        }
        field(4; "Integration Object Type"; Option)
        {
            Caption = 'Integration Object Type';
            OptionCaption = ' ,Master,Transaction';
            OptionMembers = " ",Master,Transaction;
            DataClassification = CustomerContent;
        }
        // field(5; "Save Method"; Text[80])
        // {
        //     Caption = 'Save Method';
        //     DataClassification = CustomerContent;
        // }
        // field(6; "Delete Method"; Text[80])
        // {
        //     Caption = 'Delete Method';
        //     DataClassification = CustomerContent;
        // }
        field(7; Priority; Integer)
        {
            Caption = 'Priority';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                //"Priority Override" := Priority;
            end;
        }
        // field(8; "Priority Override"; Integer)
        // {
        //     Caption = 'Priority Override';
        //     DataClassification = CustomerContent;
        // }
        // field(9; "IVend Key"; Text[100])
        // {
        //     Caption = 'iVend Key';
        //     DataClassification = CustomerContent;
        //     Description = 'Enter Navision Fields, which will pass in delete method. Use comma if key is a combination of more than 1 field';
        // }
        field(10; Direction; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Direction';
            OptionCaption = 'Bidirectional,NAV To iVend,iVend To NAV';
            OptionMembers = Bidirectional,"NAV To iVend","iVend To NAV";
        }
        // field(11; "Conditional Mapping"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Conditional Mapping';
        //     Editable = false;
        // }
        // field(12; "Is IVend Table Collection"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Is iVend Table Collection';
        //     Description = 'Tracking of {/[ bracket in Json String';
        // }
        // field(13; "System Alert"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'System Alert';
        // }
        // field(14; "User Defined Alert"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'User Defined Alert';

        //     trigger OnValidate()
        //     begin
        //         if "User Defined Alert" then begin
        //             if Confirm(CXS_Text001) then begin
        //                 if User.FindSet then
        //                     repeat
        //                         UserAlertSetup.Init;
        //                         UserAlertSetup."User ID" := User."User Name";
        //                         UserAlertSetup."Table No." := "NAV Table No.";
        //                         UserAlertSetup."IVend Table Name" := "IVend Table Name";
        //                         UserAlertSetup.Validate(Alert, true);
        //                         UserAlertSetup.Insert;
        //                     until User.Next = 0;
        //             end else begin
        //                 UserAlertSetup.Reset;
        //                 UserAlertSetup.SetRange("Table No.", "NAV Table No.");
        //                 UserAlertSetupPage.SetTableView(UserAlertSetup);
        //                 UserAlertSetupPage.SetIVendTable("IVend Table Name");
        //                 UserAlertSetupPage.Run;
        //             end;
        //         end else begin
        //             UserAlertSetup.Reset;
        //             UserAlertSetup.SetRange("Table No.", "NAV Table No.");
        //             UserAlertSetup.DeleteAll;

        //             UserWiseAlertEntries.Reset;
        //             UserWiseAlertEntries.SetRange("Table No.", "NAV Table No.");
        //             UserWiseAlertEntries.DeleteAll;
        //         end;
        //     end;
        // }
        // field(15; "Get Method"; Text[80])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Get Method';
        // }
        // field(16; "JSON Merge Required"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'JSON Merge Required';
        // }
        // field(17; "Is IVend UDT"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Editable = false;
        // }
        // field(18; "Is UDF Master"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Description = 'Whether selected table is applicable for master UDF integration';
        // }
        // field(19; "iVend UDT Table Name"; Text[30])
        // {
        //     DataClassification = CustomerContent;
        //     Editable = false;
        // }
        // field(20; "Integration UDT Type"; Option)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Integration Type';
        //     Editable = true;
        //     OptionCaption = ' ,iVend Standard Object - NAV Custom Table,iVend User Defined Table - NAV Standard Table,iVend User Defined Table - NAV Custom Table';
        //     OptionMembers = " ","iVend Standard Object - NAV Custom Table","iVend User Defined Table - NAV Standard Table","iVend User Defined Table - NAV Custom Table";
        // }
        // field(100; "Is Object Type Required"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        // }
    }

    keys
    {
        //key(Key1; "NAV Table No.", "IVend Table Name")
        key(Key1; "NAV Table No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "NAV Table No.", "NAV Table Name", "IVend Table Name")
        {
        }
    }

    var
        "Object": Record AllObj;
        // UserAlertSetup: Record "iVendUser Alert Setup";
        // CXS_Text001: Label 'Do you want to setup for all the users?';
        // User: Record User;
        // UserAlertSetupPage: Page "iVendUser Alert Setup";
        // UserWiseAlertEntries: Record "iVendUser Alert Entry";
}

