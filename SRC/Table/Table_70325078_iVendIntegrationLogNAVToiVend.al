table 70325078 "iVendIntegrationLogNAVToiVend"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    Caption = 'Integration Log Microsoft Dynamics NAV To iVend';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Integration Key';
            Description = 'Primary Key for Pre Action Table';
        }
        field(2; "Table No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Table No.';
            Description = 'Id Of Table';
        }
        field(3; "Source Type"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Source Type';
            Description = 'Name Of Table';
        }
        field(4; "Source Key"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Source Key';
            Description = 'Store the value of  Primary Key of Particular Record';
        }
        field(5; "Operation Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Event Type';
            Description = 'Whether the Event is Insert/Modify/Delete/Rename';
            OptionCaption = 'Insert,Update,Soft Delete,Hard Delete,Rename';
            OptionMembers = Insert,Update,"Soft Delete","Hard Delete",Rename;
        }
        field(6; "Log Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Log Date';
            Description = 'Event Log Date';
        }
        field(7; "Log Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Log Time';
            Description = 'Event Log Time';
        }
        field(8; Status; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Process Status';
            Description = 'Check Whether the Record is Processed & Transfer To IVend';
            OptionCaption = 'Not Processed,Processed,Failed';
            OptionMembers = "Not Processed",Processed,Failed;

            trigger OnValidate()
            begin
                IntegrationSubLog.Reset;
                IntegrationSubLog.SetCurrentKey("Integration Log Entry No.");
                IntegrationSubLog.SetRange("Integration Log Entry No.", "Entry No.");
                if IntegrationSubLog.FindFirst then begin
                    repeat
                        IntegrationSubLog.Status := Status;
                        IntegrationSubLog.Modify;//ALL(Status,Status,FALSE); //Standard Citixsys New Code Changes
                    until IntegrationSubLog.Next = 0;
                end;

                if Status = Status::"Not Processed" then
                    MSG := '';
            end;
        }
        field(9; MSG; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Message';
            Description = 'Message/Error';
        }
        field(10; "Ivend Table Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Priority; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Priority';
            Description = 'Priority Sequence';
        }
        field(12; "Integration Object Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Integration Object Type';
            Description = 'Whether Master or Transaction';
            OptionCaption = ' ,Master,Transaction';
            OptionMembers = " ",Master,Transaction;
        }
        field(13; "Process Date Time"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Process Date Time';
            Description = 'Update Actual Date Time of Data insertion in IVend';
            Editable = false;
        }
        // field(14; Retry; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Retry';
        // }
        // field(15; "Initialization Entry"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Initialization Entry';
        // }
        // field(16; "Get API URL Address"; Text[250])
        // {
        //     DataClassification = CustomerContent;
        //     Caption = 'Get API URL Address';
        //     Description = 'It will get iVend Json';
        // }
        // field(17; "Is IVend UDT"; Boolean)
        // {
        //     DataClassification = CustomerContent;
        //     Editable = true;
        // }
        // field(18; "UDT Unique ID"; BigInteger)
        // {
        //     DataClassification = CustomerContent;
        //     Editable = false;
        //     ObsoleteState = Removed;
        //     ObsoleteReason = 'Data Type Changed.';
        // }

        // field(19; "UDT Unique IDN"; text[50])
        // {
        //     DataClassification = CustomerContent;
        //     Editable = false;
        // }
        field(20; JSON; Text[2048])
        {
            DataClassification = CustomerContent;
            //Caption = 'DataLine';
            Description = 'Save Json String/DataLine for mapped Fields';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; Priority)
        {
        }
        // key(Key3; Status)
        // {
        // }
        // key(Key4; "Table No.", Status, "Initialization Entry")
        // {
        //     Enabled = false;
        // }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        IntegrationSubLog.Reset;
        IntegrationSubLog.SetCurrentKey("Integration Log Entry No.");
        IntegrationSubLog.SetRange("Integration Log Entry No.", "Entry No.");
        IntegrationSubLog.SetRange("Source Key", "Source Key");
        IntegrationSubLog.SetRange("Integration Type", IntegrationSubLog."Integration Type"::"NAV To iVend");
        if IntegrationSubLog.FindSet then
            IntegrationSubLog.DeleteAll();
    end;

    var
        IntegrationLogNavToIVend: Record "iVendIntegrationLogNAVToiVend";
        IntegrationSubLog: Record "iVendIntegration Sub Log";

    procedure GetLastEntryNo() EntryNo: Integer
    begin
        IntegrationLogNavToIVend.Reset;
        if IntegrationLogNavToIVend.FindLast then
            exit(IntegrationLogNavToIVend."Entry No.")
        else
            exit(1);
    end;
}

