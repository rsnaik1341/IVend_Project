tableextension 70325097 "iVendCustomer" extends Customer //18
{
    // version NAVW114.00,CitiXsysiVend2.00

    // CitiXsysiVend2.00  Navision/iVend Integration  0=Insert,1=Modify,2=Soft Delete,3=Hard Delete,4=Rename
    fields
    {
        field(70325075; "iVendCXS_Title"; Text[50])
        {
            Caption = 'Title';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325076; "iVendCXS_MobileNo."; Text[50])
        {
            Caption = 'Mobile No.';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325077; "iVendCXS_Gender"; Text[40])
        {
            Caption = 'Gender';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325078; "iVendCXS_Birthdate"; Date)
        {
            Caption = 'Birth Date';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325079; "iVendCXS_AnniversaryDate"; Date)
        {
            Caption = 'Anniversary Date';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }
        field(70325080; "iVendCXS_SourceKey"; BigInteger)
        {
            Caption = 'Source Key';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
            ObsoleteState = Removed;
            ObsoleteReason = 'Data Type Changed to Text';
        }
        //>>OA
        field(70325081; "iVendCXS_RetVATBusPostGroup"; Code[20])
        {
            Caption = 'Retail VAT Bus. Posting Group';
            Description = 'CitiXsysiVend2.00';
            TableRelation = "VAT Business Posting Group".code WHERE(iVendRetail = CONST(true));
            DataClassification = CustomerContent;
        }
        //<<OA

        field(70325082; "iVendCXS_SourceKeyN"; text[50])
        {
            Caption = 'Source Key';
            Description = 'CitiXsysiVend2.00';
            DataClassification = CustomerContent;
        }

        field(70325083; "iVendCXS_Status"; enum iVendMasterStatus)
        {
            Caption = 'Integration Status';
            DataClassification = CustomerContent;
        }

    }

    //Unsupported feature: Property Modification (Attributes) on "AssistEdit(PROCEDURE 2)".


    //Unsupported feature: Property Modification (Attributes) on "ValidateShortcutDimCode(PROCEDURE 29)".


    //Unsupported feature: Property Modification (Attributes) on "ShowContact(PROCEDURE 1)".


    //Unsupported feature: Property Modification (Attributes) on "SetInsertFromContact(PROCEDURE 3)".


    //Unsupported feature: Property Modification (Attributes) on "CheckBlockedCustOnDocs(PROCEDURE 5)".


    //Unsupported feature: Property Modification (Attributes) on "CheckBlockedCustOnJnls(PROCEDURE 7)".


    //Unsupported feature: Property Modification (Attributes) on "CustBlockedErrorMessage(PROCEDURE 4)".


    //Unsupported feature: Property Modification (Attributes) on "CustPrivacyBlockedErrorMessage(PROCEDURE 72)".


    //Unsupported feature: Property Modification (Attributes) on "GetPrivacyBlockedGenericErrorText(PROCEDURE 73)".


    //Unsupported feature: Property Modification (Attributes) on "DisplayMap(PROCEDURE 8)".


    //Unsupported feature: Property Modification (Attributes) on "GetTotalAmountLCY(PROCEDURE 10)".


    //Unsupported feature: Property Modification (Attributes) on "GetTotalAmountLCYUI(PROCEDURE 16)".


    //Unsupported feature: Property Modification (Attributes) on "GetTotalAmountLCYCommon(PROCEDURE 17)".


    //Unsupported feature: Property Modification (Attributes) on "GetSalesLCY(PROCEDURE 13)".


    //Unsupported feature: Property Modification (Attributes) on "CalcAvailableCredit(PROCEDURE 9)".


    //Unsupported feature: Property Modification (Attributes) on "CalcAvailableCreditUI(PROCEDURE 15)".


    //Unsupported feature: Property Modification (Attributes) on "CalcAvailableCreditCommon(PROCEDURE 14)".


    //Unsupported feature: Property Modification (Attributes) on "CalcOverdueBalance(PROCEDURE 11)".


    //Unsupported feature: Property Modification (Attributes) on "GetLegalEntityType(PROCEDURE 6)".


    //Unsupported feature: Property Modification (Attributes) on "GetLegalEntityTypeLbl(PROCEDURE 26)".


    //Unsupported feature: Property Modification (Attributes) on "SetStyle(PROCEDURE 12)".


    //Unsupported feature: Property Modification (Attributes) on "HasValidDDMandate(PROCEDURE 23)".


    //Unsupported feature: Property Modification (Attributes) on "GetReturnRcdNotInvAmountLCY(PROCEDURE 53)".


    //Unsupported feature: Property Modification (Attributes) on "GetInvoicedPrepmtAmountLCY(PROCEDURE 18)".


    //Unsupported feature: Property Modification (Attributes) on "CalcCreditLimitLCYExpendedPct(PROCEDURE 19)".


    //Unsupported feature: Property Modification (Attributes) on "CreateAndShowNewInvoice(PROCEDURE 21)".


    //Unsupported feature: Property Modification (Attributes) on "CreateAndShowNewOrder(PROCEDURE 30)".


    //Unsupported feature: Property Modification (Attributes) on "CreateAndShowNewCreditMemo(PROCEDURE 22)".


    //Unsupported feature: Property Modification (Attributes) on "CreateAndShowNewQuote(PROCEDURE 24)".


    //Unsupported feature: Property Modification (Attributes) on "UpdatePaymentTolerance(PROCEDURE 20)".


    //Unsupported feature: Property Modification (Attributes) on "GetBillToCustomerNo(PROCEDURE 27)".


    //Unsupported feature: Property Modification (Attributes) on "HasAddressIgnoreCountryCode(PROCEDURE 37)".


    //Unsupported feature: Property Modification (Attributes) on "HasAddress(PROCEDURE 25)".


    //Unsupported feature: Property Modification (Attributes) on "HasDifferentAddress(PROCEDURE 49)".


    //Unsupported feature: Property Modification (Attributes) on "GetCustNo(PROCEDURE 44)".


    //Unsupported feature: Property Modification (Attributes) on "GetCustNoOpenCard(PROCEDURE 36)".


    //Unsupported feature: Property Modification (Attributes) on "MarkCustomersWithSimilarName(PROCEDURE 33)".


    //Unsupported feature: Property Modification (Attributes) on "CreateNewCustomer(PROCEDURE 28)".


    //Unsupported feature: Property Modification (Attributes) on "PickCustomer(PROCEDURE 51)".


    //Unsupported feature: Property Modification (Attributes) on "MarkCustomersByFilters(PROCEDURE 42)".


    //Unsupported feature: Property Modification (Attributes) on "OpenCustomerLedgerEntries(PROCEDURE 31)".


    //Unsupported feature: Property Modification (Attributes) on "SetInsertFromTemplate(PROCEDURE 32)".


    //Unsupported feature: Property Modification (Attributes) on "IsLookupRequested(PROCEDURE 34)".


    //Unsupported feature: Property Modification (Attributes) on "IsContactUpdateNeeded(PROCEDURE 48)".


    //Unsupported feature: Property Modification (Attributes) on "IsBlocked(PROCEDURE 52)".


    //Unsupported feature: Property Modification (Attributes) on "HasAnyOpenOrPostedDocuments(PROCEDURE 60)".


    //Unsupported feature: Property Modification (Attributes) on "CopyFromCustomerTemplate(PROCEDURE 63)".


    //Unsupported feature: Property Modification (Attributes) on "CopyContactPicture(PROCEDURE 38)".


    //Unsupported feature: Property Modification (Attributes) on "SetDefaultSalesperson(PROCEDURE 35)".


    //Unsupported feature: Property Modification (Attributes) on "SetLastModifiedDateTime(PROCEDURE 39)".


    //Unsupported feature: Property Modification (Attributes) on "VATRegistrationValidation(PROCEDURE 47)".


    //Unsupported feature: Property Modification (Attributes) on "SetAddress(PROCEDURE 40)".


    //Unsupported feature: Property Modification (Attributes) on "FindByEmail(PROCEDURE 41)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateReferencedIds(PROCEDURE 61)".


    //Unsupported feature: Property Modification (Attributes) on "GetReferencedIds(PROCEDURE 46)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateCurrencyCode(PROCEDURE 54)".


    //Unsupported feature: Property Modification (Attributes) on "UpdatePaymentTermsCode(PROCEDURE 56)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateShipmentMethodCode(PROCEDURE 58)".


    //Unsupported feature: Property Modification (Attributes) on "UpdatePaymentMethodCode(PROCEDURE 43)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateCurrencyId(PROCEDURE 55)".


    //Unsupported feature: Property Modification (Attributes) on "UpdatePaymentTermsId(PROCEDURE 57)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateShipmentMethodId(PROCEDURE 59)".


    //Unsupported feature: Property Modification (Attributes) on "UpdatePaymentMethodId(PROCEDURE 45)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateTaxAreaId(PROCEDURE 1166)".


    //Unsupported feature: Property Modification (Attributes) on "UpdateTaxAreaCode(PROCEDURE 1164)".


    //Unsupported feature: Property Modification (Attributes) on "OnBeforeIsContactUpdateNeeded(PROCEDURE 50)".


    //Unsupported feature: Property Modification (Attributes) on "ValidateSalesPersonCode(PROCEDURE 1900)".


    //Unsupported feature: Property Modification (Attributes) on "OnAfterCopyFromCustomerTemplate(PROCEDURE 64)".


    //Unsupported feature: Property Modification (Attributes) on "OnAfterHasAnyOpenOrPostedDocuments(PROCEDURE 62)".

}

