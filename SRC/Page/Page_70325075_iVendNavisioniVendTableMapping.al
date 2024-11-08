page 70325075 "iVendNavisioniVendTableMapping"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    //DeleteAllowed = false;
    //InsertAllowed = false;
    //ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "iVendNavisioniVendTableMapping";
    //ContextSensitiveHelpPage = 't_43024001.html';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("NAV Table No."; Rec."NAV Table No.")
                {
                    ApplicationArea = All;
                }
                field("NAV Table Name"; Rec."NAV Table Name")
                {
                    ApplicationArea = All;
                }
                field("IVend Table Name"; Rec."IVend Table Name")
                {
                    ApplicationArea = All;
                }
                field("Integration Object Type"; Rec."Integration Object Type")
                {
                    ApplicationArea = All;
                }                
                field(Priority; Rec."Priority")
                {
                    ApplicationArea = All;
                }                
                field(Direction; Rec."Direction")
                {
                    ApplicationArea = All;
                }            
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Field Mapping")
            {
                ApplicationArea = All;
                Caption = 'Field Mapping';
                RunObject = Page "iVendNavisioniVendFieldMapping";
                RunPageLink = "NAV Table No." = FIELD("NAV Table No."),
                              "IVend Table Name" = FIELD("IVend Table Name");
            }            
        }
    }

    var
        // open_xml: Automation; To be Reviewed

        STR: Text[100];
    // [RunOnClient] To be Reviewed
    //process: DotNet Process;To be Reviewed
    // {To be Reviewed
    //     trigger process::OutputDataReceived(sender: Variant; e: DotNet DataReceivedEventArgs)
    //     begin
    //     end;

    //     trigger process::ErrorDataReceived(sender: Variant; e: DotNet DataReceivedEventArgs)
    //     begin
    //     end;

    //     trigger process::Exited(sender: Variant; e: DotNet EventArgs)
    //     begin
    //     end;

    //     trigger process::Disposed(sender: Variant; e: DotNet EventArgs)
    //     begin
    //     end;
    // }To be Reviewed
}

