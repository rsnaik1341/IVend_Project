// table 70325093 "iVendVariant Framework Setup"
// {
//     // version CitiXsysiVend2.00

//     // CitiXsysiVend2.00  Navision/iVend Integration

//     Caption = 'Variant Framework Setup';
//     LookupPageID = "iVendVariantFramewrkCodesSetup";

//     fields
//     {
//         field(1; "Framework Code"; Code[20])
//         {
//             DataClassification = CustomerContent;
//             Caption = 'Framework Code';
//             NotBlank = true;
//         }
//         field(2; Description; Text[30])
//         {
//             DataClassification = CustomerContent;
//             Caption = 'Description';
//         }
//         field(4; "Item Category Code"; Code[20])
//         {
//             DataClassification = CustomerContent;
//             Caption = 'Item Category Code';
//             TableRelation = "Item Category";
//         }
//         field(5; "Product Group Code"; Code[20])
//         {
//             DataClassification = CustomerContent;
//             Caption = 'Product Group Code';
//             //TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code"));
//             ObsoleteState = Pending;
//             ObsoleteReason = 'Will be removed in Next Major release';
//             ObsoleteTag = '2.8';
//         }
//         field(11; "Variant Suffix/Sequence No."; Code[10])
//         {
//             DataClassification = CustomerContent;
//             Caption = 'Variant Suffix/Sequence No.';
//         }
//     }

//     keys
//     {
//         key(Key1; "Framework Code")
//         {
//         }
//     }

//     fieldgroups
//     {
//     }
// }

