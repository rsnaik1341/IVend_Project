codeunit 70325075 "iVendIntegrationLogNAVToIVend"
{
    procedure GenerateIntegrationLogNavToIVend(xRecRef: RecordRef; OperationType: Option Insert,Update,"Soft Delete","Hard Delete",Rename)
    var
        iVendIntegrationLogNAVToiVend: Record "iVendIntegrationLogNAVToiVend";
        iVendNavisioniVendTableMapping: Record iVendNavisioniVendTableMapping;
        EntryNo: Integer;
    begin
        iVendNavisioniVendTableMapping.SetRange("NAV Table No.", xRecRef.Number);
        if iVendNavisioniVendTableMapping.FindFirst() then;
        iVendIntegrationLogNAVToiVend.FindLast();
        EntryNo := iVendIntegrationLogNAVToiVend."Entry No." + 1;
        iVendIntegrationLogNAVToiVend.Reset();
        iVendIntegrationLogNAVToiVend.Init();
        iVendIntegrationLogNAVToiVend."Entry No." := EntryNo;
        iVendIntegrationLogNAVToiVend.Insert(true);
        iVendIntegrationLogNAVToiVend."Table No." := iVendNavisioniVendTableMapping."NAV Table No.";
        iVendIntegrationLogNAVToiVend."Ivend Table Name" := iVendNavisioniVendTableMapping."IVend Table Name";
        iVendIntegrationLogNAVToiVend."Source Type" := xRecRef.Name;
        iVendIntegrationLogNAVToiVend."Source Key" := CopyStr(Format(xRecRef.RecordId()), StrPos(Format(xRecRef.RecordId()), ':') + 2);
        iVendIntegrationLogNAVToiVend."Operation Type" := OperationType;
        iVendIntegrationLogNAVToiVend."Log Date" := Today();
        iVendIntegrationLogNAVToiVend."Log Time" := Time();
        iVendIntegrationLogNAVToiVend.Priority := iVendNavisioniVendTableMapping.Priority;
        iVendIntegrationLogNAVToiVend."Integration Object Type" := iVendNavisioniVendTableMapping."Integration Object Type";
        iVendIntegrationLogNAVToiVend.Status := iVendIntegrationLogNAVToiVend.Status::"Not Processed";
        iVendIntegrationLogNAVToiVend.JSON := CreateJSON(iVendIntegrationLogNAVToiVend, xRecRef);
        iVendIntegrationLogNAVToiVend.Modify();
    end;

    procedure CreateJSON(iVendIntegrationLogNAVToiVend: Record iVendIntegrationLogNAVToiVend; xRecRef: RecordRef): Text
    var
        JsonObject, JsonObject1 : JsonObject;
        Field: Record Field;
        iVendNavisioniVendFieldMapping: Record iVendNavisioniVendFieldMapping;
        JsonText: Text;
    begin
        Clear(JsonObject);
        Clear(JsonObject1);
        JsonObject.Add('TableName', iVendIntegrationLogNAVToiVend."Ivend Table Name");

        iVendNavisioniVendFieldMapping.SetRange("NAV Table No.", xRecRef.Number);
        if iVendNavisioniVendFieldMapping.FindSet() then
            repeat
                Field.Reset();
                Field.SetRange(TableNo, iVendNavisioniVendFieldMapping."NAV Table No.");
                Field.SetRange(FieldName, iVendNavisioniVendFieldMapping."NAV Field Name");
                if Field.FindFirst() then
                    JsonObject1.Add(iVendNavisioniVendFieldMapping."IVend API Field Name", Format(xRecRef.Field(Field."No.")))
            until iVendNavisioniVendFieldMapping.Next() = 0;

        JsonObject.Add('UserFieldsList', JsonObject1);

        JsonObject.WriteTo(JsonText);
        exit(JsonText);
    end;
}