object DM: TDM
  OldCreateOrder = False
  Left = 95
  Top = 95
  Height = 436
  Width = 635
  object Database: TDatabase
    DatabaseName = 'dbPalina'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=d:\temp\palina.gdb'
      'USER NAME=admin'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'WAIT ON LOCKS=FALSE'
      'COMMIT RETAIN=FALSE'
      'ROLE NAME='
      'PASSWORD=1')
    SessionName = 'Default'
    AfterConnect = DatabaseAfterConnect
    AfterDisconnect = DatabaseAfterDisconnect
    Left = 104
    Top = 24
  end
  object qryAllPrepods: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from prepods'
      'order by Fam')
    UpdateObject = usqryAllPrepods
    Left = 32
    Top = 88
    object qryAllPrepodsID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.PREPODS.ID'
    end
    object qryAllPrepodsFAM: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 30
      FieldName = 'FAM'
      Origin = 'DBPALINA.PREPODS.FAM'
      Size = 40
    end
    object qryAllPrepodsNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBPALINA.PREPODS.NAME'
      Size = 40
    end
    object qryAllPrepodsOTCH: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 25
      FieldName = 'OTCH'
      Origin = 'DBPALINA.PREPODS.OTCH'
      Size = 40
    end
    object qryAllPrepodsBDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BDATE'
      Origin = 'DBPALINA.PREPODS.BDATE'
    end
    object qryAllPrepodsEDUCATION: TStringField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'EDUCATION'
      Origin = 'DBPALINA.PREPODS.EDUCATION'
      Size = 50
    end
    object qryAllPrepodsU_STEP: TStringField
      DisplayLabel = #1059#1095#1105#1085#1072#1103' '#1089#1090#1087#1077#1085#1100
      DisplayWidth = 18
      FieldName = 'U_STEP'
      Origin = 'DBPALINA.PREPODS.U_STEP'
      Size = 30
    end
    object qryAllPrepodsDOLGN: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 30
      FieldName = 'DOLGN'
      Origin = 'DBPALINA.PREPODS.DOLGN'
      Size = 50
    end
    object qryAllPrepodsLuKafedra: TStringField
      DisplayLabel = #1050#1072#1092#1077#1076#1088#1072
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LuKafedra'
      LookupDataSet = qryAllKafedri
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'KAFEDRA_ID'
      Size = 50
      Lookup = True
    end
    object qryAllPrepodsKAFEDRA_ID: TIntegerField
      DisplayLabel = #8470' '#1082#1072#1092#1077#1076#1088#1099
      DisplayWidth = 5
      FieldName = 'KAFEDRA_ID'
      Origin = 'DBPALINA.PREPODS.KAFEDRA_ID'
      Visible = False
    end
    object qryAllPrepodsLUNauchNAPRAV: TStringField
      DisplayLabel = #1053#1072#1091#1095#1085#1086#1077' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUNauchNAPRAV'
      LookupDataSet = qryAllNauch_naprav
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'NAUCH_NAPRAV_ID'
      Size = 50
      Lookup = True
    end
    object qryAllPrepodsNAUCH_NAPRAV_ID: TIntegerField
      DisplayLabel = #8470' '#1085#1072#1091#1095#1085#1086#1075#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldName = 'NAUCH_NAPRAV_ID'
      Origin = 'DBPALINA.PREPODS.NAUCH_NAPRAV_ID'
      Visible = False
    end
  end
  object qryAllNauch_naprav: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from nauch_napravs'
      'order by name')
    UpdateObject = usqryAllNauch_naprav
    Left = 32
    Top = 136
    object qryAllNauch_napravID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.NAUCH_NAPRAVS.ID'
    end
    object qryAllNauch_napravNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBPALINA.NAUCH_NAPRAVS.NAME'
      Size = 40
    end
  end
  object qryAllKafedri: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from kafedri'
      'order by name')
    UpdateObject = usqryAllKafedri
    Left = 32
    Top = 184
    object qryAllKafedriID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.KAFEDRI.ID'
    end
    object qryAllKafedriNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBPALINA.KAFEDRI.NAME'
      Size = 40
    end
  end
  object qryAllAvtorstvo: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from avtorstvo')
    UpdateObject = usqryAllAvtorstvo
    Left = 32
    Top = 280
    object qryAllAvtorstvoID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.AVTORSTVO.ID'
    end
    object qryAllAvtorstvoPREPOD_ID: TIntegerField
      DisplayLabel = #8470' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
      FieldName = 'PREPOD_ID'
      Origin = 'DBPALINA.AVTORSTVO.PREPOD_ID'
      Visible = False
    end
    object qryAllAvtorstvoLUIzd: TStringField
      DisplayLabel = #1048#1079#1076#1072#1085#1080#1077
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'LUIzd'
      LookupDataSet = qryAllIzdaniya
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZD_ID'
      Size = 50
      Lookup = True
    end
    object qryAllAvtorstvoLUPrepod: TStringField
      DisplayLabel = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUPrepod'
      LookupDataSet = qryAllPrepods
      LookupKeyFields = 'ID'
      LookupResultField = 'FAM'
      KeyFields = 'PREPOD_ID'
      Size = 50
      Lookup = True
    end
    object qryAllAvtorstvoIZD_ID: TIntegerField
      DisplayLabel = #8470' '#1080#1079#1076#1072#1085#1080#1103
      DisplayWidth = 5
      FieldName = 'IZD_ID'
      Origin = 'DBPALINA.AVTORSTVO.IZD_ID'
      Visible = False
    end
  end
  object qryAllIzdaniya: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from izdaniya'
      'order by name')
    UpdateObject = usqryAllIzdaniya
    Left = 32
    Top = 232
    object qryAllIzdaniyaID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.IZDANIYA.ID'
    end
    object qryAllIzdaniyaNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBPALINA.IZDANIYA.NAME'
      Size = 40
    end
    object qryAllIzdaniyaLUTypeizd: TStringField
      DisplayLabel = #1058#1080#1087' '#1080#1079#1076#1072#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'LUTypeizd'
      LookupDataSet = qryAllTypes_izds
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TYPE_IZD_ID'
      Size = 35
      Lookup = True
    end
    object qryAllIzdaniyaTYPE_IZD_ID: TIntegerField
      DisplayLabel = #8470' '#1090#1080#1087#1072' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'TYPE_IZD_ID'
      Origin = 'DBPALINA.IZDANIYA.TYPE_IZD_ID'
      Visible = False
    end
    object qryAllIzdaniyaIZDATELSTVO: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      DisplayWidth = 35
      FieldName = 'IZDATELSTVO'
      Origin = 'DBPALINA.IZDANIYA.IZDATELSTVO'
      Size = 70
    end
    object qryAllIzdaniyaGOD_IZD: TIntegerField
      DisplayLabel = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'GOD_IZD'
      Origin = 'DBPALINA.IZDANIYA.GOD_IZD'
    end
  end
  object qryAllTypes_izds: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from types_izds'
      'order by name')
    UpdateObject = usqryAllTypes_izds
    Left = 32
    Top = 328
    object qryAllTypes_izdsID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.TYPES_IZDS.ID'
    end
    object qryAllTypes_izdsNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBPALINA.TYPES_IZDS.NAME'
      Size = 40
    end
  end
  object usqryAllPrepods: TUpdateSQL
    ModifySQL.Strings = (
      'update prepods'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  BDATE = :BDATE,'
      '  EDUCATION = :EDUCATION,'
      '  U_STEP = :U_STEP,'
      '  DOLGN = :DOLGN,'
      '  KAFEDRA_ID = :KAFEDRA_ID,'
      '  NAUCH_NAPRAV_ID = :NAUCH_NAPRAV_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into prepods'
      
        '  (FAM, NAME, OTCH, BDATE, EDUCATION, U_STEP, DOLGN, KAFEDRA_ID,' +
        ' NAUCH_NAPRAV_ID)'
      'values'
      
        '  (:FAM, :NAME, :OTCH, :BDATE, :EDUCATION, :U_STEP, :DOLGN, :KAF' +
        'EDRA_ID, '
      '   :NAUCH_NAPRAV_ID)')
    DeleteSQL.Strings = (
      'delete from prepods'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 88
  end
  object usqryAllTypes_izds: TUpdateSQL
    ModifySQL.Strings = (
      'update types_izds'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into types_izds'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from types_izds'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 328
  end
  object usqryAllNauch_naprav: TUpdateSQL
    ModifySQL.Strings = (
      'update nauch_napravs'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into nauch_napravs'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from nauch_napravs'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 144
  end
  object usqryAllKafedri: TUpdateSQL
    ModifySQL.Strings = (
      'update kafedri'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into kafedri'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from kafedri'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 184
  end
  object usqryAllIzdaniya: TUpdateSQL
    ModifySQL.Strings = (
      'update izdaniya'
      'set'
      '  NAME = :NAME,'
      '  TYPE_IZD_ID = :TYPE_IZD_ID,'
      '  IZDATELSTVO = :IZDATELSTVO,'
      '  GOD_IZD = :GOD_IZD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdaniya'
      '  (NAME, TYPE_IZD_ID, IZDATELSTVO, GOD_IZD)'
      'values'
      '  (:NAME, :TYPE_IZD_ID, :IZDATELSTVO, :GOD_IZD)')
    DeleteSQL.Strings = (
      'delete from izdaniya'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 232
  end
  object usqryAllAvtorstvo: TUpdateSQL
    ModifySQL.Strings = (
      'update avtorstvo'
      'set'
      '  PREPOD_ID = :PREPOD_ID,'
      '  IZD_ID = :IZD_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into avtorstvo'
      '  (PREPOD_ID, IZD_ID)'
      'values'
      '  (:PREPOD_ID, :IZD_ID)')
    DeleteSQL.Strings = (
      'delete from avtorstvo'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 280
  end
  object dsQryAllPrepods: TDataSource
    DataSet = qryAllPrepods
    Left = 112
    Top = 88
  end
  object dsQryAllNauch_naprav: TDataSource
    DataSet = qryAllNauch_naprav
    Left = 112
    Top = 128
  end
  object dsQryAllKafedri: TDataSource
    DataSet = qryAllKafedri
    Left = 112
    Top = 184
  end
  object dsQryAllIzdaniya: TDataSource
    DataSet = qryAllIzdaniya
    Left = 112
    Top = 232
  end
  object dsqryAllAvtorstvo: TDataSource
    DataSet = qryAllAvtorstvo
    Left = 112
    Top = 280
  end
  object dsqryAllTypes_izds: TDataSource
    DataSet = qryAllTypes_izds
    Left = 112
    Top = 328
  end
  object spDElete_prepod: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_PREPOD'
    Left = 288
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IPREPOD_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_type_izd: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_TYPE_IZD'
    Left = 288
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITYPE_IZD'
        ParamType = ptInput
      end>
  end
  object spDelete_izdanie: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_IZDANIE'
    Left = 288
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IIZD_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_Nauch_naprav: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_NAUCH_NAPRAV'
    Left = 288
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'INAPRAV_NAME'
        ParamType = ptInput
      end>
  end
  object spDelete_avtorstvo: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_AVTORSTVO'
    Left = 288
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IAVTORSTVO_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_kafedra: TStoredProc
    DatabaseName = 'dbPalina'
    StoredProcName = 'DELETE_KAFEDRA'
    Left = 288
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'IKAFEDRA_NAME'
        ParamType = ptInput
      end>
  end
  object qryPrepodN: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    DataSource = dsQryAllNauch_naprav
    SQL.Strings = (
      'select * from prepods'
      'where nauch_naprav_id=:id')
    UpdateObject = usQryPrepodN
    Left = 408
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryPrepodNID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBPALINA.PREPODS.ID'
    end
    object qryPrepodNFAM: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 20
      FieldName = 'FAM'
      Origin = 'DBPALINA.PREPODS.FAM'
      Size = 40
    end
    object qryPrepodNNAME: TStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Origin = 'DBPALINA.PREPODS.NAME'
      Size = 40
    end
    object qryPrepodNOTCH: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 20
      FieldName = 'OTCH'
      Origin = 'DBPALINA.PREPODS.OTCH'
      Size = 40
    end
    object qryPrepodNBDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BDATE'
      Origin = 'DBPALINA.PREPODS.BDATE'
    end
    object qryPrepodNEDUCATION: TStringField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'EDUCATION'
      Origin = 'DBPALINA.PREPODS.EDUCATION'
      Size = 50
    end
    object qryPrepodNU_STEP: TStringField
      DisplayLabel = #1059#1095#1105#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
      DisplayWidth = 15
      FieldName = 'U_STEP'
      Origin = 'DBPALINA.PREPODS.U_STEP'
      Size = 30
    end
    object qryPrepodNDOLGN: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 15
      FieldName = 'DOLGN'
      Origin = 'DBPALINA.PREPODS.DOLGN'
      Size = 50
    end
    object qryPrepodNKAFEDRA_ID: TIntegerField
      DisplayLabel = #8470' '#1082#1072#1092#1077#1076#1088#1099
      DisplayWidth = 5
      FieldName = 'KAFEDRA_ID'
      Origin = 'DBPALINA.PREPODS.KAFEDRA_ID'
    end
    object qryPrepodNNAUCH_NAPRAV_ID: TIntegerField
      DisplayLabel = #8470' '#1085#1072#1091#1095#1085#1086#1075#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldName = 'NAUCH_NAPRAV_ID'
      Origin = 'DBPALINA.PREPODS.NAUCH_NAPRAV_ID'
    end
  end
  object qryPrepodK: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    DataSource = dsQryAllKafedri
    SQL.Strings = (
      'select * from prepods'
      'where kafedra_id=:id')
    UpdateObject = usQryPrepodK
    Left = 408
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qryIzdaniya_by_prepod: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from izdaniya_by_prepod(:iprepod_id)')
    Left = 408
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iprepod_id'
        ParamType = ptUnknown
      end>
    object qryIzdaniya_by_prepodRID: TIntegerField
      DisplayLabel = #8470' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'RID'
    end
    object qryIzdaniya_by_prepodRNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'RNAME'
      Size = 40
    end
    object qryIzdaniya_by_prepodRTYPE_IZD: TStringField
      DisplayLabel = #1058#1080#1087' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'RTYPE_IZD'
      Size = 40
    end
    object qryIzdaniya_by_prepodRIZDATELSTVO: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      DisplayWidth = 35
      FieldName = 'RIZDATELSTVO'
      Size = 70
    end
    object qryIzdaniya_by_prepodRGOD_IZD: TIntegerField
      DisplayLabel = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'RGOD_IZD'
    end
  end
  object qryPrepods_by_izdanie: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    SQL.Strings = (
      'select * from prepods_by_izdanie(:izdanie_id)')
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'izdanie_id'
        ParamType = ptUnknown
      end>
    object qryPrepods_by_izdanieRID: TIntegerField
      DisplayLabel = #8470' '#1087#1077#1088#1087#1086#1076'-'#1083#1103
      FieldName = 'RID'
    end
    object qryPrepods_by_izdanieRFAM: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 30
      FieldName = 'RFAM'
      Size = 40
    end
    object qryPrepods_by_izdanieRNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 30
      FieldName = 'RNAME'
      Size = 40
    end
    object qryPrepods_by_izdanieROTCH: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 25
      FieldName = 'ROTCH'
      Size = 40
    end
    object qryPrepods_by_izdanieRBDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'RBDATE'
    end
    object qryPrepods_by_izdanieREDUCATION: TStringField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
      DisplayWidth = 30
      FieldName = 'REDUCATION'
      Size = 50
    end
    object qryPrepods_by_izdanieRU_STEP: TStringField
      DisplayLabel = #1059#1095#1077#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
      DisplayWidth = 15
      FieldName = 'RU_STEP'
      Size = 30
    end
    object qryPrepods_by_izdanieRDOLGN: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 25
      FieldName = 'RDOLGN'
      Size = 50
    end
    object qryPrepods_by_izdanieLUKafedra: TStringField
      DisplayLabel = #1050#1072#1092#1077#1076#1088#1072
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'LUKafedra'
      LookupDataSet = qryAllKafedri
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'RKAFEDRA_ID'
      Size = 40
      Lookup = True
    end
    object qryPrepods_by_izdanieLUNaprav: TStringField
      DisplayLabel = #1053#1072#1091#1095#1085#1086#1077' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUNaprav'
      LookupDataSet = qryAllNauch_naprav
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'RNAUCH_NAPRAV_ID'
      Size = 40
      Lookup = True
    end
    object qryPrepods_by_izdanieRKAFEDRA_ID: TIntegerField
      DisplayLabel = #8470' '#1082#1072#1092#1077#1076#1088#1099
      FieldName = 'RKAFEDRA_ID'
      Visible = False
    end
    object qryPrepods_by_izdanieRNAUCH_NAPRAV_ID: TIntegerField
      DisplayLabel = #8470' '#1085#1072#1091#1095#1085#1086#1075#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldName = 'RNAUCH_NAPRAV_ID'
    end
  end
  object qryIzdaniya: TQuery
    CachedUpdates = True
    DatabaseName = 'dbPalina'
    DataSource = dsqryAllTypes_izds
    SQL.Strings = (
      'select * from izdaniya'
      'where type_izd_id=:id')
    UpdateObject = usQryIzdaniya
    Left = 408
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryIzdaniyaID: TIntegerField
      FieldName = 'ID'
      Origin = 'DBPALINA.IZDANIYA.ID'
    end
    object qryIzdaniyaNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBPALINA.IZDANIYA.NAME'
      Size = 40
    end
    object qryIzdaniyaTYPE_IZD_ID: TIntegerField
      DisplayLabel = #8470' '#1090#1080#1087#1072' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'TYPE_IZD_ID'
      Origin = 'DBPALINA.IZDANIYA.TYPE_IZD_ID'
      Visible = False
    end
    object qryIzdaniyaIZDATELSTVO: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      DisplayWidth = 35
      FieldName = 'IZDATELSTVO'
      Origin = 'DBPALINA.IZDANIYA.IZDATELSTVO'
      Size = 70
    end
    object qryIzdaniyaGOD_IZD: TIntegerField
      DisplayLabel = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
      FieldName = 'GOD_IZD'
      Origin = 'DBPALINA.IZDANIYA.GOD_IZD'
    end
  end
  object dsQryIzdaniya: TDataSource
    DataSet = qryIzdaniya
    Left = 496
    Top = 80
  end
  object dsqryPrepods_by_izdanie: TDataSource
    DataSet = qryPrepods_by_izdanie
    Left = 504
    Top = 16
  end
  object dsqryPrepodN: TDataSource
    DataSet = qryPrepodN
    Left = 496
    Top = 128
  end
  object dsqryPrepodK: TDataSource
    DataSet = qryPrepodK
    Left = 496
    Top = 176
  end
  object dsqryIzdaniya_by_prepod: TDataSource
    DataSet = qryIzdaniya_by_prepod
    Left = 496
    Top = 240
  end
  object usQryPrepodK: TUpdateSQL
    ModifySQL.Strings = (
      'update prepods'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  BDATE = :BDATE,'
      '  EDUCATION = :EDUCATION,'
      '  U_STEP = :U_STEP,'
      '  DOLGN = :DOLGN,'
      '  KAFEDRA_ID = :KAFEDRA_ID,'
      '  NAUCH_NAPRAV_ID = :NAUCH_NAPRAV_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into prepods'
      
        '  (FAM, NAME, OTCH, BDATE, EDUCATION, U_STEP, DOLGN, KAFEDRA_ID,' +
        ' NAUCH_NAPRAV_ID)'
      'values'
      
        '  (:FAM, :NAME, :OTCH, :BDATE, :EDUCATION, :U_STEP, :DOLGN, :KAF' +
        'EDRA_ID, '
      '   :NAUCH_NAPRAV_ID)')
    DeleteSQL.Strings = (
      'delete from prepods'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 176
  end
  object usQryPrepodN: TUpdateSQL
    ModifySQL.Strings = (
      'update prepods'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  BDATE = :BDATE,'
      '  EDUCATION = :EDUCATION,'
      '  U_STEP = :U_STEP,'
      '  DOLGN = :DOLGN,'
      '  KAFEDRA_ID = :KAFEDRA_ID,'
      '  NAUCH_NAPRAV_ID = :NAUCH_NAPRAV_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into prepods'
      
        '  (FAM, NAME, OTCH, BDATE, EDUCATION, U_STEP, DOLGN, KAFEDRA_ID,' +
        ' NAUCH_NAPRAV_ID)'
      'values'
      
        '  (:FAM, :NAME, :OTCH, :BDATE, :EDUCATION, :U_STEP, :DOLGN, :KAF' +
        'EDRA_ID, '
      '   :NAUCH_NAPRAV_ID)')
    DeleteSQL.Strings = (
      'delete from prepods'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 128
  end
  object usQryIzdaniya: TUpdateSQL
    ModifySQL.Strings = (
      'update izdaniya'
      'set'
      '  NAME = :NAME,'
      '  TYPE_IZD_ID = :TYPE_IZD_ID,'
      '  IZDATELSTVO = :IZDATELSTVO,'
      '  GOD_IZD = :GOD_IZD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdaniya'
      '  (NAME, TYPE_IZD_ID, IZDATELSTVO, GOD_IZD)'
      'values'
      '  (:NAME, :TYPE_IZD_ID, :IZDATELSTVO, :GOD_IZD)')
    DeleteSQL.Strings = (
      'delete from izdaniya'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 80
  end
end
