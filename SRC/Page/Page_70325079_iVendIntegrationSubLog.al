page 70325079 "iVend Integration Sub Log"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    //UsageCategory = Documents;
    //ApplicationArea = all;
    SourceTable = "iVendIntegration Sub Log";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Integration Key';
                    ApplicationArea = All;
                }
                field("Table No."; Rec."Table No.")
                {
                    ApplicationArea = All;
                }
                field("Source Type"; Rec."Source Type")
                {
                    ApplicationArea = All;
                }
                field("Source Key"; Rec."Source Key")
                {
                    Caption = 'Source Key';
                    ApplicationArea = All;
                }
                field(DataLine; Rec."DataLine")
                {
                    Caption = 'Data Line';
                    ApplicationArea = All;
                }
                field("Integration Log Entry No."; Rec."Integration Log Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Integration Type"; Rec."Integration Type")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec."Status")
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

