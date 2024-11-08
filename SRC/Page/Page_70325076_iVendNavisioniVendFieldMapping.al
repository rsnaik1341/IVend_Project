page 70325076 "iVendNavisioniVendFieldMapping"
{
    // version CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration

    //DeleteAllowed = false;
    //InsertAllowed = false;
    //ModifyAllowed = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = all;
    SourceTable = "iVendNavisioniVendFieldMapping";
    SourceTableView = SORTING("NAV Table No.")
                      ORDER(Ascending);

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
                field("NAV Field Name"; Rec."NAV Field Name")
                {
                    ApplicationArea = All;
                }
                field("IVend Table Name"; Rec."IVend Table Name")
                {
                    ApplicationArea = All;
                }
                field("IVend API Field Name"; Rec."IVend API Field Name")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    
            
}

