object DM: TDM
  OldCreateOrder = False
  Left = 134
  Top = 118
  Height = 436
  Width = 635
  object Database: TDatabase
    Connected = True
    DatabaseName = 'dbSemina'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=i:\roi\zakaz\semina.gdb'
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
    AfterDisconnect = DatabaseAfterDisconnect
    Left = 104
    Top = 24
  end
  object qryAllizdatelstva: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from izdatelstva'
      'order by name')
    UpdateObject = usqryAllIzdatelstva
    Left = 32
    Top = 88
    object qryAllizdatelstvaID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.IZDATELSTVA.ID'
    end
    object qryAllizdatelstvaNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBSEMINA.IZDATELSTVA.NAME'
      Size = 50
    end
    object qryAllizdatelstvaADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 30
      FieldName = 'ADDRESS'
      Origin = 'DBSEMINA.IZDATELSTVA.ADDRESS'
      Size = 150
    end
    object qryAllizdatelstvaPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 20
      FieldName = 'PHONE'
      Origin = 'DBSEMINA.IZDATELSTVA.PHONE'
      Size = 50
    end
    object qryAllizdatelstvaE_MAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 20
      FieldName = 'E_MAIL'
      Origin = 'DBSEMINA.IZDATELSTVA.E_MAIL'
      Size = 50
    end
    object qryAllizdatelstvaGLAV_REDAKTOR: TStringField
      DisplayLabel = #1043#1083#1072#1074#1085#1099#1081' '#1088#1077#1076#1072#1082#1090#1086#1088
      DisplayWidth = 30
      FieldName = 'GLAV_REDAKTOR'
      Origin = 'DBSEMINA.IZDATELSTVA.GLAV_REDAKTOR'
      Size = 150
    end
  end
  object qryAllKnigi: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from knigi'
      'order by name')
    UpdateObject = usqryAllKnigi
    Left = 32
    Top = 136
    object qryAllKnigiID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.KNIGI.ID'
    end
    object qryAllKnigiNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 40
      FieldName = 'NAME'
      Origin = 'DBSEMINA.KNIGI.NAME'
      Size = 200
    end
    object qryAllKnigiJANR_ID: TIntegerField
      FieldName = 'JANR_ID'
      Origin = 'DBSEMINA.KNIGI.JANR_ID'
      Visible = False
    end
    object qryAllKnigiAVTOR_ID: TIntegerField
      FieldName = 'AVTOR_ID'
      Origin = 'DBSEMINA.KNIGI.AVTOR_ID'
      Visible = False
    end
    object qryAllKnigiLUAvtor: TStringField
      DisplayLabel = #1040#1074#1090#1086#1088' ('#1092#1072#1084#1080#1083#1080#1103')'
      FieldKind = fkLookup
      FieldName = 'LUAvtor'
      LookupDataSet = qryAllAvtori
      LookupKeyFields = 'ID'
      LookupResultField = 'FAM'
      KeyFields = 'AVTOR_ID'
      Size = 45
      Lookup = True
    end
    object qryAllKnigiLUJanr: TStringField
      DisplayLabel = #1046#1072#1085#1088
      FieldKind = fkLookup
      FieldName = 'LUJanr'
      LookupDataSet = qryAllJanri
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'JANR_ID'
      Size = 35
      Lookup = True
    end
    object qryAllKnigiCOST: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'COST'
      Origin = 'DBSEMINA.KNIGI.COST'
    end
  end
  object qryAllJanri: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from janri'
      'order by name')
    UpdateObject = usqryAllJanri
    Left = 32
    Top = 184
    object qryAllJanriID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.JANRI.ID'
    end
    object qryAllJanriNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBSEMINA.JANRI.NAME'
      Size = 50
    end
  end
  object qryAllStrani: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from strani'
      'order by name')
    UpdateObject = usqryAllStrani
    Left = 32
    Top = 280
    object qryAllStraniID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.STRANI.ID'
    end
    object qryAllStraniNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'DBSEMINA.STRANI.NAME'
      Size = 50
    end
  end
  object qryAllAvtori: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from avtori'
      'order by fam')
    Left = 32
    Top = 232
    object qryAllAvtoriID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.AVTORI.ID'
    end
    object qryAllAvtoriFAM: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 20
      FieldName = 'FAM'
      Origin = 'DBSEMINA.AVTORI.FAM'
      Size = 50
    end
    object qryAllAvtoriNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'DBSEMINA.AVTORI.NAME'
      Size = 50
    end
    object qryAllAvtoriOTCH: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      DisplayWidth = 20
      FieldName = 'OTCH'
      Origin = 'DBSEMINA.AVTORI.OTCH'
      Size = 50
    end
    object qryAllAvtoriLUStrana: TStringField
      DisplayLabel = #1057#1090#1088#1072#1085#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LUStrana'
      LookupDataSet = qryAllStrani
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'STRANA_ID'
      Size = 35
      Lookup = True
    end
    object qryAllAvtoriSTRANA_ID: TIntegerField
      FieldName = 'STRANA_ID'
      Origin = 'DBSEMINA.AVTORI.STRANA_ID'
      Visible = False
    end
  end
  object qryAllVipusk: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from vipusk')
    UpdateObject = usqryAllVipusk
    Left = 32
    Top = 328
    object qryAllVipuskID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.VIPUSK.ID'
    end
    object qryAllVipuskLuKnigi: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LuKnigi'
      LookupDataSet = qryAllKnigi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'KNIGA_ID'
      Size = 35
      Lookup = True
    end
    object qryAllVipuskluIzd: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'luIzd'
      LookupDataSet = qryAllizdatelstva
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZD_ID'
      Size = 35
      Lookup = True
    end
    object qryAllVipuskKNIGA_ID: TIntegerField
      FieldName = 'KNIGA_ID'
      Origin = 'DBSEMINA.VIPUSK.KNIGA_ID'
      Visible = False
    end
    object qryAllVipuskCOL_COPIES: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1087#1080#1081
      FieldName = 'COL_COPIES'
      Origin = 'DBSEMINA.VIPUSK.COL_COPIES'
    end
    object qryAllVipuskIZD_ID: TIntegerField
      FieldName = 'IZD_ID'
      Origin = 'DBSEMINA.VIPUSK.IZD_ID'
      Visible = False
    end
    object qryAllVipuskDATA_VIPUSKA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072
      FieldName = 'DATA_VIPUSKA'
      Origin = 'DBSEMINA.VIPUSK.DATA_VIPUSKA'
    end
  end
  object usqryAllIzdatelstva: TUpdateSQL
    ModifySQL.Strings = (
      'update izdatelstva'
      'set'
      '  NAME = :NAME,'
      '  ADDRESS = :ADDRESS,'
      '  PHONE = :PHONE,'
      '  E_MAIL = :E_MAIL,'
      '  GLAV_REDAKTOR = :GLAV_REDAKTOR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdatelstva'
      '  (NAME, ADDRESS, PHONE, E_MAIL, GLAV_REDAKTOR)'
      'values'
      '  (:NAME, :ADDRESS, :PHONE, :E_MAIL, :GLAV_REDAKTOR)')
    DeleteSQL.Strings = (
      'delete from izdatelstva'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 88
  end
  object usqryAllVipusk: TUpdateSQL
    ModifySQL.Strings = (
      'update vipusk'
      'set'
      '  KNIGA_ID = :KNIGA_ID,'
      '  COL_COPIES = :COL_COPIES,'
      '  IZD_ID = :IZD_ID,'
      '  DATA_VIPUSKA = :DATA_VIPUSKA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into vipusk'
      '  (KNIGA_ID, COL_COPIES, IZD_ID, DATA_VIPUSKA)'
      'values'
      '  (:KNIGA_ID, :COL_COPIES, :IZD_ID, :DATA_VIPUSKA)')
    DeleteSQL.Strings = (
      'delete from vipusk'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 328
  end
  object usqryAllKnigi: TUpdateSQL
    ModifySQL.Strings = (
      'update knigi'
      'set'
      '  NAME = :NAME,'
      '  JANR_ID = :JANR_ID,'
      '  AVTOR_ID = :AVTOR_ID,'
      '  COST = :COST'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into knigi'
      '  (NAME, JANR_ID, AVTOR_ID, COST)'
      'values'
      '  (:NAME, :JANR_ID, :AVTOR_ID, :COST)')
    DeleteSQL.Strings = (
      'delete from knigi'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 136
  end
  object usqryAllJanri: TUpdateSQL
    ModifySQL.Strings = (
      'update janri'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into janri'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from janri'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 184
  end
  object usqryAllAvtori: TUpdateSQL
    ModifySQL.Strings = (
      'update avtori'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  STRANA_ID = :STRANA_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into avtori'
      '  (FAM, NAME, OTCH, STRANA_ID)'
      'values'
      '  (:FAM, :NAME, :OTCH, :STRANA_ID)')
    DeleteSQL.Strings = (
      'delete from avtori'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 232
  end
  object usqryAllStrani: TUpdateSQL
    ModifySQL.Strings = (
      'update strani'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into strani'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from strani'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 280
  end
  object dsQryAllIzdatelstva: TDataSource
    DataSet = qryAllizdatelstva
    Left = 112
    Top = 80
  end
  object dsQryAllKnigi: TDataSource
    DataSet = qryAllKnigi
    Left = 112
    Top = 128
  end
  object dsQryAllJanri: TDataSource
    DataSet = qryAllJanri
    Left = 112
    Top = 184
  end
  object dsQryAllAvtori: TDataSource
    DataSet = qryAllAvtori
    Left = 112
    Top = 232
  end
  object dsqryAllStrani: TDataSource
    DataSet = qryAllStrani
    Left = 112
    Top = 280
  end
  object dsqryAllVipusk: TDataSource
    DataSet = qryAllVipusk
    Left = 112
    Top = 328
  end
  object spDElete_Izdatelstvo: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_IZDATELSTVO'
    Left = 296
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IIZDATELSTVO_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_vipusk: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_VIPUSK'
    Left = 296
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IVIPUSK_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_avtor: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_AVTOR'
    Left = 296
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IAVTOR_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_Kniga: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_KNIGA'
    Left = 296
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IKNIGA_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_strana: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_STRANA'
    Left = 296
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'ISTRANA_NAME'
        ParamType = ptInput
      end>
  end
  object spDelete_Janr: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_JANR'
    Left = 296
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'IJANR_NAME'
        ParamType = ptInput
      end>
  end
  object qryVipuskK: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    DataSource = dsQryAllKnigi
    SQL.Strings = (
      'select * from vipusk'
      'where kniga_id=:id')
    UpdateObject = usqryVK
    Left = 400
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryVipuskKID: TIntegerField
      FieldName = 'ID'
      Origin = 'DBSEMINA.VIPUSK.ID'
    end
    object qryVipuskKLUKniga: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUKniga'
      LookupDataSet = qryTMPKnigi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'KNIGA_ID'
      Size = 40
      Lookup = True
    end
    object qryVipuskKKNIGA_ID: TIntegerField
      FieldName = 'KNIGA_ID'
      Origin = 'DBSEMINA.VIPUSK.KNIGA_ID'
      Visible = False
    end
    object qryVipuskKLUIzd: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      FieldKind = fkLookup
      FieldName = 'LUIzd'
      LookupDataSet = qryAllizdatelstva
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZD_ID'
      Size = 35
      Lookup = True
    end
    object qryVipuskKCOL_COPIES: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1087#1080#1081
      FieldName = 'COL_COPIES'
      Origin = 'DBSEMINA.VIPUSK.COL_COPIES'
    end
    object qryVipuskKIZD_ID: TIntegerField
      FieldName = 'IZD_ID'
      Origin = 'DBSEMINA.VIPUSK.IZD_ID'
      Visible = False
    end
    object qryVipuskKDATA_VIPUSKA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072
      FieldName = 'DATA_VIPUSKA'
      Origin = 'DBSEMINA.VIPUSK.DATA_VIPUSKA'
    end
  end
  object qryVipuski: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    DataSource = dsQryAllIzdatelstva
    SQL.Strings = (
      'select * from vipusk'
      'where izd_id=:id')
    UpdateObject = usqryVI
    Left = 400
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryVipuskiID: TIntegerField
      FieldName = 'ID'
      Origin = 'DBSEMINA.VIPUSK.ID'
    end
    object qryVipuskiLUkniga: TStringField
      DisplayLabel = #1050#1085#1080#1075#1072
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUkniga'
      LookupDataSet = qryAllKnigi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'KNIGA_ID'
      Size = 35
      Lookup = True
    end
    object qryVipuskiLUIZD: TStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUIZD'
      LookupDataSet = qryTMPizdatelstva
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZD_ID'
      Size = 40
      Lookup = True
    end
    object qryVipuskiKNIGA_ID: TIntegerField
      FieldName = 'KNIGA_ID'
      Origin = 'DBSEMINA.VIPUSK.KNIGA_ID'
      Visible = False
    end
    object qryVipuskiCOL_COPIES: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1086#1087#1080#1081
      FieldName = 'COL_COPIES'
      Origin = 'DBSEMINA.VIPUSK.COL_COPIES'
    end
    object qryVipuskiIZD_ID: TIntegerField
      FieldName = 'IZD_ID'
      Origin = 'DBSEMINA.VIPUSK.IZD_ID'
      Visible = False
    end
    object qryVipuskiDATA_VIPUSKA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072
      FieldName = 'DATA_VIPUSKA'
      Origin = 'DBSEMINA.VIPUSK.DATA_VIPUSKA'
    end
  end
  object qryAvtori: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    DataSource = dsqryAllStrani
    SQL.Strings = (
      'select * from avtori'
      'where strana_id=:id')
    UpdateObject = usQryAvtori
    Left = 400
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryAvtoriID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.AVTORI.ID'
    end
    object qryAvtoriFAM: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'FAM'
      Origin = 'DBSEMINA.AVTORI.FAM'
      Size = 50
    end
    object qryAvtoriNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBSEMINA.AVTORI.NAME'
      Size = 50
    end
    object qryAvtoriOTCH: TStringField
      FieldName = 'OTCH'
      Origin = 'DBSEMINA.AVTORI.OTCH'
      Size = 50
    end
    object qryAvtoriSTRANA_ID: TIntegerField
      FieldName = 'STRANA_ID'
      Origin = 'DBSEMINA.AVTORI.STRANA_ID'
      Visible = False
    end
  end
  object qryTMPKnigi: TQuery
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select *  from knigi')
    Left = 392
    Top = 320
  end
  object qryTMPizdatelstva: TQuery
    DatabaseName = 'dbSemina'
    SQL.Strings = (
      'select * from izdatelstva'
      '')
    Left = 400
    Top = 264
  end
  object qryKnigiA: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    DataSource = dsQryAllAvtori
    SQL.Strings = (
      'select * from knigi'
      'where avtor_id=:id')
    UpdateObject = usqryKnigiA
    Left = 400
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryKnigiAID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.KNIGI.ID'
    end
    object qryKnigiANAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBSEMINA.KNIGI.NAME'
      Size = 200
    end
    object qryKnigiALU: TStringField
      DisplayLabel = #1046#1072#1085#1088
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LU'
      LookupDataSet = qryAllJanri
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'JANR_ID'
      Size = 35
      Lookup = True
    end
    object qryKnigiAJANR_ID: TIntegerField
      FieldName = 'JANR_ID'
      Origin = 'DBSEMINA.KNIGI.JANR_ID'
      Visible = False
    end
    object qryKnigiAAVTOR_ID: TIntegerField
      FieldName = 'AVTOR_ID'
      Origin = 'DBSEMINA.KNIGI.AVTOR_ID'
      Visible = False
    end
    object qryKnigiACOST: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'COST'
      Origin = 'DBSEMINA.KNIGI.COST'
    end
  end
  object qryKnigiJ: TQuery
    CachedUpdates = True
    DatabaseName = 'dbSemina'
    DataSource = dsQryAllJanri
    SQL.Strings = (
      'select * from knigi'
      'where janr_id=:id')
    UpdateObject = usqryKnigiJ
    Left = 400
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object IntegerField1: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBSEMINA.KNIGI.ID'
    end
    object StringField1: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'DBSEMINA.KNIGI.NAME'
      Size = 200
    end
    object IntegerField2: TIntegerField
      FieldName = 'JANR_ID'
      Origin = 'DBSEMINA.KNIGI.JANR_ID'
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'AVTOR_ID'
      Origin = 'DBSEMINA.KNIGI.AVTOR_ID'
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'COST'
      Origin = 'DBSEMINA.KNIGI.COST'
    end
    object qryKnigiJLUAvt: TStringField
      DisplayLabel = #1040#1074#1090#1086#1088' ('#1092#1072#1084#1080#1083#1080#1103')'
      FieldKind = fkLookup
      FieldName = 'LUAvt'
      LookupDataSet = qryAllAvtori
      LookupKeyFields = 'ID'
      LookupResultField = 'FAM'
      KeyFields = 'AVTOR_ID'
      Size = 35
      Lookup = True
    end
  end
  object dsqryVipuskK: TDataSource
    DataSet = qryVipuskK
    Left = 464
    Top = 8
  end
  object dsqryVipuski: TDataSource
    DataSet = qryVipuski
    Left = 464
    Top = 56
  end
  object dsqryKnigiJ: TDataSource
    DataSet = qryKnigiJ
    Left = 464
    Top = 104
  end
  object dsqryKnigiA: TDataSource
    DataSet = qryKnigiA
    Left = 464
    Top = 152
  end
  object dsqryAvtori: TDataSource
    DataSet = qryAvtori
    Left = 464
    Top = 200
  end
  object usqryVK: TUpdateSQL
    ModifySQL.Strings = (
      'update vipusk'
      'set'
      '  KNIGA_ID = :KNIGA_ID,'
      '  COL_COPIES = :COL_COPIES,'
      '  IZD_ID = :IZD_ID,'
      '  DATA_VIPUSKA = :DATA_VIPUSKA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into vipusk'
      '  (KNIGA_ID, COL_COPIES, IZD_ID, DATA_VIPUSKA)'
      'values'
      '  (:KNIGA_ID, :COL_COPIES, :IZD_ID, :DATA_VIPUSKA)')
    DeleteSQL.Strings = (
      'delete from vipusk'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 8
  end
  object usqryVI: TUpdateSQL
    ModifySQL.Strings = (
      'update vipusk'
      'set'
      '  KNIGA_ID = :KNIGA_ID,'
      '  COL_COPIES = :COL_COPIES,'
      '  IZD_ID = :IZD_ID,'
      '  DATA_VIPUSKA = :DATA_VIPUSKA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into vipusk'
      '  (KNIGA_ID, COL_COPIES, IZD_ID, DATA_VIPUSKA)'
      'values'
      '  (:KNIGA_ID, :COL_COPIES, :IZD_ID, :DATA_VIPUSKA)')
    DeleteSQL.Strings = (
      'delete from vipusk'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 56
  end
  object usqryKnigiJ: TUpdateSQL
    ModifySQL.Strings = (
      'update knigi'
      'set'
      '  NAME = :NAME,'
      '  JANR_ID = :JANR_ID,'
      '  AVTOR_ID = :AVTOR_ID,'
      '  COST = :COST'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into knigi'
      '  (NAME, JANR_ID, AVTOR_ID, COST)'
      'values'
      '  (:NAME, :JANR_ID, :AVTOR_ID, :COST)')
    DeleteSQL.Strings = (
      'delete from knigi'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 104
  end
  object usqryKnigiA: TUpdateSQL
    ModifySQL.Strings = (
      'update knigi'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  JANR_ID = :JANR_ID,'
      '  AVTOR_ID = :AVTOR_ID,'
      '  COST = :COST'
      'where'
      '  ID = :OLD_ID and'
      '  NAME = :OLD_NAME and'
      '  JANR_ID = :OLD_JANR_ID and'
      '  AVTOR_ID = :OLD_AVTOR_ID and'
      '  COST = :OLD_COST')
    InsertSQL.Strings = (
      'insert into knigi'
      '  (ID, NAME, JANR_ID, AVTOR_ID, COST)'
      'values'
      '  (:ID, :NAME, :JANR_ID, :AVTOR_ID, :COST)')
    DeleteSQL.Strings = (
      'delete from knigi'
      'where'
      '  ID = :OLD_ID and'
      '  NAME = :OLD_NAME and'
      '  JANR_ID = :OLD_JANR_ID and'
      '  AVTOR_ID = :OLD_AVTOR_ID and'
      '  COST = :OLD_COST')
    Left = 528
    Top = 152
  end
  object usQryAvtori: TUpdateSQL
    ModifySQL.Strings = (
      'update avtori'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  STRANA_ID = :STRANA_ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into avtori'
      '  (FAM, NAME, OTCH, STRANA_ID)'
      'values'
      '  (:FAM, :NAME, :OTCH, :STRANA_ID)')
    DeleteSQL.Strings = (
      'delete from avtori'
      'where'
      '  ID = :OLD_ID')
    Left = 528
    Top = 200
  end
  object StoredProc: TStoredProc
    DatabaseName = 'dbSemina'
    StoredProcName = 'DELETE_KNIGA'
    Left = 224
    Top = 16
  end
end
