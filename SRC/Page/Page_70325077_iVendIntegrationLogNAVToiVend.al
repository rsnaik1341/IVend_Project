page 70325077 "iVendIntegrationLogNAVToiVend"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    Caption = 'Integration Log Microsoft Dynamics BC To iVend';
    DeleteAllowed = false;
    InsertAllowed = false;
    //Editable = false;
    PageType = ListPart;
    //UsageCategory = Documents;
    //ApplicationArea = all;
    SourceTable = "iVendIntegrationLogNAVToiVend";
    SourceTableView = SORTING(Priority)
                      ORDER(Ascending);

    //ContextSensitiveHelpPage = 't_43024003.html';
    layout
    {

        area(content)
        {
            field("Entry No."; Rec."Entry No.")
            {
                ApplicationArea = All;
            }
            field("Table No."; Rec."Table No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Table No. field.', Comment = '%';
            }
            field("Source Key"; Rec."Source Key")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Source Key field.', Comment = '%';
            }
            field("Source Type"; Rec."Source Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Source Type field.', Comment = '%';
            }
            field(Priority; Rec.Priority)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Priority field.', Comment = '%';
            }
            field("Integration Object Type"; Rec."Integration Object Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Integration Object Type field.', Comment = '%';
            }
            field("Operation Type"; Rec."Operation Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Event Type field.', Comment = '%';
            }
            field(JSON; Rec.JSON)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the JSON field.', Comment = '%';
            }
            field("Log Date"; Rec."Log Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Log Date field.', Comment = '%';
            }
            field("Log Time"; Rec."Log Time")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Log Time field.', Comment = '%';
            }
            field(Status; Rec.Status)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Process Status field.', Comment = '%';
            }
            field(MSG; Rec.MSG)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Message field.', Comment = '%';
            }
        }
    }


}

