object DM: TDM
  OldCreateOrder = False
  Left = 134
  Top = 118
  Height = 436
  Width = 635
  object DB: TDatabase
    DatabaseName = 'dbBruchkus'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=D:\temp\bruschkus.gdb'
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
    Left = 104
    Top = 24
  end
  object qizdeliya: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    SQL.Strings = (
      'select * from izdeliya'
      'order by name')
    UpdateObject = usqizdeliya
    Left = 32
    Top = 88
    object qizdeliyaID: TIntegerField
      DisplayLabel = '#'
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.ID'
      Visible = False
    end
    object qizdeliyaNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.IZDELIYA.NAME'
      Size = 120
    end
    object qizdeliyaLUVid: TStringField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUVid'
      LookupDataSet = qVidi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'VID_ID'
      Size = 35
      Lookup = True
    end
    object qizdeliyaVID_ID: TIntegerField
      FieldName = 'VID_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.VID_ID'
      Visible = False
    end
    object qizdeliyaUNIT_IZMR: TStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      FieldName = 'UNIT_IZMR'
      Origin = 'DBBRUCHKUS.IZDELIYA.UNIT_IZMR'
    end
    object qizdeliyaLUIzgot: TStringField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUIzgot'
      LookupDataSet = qIzgotoviteli
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZGOTOVITEL_ID'
      Size = 35
      Lookup = True
    end
    object qizdeliyaCOST_FOR_ONE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
      FieldName = 'COST_FOR_ONE'
      Origin = 'DBBRUCHKUS.IZDELIYA.COST_FOR_ONE'
    end
    object qizdeliyaIZGOTOVITEL_ID: TIntegerField
      FieldName = 'IZGOTOVITEL_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.IZGOTOVITEL_ID'
      Visible = False
    end
  end
  object qVidi: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    SQL.Strings = (
      'select * from vidi'
      'order by name')
    UpdateObject = usqVidi
    Left = 32
    Top = 136
    object qVidiID: TIntegerField
      DisplayLabel = '#'
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.VIDI.ID'
      Visible = False
    end
    object qVidiNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.VIDI.NAME'
      Size = 120
    end
  end
  object qIzgotoviteli: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    SQL.Strings = (
      'select * from izgotoviteli'
      'order by name')
    UpdateObject = usqizgotoviteli
    Left = 32
    Top = 184
    object qIzgotoviteliID: TIntegerField
      DisplayLabel = '#'
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.ID'
      Visible = False
    end
    object qIzgotoviteliNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.NAME'
      Size = 120
    end
    object qIzgotoviteliADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 20
      FieldName = 'ADDRESS'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.ADDRESS'
      Size = 200
    end
    object qIzgotoviteliLUFormi: TStringField
      DisplayLabel = #1060#1086#1088#1084#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
      FieldKind = fkLookup
      FieldName = 'LUFormi'
      LookupDataSet = qFormi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FORMA_SOB_ID'
      Size = 35
      Lookup = True
    end
    object qIzgotoviteliFORMA_SOB_ID: TIntegerField
      FieldName = 'FORMA_SOB_ID'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.FORMA_SOB_ID'
      Visible = False
    end
    object qIzgotoviteliFACE: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1077' '#1083#1080#1094#1086
      DisplayWidth = 30
      FieldName = 'Face'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.FACE'
      Size = 100
    end
    object qIzgotoviteliTELEPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 20
      FieldName = 'TELEPHONE'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.TELEPHONE'
      Size = 100
    end
    object qIzgotoviteliE_MAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 20
      FieldName = 'E_MAIL'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.E_MAIL'
      Size = 100
    end
  end
  object qFormi: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    SQL.Strings = (
      'select * from formi_sobstvennosti'
      'order by name')
    UpdateObject = usqFormi
    Left = 32
    Top = 232
    object qFormiID: TIntegerField
      DisplayLabel = '#'
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.FORMI_SOBSTVENNOSTI.ID'
      Visible = False
    end
    object qFormiNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 45
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.FORMI_SOBSTVENNOSTI.NAME'
      Size = 120
    end
  end
  object usqizdeliya: TUpdateSQL
    ModifySQL.Strings = (
      'update izdeliya'
      'set'
      '  NAME = :NAME,'
      '  VID_ID = :VID_ID,'
      '  UNIT_IZMR = :UNIT_IZMR,'
      '  COST_FOR_ONE = :COST_FOR_ONE,'
      '  IZGOTOVITEL_ID = :IZGOTOVITEL_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdeliya'
      '  (NAME, VID_ID, UNIT_IZMR, COST_FOR_ONE, IZGOTOVITEL_ID)'
      'values'
      '  (:NAME, :VID_ID, :UNIT_IZMR, :COST_FOR_ONE, :IZGOTOVITEL_ID)')
    DeleteSQL.Strings = (
      'delete from izdeliya'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 88
  end
  object usqVidi: TUpdateSQL
    ModifySQL.Strings = (
      'update vidi'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into vidi'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from vidi'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 136
  end
  object usqizgotoviteli: TUpdateSQL
    ModifySQL.Strings = (
      'update izgotoviteli'
      'set'
      '  NAME = :NAME,'
      '  ADDRESS = :ADDRESS,'
      '  FORMA_SOB_ID = :FORMA_SOB_ID,'
      '  FACE = :FACE,'
      '  TELEPHONE = :TELEPHONE,'
      '  E_MAIL = :E_MAIL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izgotoviteli'
      '  (NAME, ADDRESS, FORMA_SOB_ID, FACE, TELEPHONE, E_MAIL)'
      'values'
      '  (:NAME, :ADDRESS, :FORMA_SOB_ID, :FACE, :TELEPHONE, :E_MAIL)')
    DeleteSQL.Strings = (
      'delete from izgotoviteli'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 184
  end
  object usqFormi: TUpdateSQL
    ModifySQL.Strings = (
      'update formi_sobstvennosti'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into formi_sobstvennosti'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from formi_sobstvennosti'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 232
  end
  object dsQizdeliya: TDataSource
    DataSet = qizdeliya
    Left = 112
    Top = 80
  end
  object dsQVidi: TDataSource
    DataSet = qVidi
    Left = 112
    Top = 128
  end
  object dsQizgotoviteli: TDataSource
    DataSet = qIzgotoviteli
    Left = 112
    Top = 184
  end
  object dsQFormi: TDataSource
    DataSet = qFormi
    Left = 112
    Top = 232
  end
  object spDElete_Formi: TStoredProc
    DatabaseName = 'dbBruchkus'
    StoredProcName = 'DELETE_FORMA_SOBSTVENNOSTI'
    Left = 272
    Top = 232
  end
  object spDelete_vid: TStoredProc
    DatabaseName = 'dbBruchkus'
    StoredProcName = 'DELETE_VID'
    Left = 272
    Top = 136
  end
  object spDelete_Izdelie: TStoredProc
    DatabaseName = 'dbBruchkus'
    StoredProcName = 'DELETE_IZDELIE'
    Left = 272
    Top = 88
  end
  object spDelete_Izgotovitel: TStoredProc
    DatabaseName = 'dbBruchkus'
    StoredProcName = 'DELETE_IZGOTOVITEL'
    Left = 272
    Top = 184
  end
  object qUIzdeliyaV: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    DataSource = dsQVidi
    SQL.Strings = (
      'select * from izdeliya'
      'where vid_id=:id')
    UpdateObject = usqIZDV
    Left = 400
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qUIzdeliyaVID: TIntegerField
      DisplayLabel = '#'
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.ID'
    end
    object qUIzdeliyaVNAME: TStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.IZDELIYA.NAME'
      Size = 120
    end
    object qUIzdeliyaVVID_ID: TIntegerField
      DisplayLabel = #8470' '#1042#1080#1076#1072
      DisplayWidth = 5
      FieldName = 'VID_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.VID_ID'
    end
    object qUIzdeliyaVUNIT_IZMR: TStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1103
      FieldName = 'UNIT_IZMR'
      Origin = 'DBBRUCHKUS.IZDELIYA.UNIT_IZMR'
    end
    object qUIzdeliyaVCOST_FOR_ONE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
      FieldName = 'COST_FOR_ONE'
      Origin = 'DBBRUCHKUS.IZDELIYA.COST_FOR_ONE'
    end
    object qUIzdeliyaVIZGOTOVITEL_ID: TIntegerField
      FieldName = 'IZGOTOVITEL_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.IZGOTOVITEL_ID'
      Visible = False
    end
    object qUIzdeliyaVLUIZg: TStringField
      FieldKind = fkLookup
      FieldName = 'LUIZg'
      LookupDataSet = qIzgotoviteli
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZGOTOVITEL_ID'
      Size = 35
      Lookup = True
    end
  end
  object qUIzdeliyai: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    SQL.Strings = (
      'select * from izdeliya'
      'where izgotovitel_id=:id')
    UpdateObject = usqizdi
    Left = 400
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qUIzdeliyaiID: TIntegerField
      DisplayLabel = '#'
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.ID'
    end
    object qUIzdeliyaiNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 35
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.IZDELIYA.NAME'
      Size = 120
    end
    object qUIzdeliyaiLUVID: TStringField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LUVID'
      LookupDataSet = qVidi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'VID_ID'
      Size = 35
      Lookup = True
    end
    object qUIzdeliyaiVID_ID: TIntegerField
      FieldName = 'VID_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.VID_ID'
      Visible = False
    end
    object qUIzdeliyaiUNIT_IZMR: TStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      FieldName = 'UNIT_IZMR'
      Origin = 'DBBRUCHKUS.IZDELIYA.UNIT_IZMR'
    end
    object qUIzdeliyaiCOST_FOR_ONE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
      FieldName = 'COST_FOR_ONE'
      Origin = 'DBBRUCHKUS.IZDELIYA.COST_FOR_ONE'
    end
    object qUIzdeliyaiIZGOTOVITEL_ID: TIntegerField
      DisplayLabel = #8470' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1103
      FieldName = 'IZGOTOVITEL_ID'
      Origin = 'DBBRUCHKUS.IZDELIYA.IZGOTOVITEL_ID'
    end
  end
  object qUizgotoviteli: TQuery
    CachedUpdates = True
    DatabaseName = 'dbBruchkus'
    DataSource = dsQFormi
    SQL.Strings = (
      'select * from izgotoviteli'
      'where forma_sob_id=:id')
    UpdateObject = usquizg
    Left = 400
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qUizgotoviteliID: TIntegerField
      DisplayLabel = '#'
      FieldName = 'ID'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.ID'
    end
    object qUizgotoviteliNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.NAME'
      Size = 120
    end
    object qUizgotoviteliADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 25
      FieldName = 'ADDRESS'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.ADDRESS'
      Size = 200
    end
    object qUizgotoviteliFORMA_SOB_ID: TIntegerField
      DisplayLabel = #8470' '#1092#1086#1088#1084#1099' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
      FieldName = 'FORMA_SOB_ID'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.FORMA_SOB_ID'
    end
    object qUizgotoviteliFACE: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1077' '#1083#1080#1094#1086
      DisplayWidth = 35
      FieldName = 'FACE'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.FACE'
      Size = 100
    end
    object qUizgotoviteliTELEPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 20
      FieldName = 'TELEPHONE'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.TELEPHONE'
      Size = 100
    end
    object qUizgotoviteliE_MAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 20
      FieldName = 'E_MAIL'
      Origin = 'DBBRUCHKUS.IZGOTOVITELI.E_MAIL'
      Size = 100
    end
  end
  object dsqUIzdeliyaV: TDataSource
    DataSet = qUIzdeliyaV
    Left = 464
    Top = 8
  end
  object dsQuizdeliyai: TDataSource
    DataSet = qUIzdeliyai
    Left = 464
    Top = 56
  end
  object dsquizgotoviteli: TDataSource
    DataSet = qUizgotoviteli
    Left = 464
    Top = 104
  end
  object usqIZDV: TUpdateSQL
    ModifySQL.Strings = (
      'update izdeliya'
      'set'
      '  NAME = :NAME,'
      '  VID_ID = :VID_ID,'
      '  UNIT_IZMR = :UNIT_IZMR,'
      '  COST_FOR_ONE = :COST_FOR_ONE,'
      '  IZGOTOVITEL_ID = :IZGOTOVITEL_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdeliya'
      '  (NAME, VID_ID, UNIT_IZMR, COST_FOR_ONE, IZGOTOVITEL_ID)'
      'values'
      '  (:NAME, :VID_ID, :UNIT_IZMR, :COST_FOR_ONE, :IZGOTOVITEL_ID)')
    DeleteSQL.Strings = (
      'delete from izdeliya'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 8
  end
  object usqizdi: TUpdateSQL
    ModifySQL.Strings = (
      'update izdeliya'
      'set'
      '  NAME = :NAME,'
      '  VID_ID = :VID_ID,'
      '  UNIT_IZMR = :UNIT_IZMR,'
      '  COST_FOR_ONE = :COST_FOR_ONE,'
      '  IZGOTOVITEL_ID = :IZGOTOVITEL_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdeliya'
      '  (NAME, VID_ID, UNIT_IZMR, COST_FOR_ONE, IZGOTOVITEL_ID)'
      'values'
      '  (:NAME, :VID_ID, :UNIT_IZMR, :COST_FOR_ONE, :IZGOTOVITEL_ID)')
    DeleteSQL.Strings = (
      'delete from izdeliya'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 56
  end
  object usquizg: TUpdateSQL
    ModifySQL.Strings = (
      'update izgotoviteli'
      'set'
      '  NAME = :NAME,'
      '  ADDRESS = :ADDRESS,'
      '  FORMA_SOB_ID = :FORMA_SOB_ID,'
      '  FACE = :FACE,'
      '  TELEPHONE = :TELEPHONE,'
      '  E_MAIL = :E_MAIL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izgotoviteli'
      '  (NAME, ADDRESS, FORMA_SOB_ID, FACE, TELEPHONE, E_MAIL)'
      'values'
      '  (:NAME, :ADDRESS, :FORMA_SOB_ID, :FACE, :TELEPHONE, :E_MAIL)')
    DeleteSQL.Strings = (
      'delete from izgotoviteli'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 104
  end
end
