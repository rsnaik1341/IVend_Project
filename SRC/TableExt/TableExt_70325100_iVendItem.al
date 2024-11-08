// tableextension 70325100 "iVendItem" extends Item //27
// {
//     // version NAVW114.00,CitiXsysiVend2.00

//     // CitiXsysiVend2.00  Navision/iVend Integration  0=Insert,1=Modify,2=Soft Delete,3=Hard Delete,4=Rename
//     fields
//     {


//         //Unsupported feature: Code Modification on ""Item Tracking Code"(Field 6500).OnValidate".

//         //trigger OnValidate()
//         //Parameters and return type have not been exported.
//         //>>>> ORIGINAL CODE:
//         //begin
//         /*
//         if "Item Tracking Code" <> '' then
//           TestField(Type,Type::Inventory);
//         if "Item Tracking Code" = xRec."Item Tracking Code" then
//         #4..28
//         end;

//         TestNoOpenDocumentsWithTrackingExist;
//         */
//         //end;
//         //>>>> MODIFIED CODE:
//         //begin
//         /*
//         #1..31

//         //CitiXsysiVend2.00 -
//         if ItemTrackingCode."SN Specific Tracking" then begin
//           TestField(CXS_AllowFractionalQuantity,false);
//           TestField(CXS_IsWeight,false);
//         end;
//         //CitiXsysiVend2.00 +
//         */
//         //end;
//         field(70325075; "iVendCXS_IsNonStock"; Boolean)
//         {
//             Caption = 'Is Non Stock';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325076; "iVendCXS_NSPO"; Boolean)
//         {
//             Caption = 'Not Saleable On POS';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325077; "iVendCXS_IsTaxExempt"; Boolean)
//         {
//             Caption = 'Is Tax Exempt';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325078; "iVendCXS_IsPurchasable"; Boolean)
//         {
//             Caption = 'Is Purchasable';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325079; "iVendCXS_Status"; Option)
//         {
//             Caption = 'Integration Status';
//             Description = 'CitiXsysiVend2.00';
//             OptionCaption = 'New,Certified';
//             OptionMembers = New,Certified;
//             DataClassification = CustomerContent;
//         }
//         field(70325080; "iVendCXS_IsZeroValue"; Boolean)
//         {
//             Caption = 'Is Zero Value';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325081; "iVendCXS_UPC"; Text[100])
//         {
//             Caption = 'UPC';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325082; "iVendCXS_AllowFractionalQty"; Boolean)
//         {
//             Caption = 'Allow Fractional Quantity';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325083; "iVendCXS_IsGiftCertificate"; Boolean)
//         {
//             Caption = 'Is Gift Certificate';
//             Description = 'CitiXsysiVend2.00';
//             Editable = false;
//             DataClassification = CustomerContent;
//         }
//         field(70325084; "iVendCXS_IsWeight"; Boolean)
//         {
//             Caption = 'Is Weight';
//             Description = 'CitiXsysiVend2.00';
//             DataClassification = CustomerContent;
//         }
//         field(70325085; "iVendCXS_SourceKey"; BigInteger)
//         {
//             Caption = 'Source Key';
//             Description = 'CitiXsysiVend2.00';
//             Editable = false;
//             DataClassification = CustomerContent;
//             ObsoleteState = Removed;
//             ObsoleteReason = 'Data Type Changed.';
//         }
//         field(70325086; "iVendCXS_Variant Framewrk Code"; Code[20])
//         {
//             Caption = 'Variant Framework Code';
//             Description = 'CitiXsysiVend2.00';
//             TableRelation = "iVendVariant Framework Setup"."Framework Code";
//             DataClassification = CustomerContent;

//             trigger OnValidate()
//             var
//                 NavIvendIntMgmt: Codeunit "iVendNavIVend Integration Mgmt";
//             begin
//             end;
//         }

//         //field added for the iVend Hospitality Addon
//         field(70325087; iVendIsDynamicAssembly; Boolean)
//         {
//             Caption = 'Dynamic Assembly';
//             DataClassification = CustomerContent;
//         }
//         field(70325088; "iVendCXS_SourceKeyN"; text[50])
//         {
//             Caption = 'Source Key';
//             Description = 'CitiXsysiVend2.00';
//             Editable = false;
//             DataClassification = CustomerContent;
//         }

//         field(70325099; iVendhosmod; Boolean)
//         {
//             Caption = 'HasModifier';
//             DataClassification = CustomerContent;
//         }



//     }

//     //Unsupported feature: Property Modification (Attributes) on "DeleteRelatedData(PROCEDURE 12)".


//     //Unsupported feature: Property Modification (Attributes) on "AssistEdit(PROCEDURE 2)".


//     //Unsupported feature: Property Modification (Attributes) on "FindItemVend(PROCEDURE 5)".


//     //Unsupported feature: Property Modification (Attributes) on "ValidateShortcutDimCode(PROCEDURE 8)".


//     //Unsupported feature: Property Modification (Attributes) on "TestNoEntriesExist(PROCEDURE 1006)".


//     //Unsupported feature: Property Modification (Attributes) on "TestNoOpenEntriesExist(PROCEDURE 4)".


//     //Unsupported feature: Property Modification (Attributes) on "TestNoOpenDocumentsWithTrackingExist(PROCEDURE 42)".


//     //Unsupported feature: Property Modification (Attributes) on "ItemSKUGet(PROCEDURE 11)".


//     //Unsupported feature: Property Modification (Attributes) on "GetInvtSetup(PROCEDURE 14)".


//     //Unsupported feature: Property Modification (Attributes) on "IsMfgItem(PROCEDURE 1)".


//     //Unsupported feature: Property Modification (Attributes) on "IsAssemblyItem(PROCEDURE 24)".


//     //Unsupported feature: Property Modification (Attributes) on "HasBOM(PROCEDURE 18)".


//     //Unsupported feature: Property Modification (Attributes) on "GetGLSetup(PROCEDURE 6)".


//     //Unsupported feature: Property Modification (Attributes) on "ProdOrderExist(PROCEDURE 7)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckSerialNoQty(PROCEDURE 15)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckForProductionOutput(PROCEDURE 17)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckBlockedByApplWorksheet(PROCEDURE 19)".


//     //Unsupported feature: Property Modification (Attributes) on "ShowTimelineFromItem(PROCEDURE 20)".


//     //Unsupported feature: Property Modification (Attributes) on "ShowTimelineFromSKU(PROCEDURE 21)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckJournalsAndWorksheets(PROCEDURE 22)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckItemJnlLine(PROCEDURE 44)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckStdCostWksh(PROCEDURE 45)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckReqLine(PROCEDURE 46)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckDocuments(PROCEDURE 23)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckBOM(PROCEDURE 25)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckPurchLine(PROCEDURE 26)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckSalesLine(PROCEDURE 28)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckProdOrderLine(PROCEDURE 39)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckProdOrderCompLine(PROCEDURE 31)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckPlanningCompLine(PROCEDURE 38)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckTransLine(PROCEDURE 37)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckServLine(PROCEDURE 36)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckProdBOMLine(PROCEDURE 30)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckServContractLine(PROCEDURE 35)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckAsmHeader(PROCEDURE 32)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckAsmLine(PROCEDURE 27)".


//     //Unsupported feature: Property Modification (Attributes) on "PreventNegativeInventory(PROCEDURE 33)".


//     //Unsupported feature: Property Modification (Attributes) on "CheckJobPlanningLine(PROCEDURE 34)".


//     //Unsupported feature: Property Modification (Attributes) on "CalcVAT(PROCEDURE 40)".


//     //Unsupported feature: Property Modification (Attributes) on "CalcUnitPriceExclVAT(PROCEDURE 41)".


//     //Unsupported feature: Property Modification (Attributes) on "GetItemNo(PROCEDURE 10)".


//     //Unsupported feature: Property Modification (Attributes) on "TryGetItemNo(PROCEDURE 9)".


//     //Unsupported feature: Property Modification (Attributes) on "TryGetItemNoOpenCard(PROCEDURE 43)".


//     //Unsupported feature: Property Modification (Attributes) on "CreateNewItem(PROCEDURE 3)".


//     //Unsupported feature: Property Modification (Attributes) on "PickItem(PROCEDURE 51)".


//     //Unsupported feature: Property Modification (Attributes) on "SetLastDateTimeModified(PROCEDURE 16)".


//     //Unsupported feature: Property Modification (Attributes) on "SetLastDateTimeFilter(PROCEDURE 29)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateReplenishmentSystem(PROCEDURE 54)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateUnitOfMeasureId(PROCEDURE 55)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateItemCategoryId(PROCEDURE 63)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateTaxGroupId(PROCEDURE 47)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateUnitOfMeasureCode(PROCEDURE 48)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateTaxGroupCode(PROCEDURE 13)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateItemCategoryCode(PROCEDURE 62)".


//     //Unsupported feature: Property Modification (Attributes) on "UpdateReferencedIds(PROCEDURE 61)".


//     //Unsupported feature: Property Modification (Attributes) on "GetReferencedIds(PROCEDURE 49)".


//     //Unsupported feature: Property Modification (Attributes) on "IsServiceType(PROCEDURE 53)".


//     //Unsupported feature: Property Modification (Attributes) on "IsNonInventoriableType(PROCEDURE 50)".


//     //Unsupported feature: Property Modification (Attributes) on "IsInventoriableType(PROCEDURE 52)".


//     //Unsupported feature: Property Modification (Attributes) on "OnAfterCheckDocuments(PROCEDURE 74)".


//     //Unsupported feature: Property Modification (Attributes) on "OnAfterDeleteRelatedData(PROCEDURE 57)".


//     //Unsupported feature: Property Modification (Attributes) on "OnBeforeValidateStandardCost(PROCEDURE 56)".


//     var
//     //ProductGrp: Record "Product Group"; OA

//     var
//         item: Record Item;
//         CXS_TEXT_002: Label 'This field cannot be modify as entries are already integrated to iVend.';
//         CXS_Text_009: Label 'Please defined Qty Per in Production BOM';
// }

