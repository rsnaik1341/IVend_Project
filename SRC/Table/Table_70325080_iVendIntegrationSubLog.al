table 70325080 "iVendIntegration Sub Log"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    Caption = 'Integration Sub Log';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
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
            Caption = 'Table Name';
            Description = 'Name Of Table';
        }
        field(4; "Source Key"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Source KEY';
            Description = 'Store the value of  Primary Key of Particular Record';
        }
        field(5; DataLine; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'DataLine';
            Description = 'Save Json String/DataLine for mapped Fields';
        }
        field(6; "Integration Log Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Main Event Entry No.';
        }
        field(7; "Integration Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Integration Type';
            Description = 'Whether NAV To IVend/IVend To NAV';
            OptionCaption = 'NAV To iVend,iVend To NAV';
            OptionMembers = "NAV To iVend","iVend To NAV";
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
                if IntegrationSubLog.FindSet then
                    IntegrationSubLog.ModifyAll(Status, Status, false);
            end;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        IntegrationSubLog: Record "iVendIntegration Sub Log";

    procedure GetLastEntryNo() EntryNo: Integer
    begin
        IntegrationSubLog.Reset;
        if IntegrationSubLog.FindLast then
            exit(IntegrationSubLog."Entry No.")
        else
            exit(1);
    end;
}

