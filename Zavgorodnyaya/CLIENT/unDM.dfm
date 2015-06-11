object DM: TDM
  OldCreateOrder = False
  Left = 106
  Top = 72
  Height = 436
  Width = 635
  object Database: TDatabase
    DatabaseName = 'dbZavgo'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=d:\zavgorodnyaya.GDB'
      'USER NAME=administrator'
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
      'PASSWORD=p')
    SessionName = 'Default'
    AfterConnect = DatabaseAfterConnect
    AfterDisconnect = DatabaseAfterDisconnect
    Left = 104
    Top = 24
  end
  object qVidi: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from vidi'
      'order by name')
    UpdateObject = usqVidi
    Left = 32
    Top = 88
    object qVidiID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.VIDI.ID'
    end
    object qVidiNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 35
      FieldName = 'NAME'
      Origin = 'DBZAVGO.VIDI.NAME'
      Size = 50
    end
  end
  object qTkani: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from tkani')
    UpdateObject = usqTkani
    Left = 32
    Top = 136
    object qTkaniID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.TKANI.ID'
    end
    object qTkaniLUVID: TStringField
      DisplayLabel = #1042#1080#1076' '#1090#1082#1072#1085#1080
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'LUVID'
      LookupDataSet = qVidi
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'VID_ID'
      Size = 35
      Lookup = True
    end
    object qTkaniVID_ID: TIntegerField
      FieldName = 'VID_ID'
      Origin = 'DBZAVGO.TKANI.VID_ID'
      Visible = False
    end
    object qTkaniCOLOR: TStringField
      DisplayLabel = #1062#1074#1077#1090
      DisplayWidth = 20
      FieldName = 'COLOR'
      Origin = 'DBZAVGO.TKANI.COLOR'
      Size = 30
    end
    object qTkaniCOST_FOR_1M: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' 1 '#1084#1077#1090#1088
      DisplayWidth = 5
      FieldName = 'COST_FOR_1M'
      Origin = 'DBZAVGO.TKANI.COST_FOR_1M'
    end
    object qTkaniPROIZVODITEL: TStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 30
      FieldName = 'PROIZVODITEL'
      Origin = 'DBZAVGO.TKANI.PROIZVODITEL'
      Size = 200
    end
  end
  object qizdeliya: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from izdeliya'
      'order by name')
    UpdateObject = usqizdeliya
    Left = 32
    Top = 184
    object qizdeliyaID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.IZDELIYA.ID'
    end
    object qizdeliyaNAME: TStringField
      DisplayLabel = #1048#1084#1103
      DisplayWidth = 25
      FieldName = 'NAME'
      Origin = 'DBZAVGO.IZDELIYA.NAME'
      Size = 50
    end
    object qizdeliyaCOST_POSHIVA: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1087#1086#1096#1080#1074#1072
      DisplayWidth = 5
      FieldName = 'COST_POSHIVA'
      Origin = 'DBZAVGO.IZDELIYA.COST_POSHIVA'
    end
    object qizdeliyaVID_MODELI: TStringField
      DisplayLabel = #1042#1080#1076' '#1084#1086#1076#1077#1083#1080
      DisplayWidth = 25
      FieldName = 'VID_MODELI'
      Origin = 'DBZAVGO.IZDELIYA.VID_MODELI'
      Size = 50
    end
  end
  object qrask_tk: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from rask_tk'
      '')
    UpdateObject = usqrask_tk
    Left = 32
    Top = 232
    object qrask_tkID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.RASK_TK.ID'
    end
    object qrask_tkLUIzd: TStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUIzd'
      LookupDataSet = qizdeliya
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZDELIE_ID'
      Size = 35
      Lookup = True
    end
    object qrask_tkIZDELIE_ID: TIntegerField
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.RASK_TK.IZDELIE_ID'
      Visible = False
    end
    object qrask_tkRAZMER: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 10
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.RASK_TK.RAZMER'
      Size = 30
    end
    object qrask_tkRASHOD: TFloatField
      DisplayLabel = #1056#1072#1089#1093#1086#1076
      DisplayWidth = 5
      FieldName = 'RASHOD'
      Origin = 'DBZAVGO.RASK_TK.RASHOD'
    end
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
    Top = 88
  end
  object usqTkani: TUpdateSQL
    ModifySQL.Strings = (
      'update tkani'
      'set'
      '  VID_ID = :VID_ID,'
      '  COLOR = :COLOR,'
      '  COST_FOR_1M = :COST_FOR_1M,'
      '  PROIZVODITEL = :PROIZVODITEL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into tkani'
      '  (VID_ID, COLOR, COST_FOR_1M, PROIZVODITEL)'
      'values'
      '  (:VID_ID, :COLOR, :COST_FOR_1M, :PROIZVODITEL)')
    DeleteSQL.Strings = (
      'delete from tkani'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 136
  end
  object usqizdeliya: TUpdateSQL
    ModifySQL.Strings = (
      'update izdeliya'
      'set'
      '  NAME = :NAME,'
      '  COST_POSHIVA = :COST_POSHIVA,'
      '  VID_MODELI = :VID_MODELI'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into izdeliya'
      '  (NAME, COST_POSHIVA, VID_MODELI)'
      'values'
      '  (:NAME, :COST_POSHIVA, :VID_MODELI)')
    DeleteSQL.Strings = (
      'delete from izdeliya'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 184
  end
  object usqrask_tk: TUpdateSQL
    ModifySQL.Strings = (
      'update rask_tk'
      'set'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  RAZMER = :RAZMER,'
      '  RASHOD = :RASHOD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into rask_tk'
      '  (IZDELIE_ID, RAZMER, RASHOD)'
      'values'
      '  (:IZDELIE_ID, :RAZMER, :RASHOD)')
    DeleteSQL.Strings = (
      'delete from rask_tk'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 232
  end
  object dsQVidi: TDataSource
    DataSet = qVidi
    Left = 112
    Top = 88
  end
  object dsQtkani: TDataSource
    DataSet = qTkani
    Left = 112
    Top = 136
  end
  object dsQizdeliya: TDataSource
    DataSet = qizdeliya
    Left = 112
    Top = 184
  end
  object dsQrask_tk: TDataSource
    DataSet = qrask_tk
    Left = 112
    Top = 232
  end
  object spDElete_vid: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_VID'
    Left = 288
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IVID_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_izdelie: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_IZDELIE'
    Left = 288
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IIZDELIE_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_rask: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_RASK'
    Left = 288
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IRASK_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_tkan: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_TKAN'
    Left = 288
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITKAN_ID'
        ParamType = ptInput
      end>
  end
  object qzakazi_by_zakazchik: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    DataSource = dsQZakazchiki
    SQL.Strings = (
      'select * from zakazi'
      'where zakazchik_id=:id')
    UpdateObject = usz_by_z
    Left = 408
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qzakazi_by_zakazchikID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.ZAKAZI.ID'
    end
    object qzakazi_by_zakazchikZAKAZCHIK_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
      DisplayWidth = 5
      FieldName = 'ZAKAZCHIK_ID'
      Origin = 'DBZAVGO.ZAKAZI.ZAKAZCHIK_ID'
    end
    object qzakazi_by_zakazchikIZDELIE_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      DisplayWidth = 5
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.ZAKAZI.IZDELIE_ID'
    end
    object qzakazi_by_zakazchikTKAN_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1082#1072#1085#1080
      DisplayWidth = 5
      FieldName = 'TKAN_ID'
      Origin = 'DBZAVGO.ZAKAZI.TKAN_ID'
    end
    object qzakazi_by_zakazchikCOL: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DisplayWidth = 5
      FieldName = 'COL'
      Origin = 'DBZAVGO.ZAKAZI.COL'
    end
    object qzakazi_by_zakazchikRAZMER: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.ZAKAZI.RAZMER'
      Size = 50
    end
    object qzakazi_by_zakazchikDATA_ZAKAZA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'DATA_ZAKAZA'
      Origin = 'DBZAVGO.ZAKAZI.DATA_ZAKAZA'
    end
    object qzakazi_by_zakazchikSROK_VIPOLNENIYA: TStringField
      DisplayLabel = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1077#1085#1080#1103
      FieldName = 'SROK_VIPOLNENIYA'
      Origin = 'DBZAVGO.ZAKAZI.SROK_VIPOLNENIYA'
      Size = 50
    end
  end
  object qtkani_by_vid: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    DataSource = dsQVidi
    SQL.Strings = (
      'select * from tkani'
      'where vid_id=:id')
    UpdateObject = ust_by_v
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qtkani_by_vidID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.TKANI.ID'
    end
    object qtkani_by_vidVID_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1080#1076#1072
      DisplayWidth = 5
      FieldName = 'VID_ID'
      Origin = 'DBZAVGO.TKANI.VID_ID'
    end
    object qtkani_by_vidCOLOR: TStringField
      DisplayLabel = #1062#1074#1077#1090
      DisplayWidth = 20
      FieldName = 'COLOR'
      Origin = 'DBZAVGO.TKANI.COLOR'
      Size = 30
    end
    object qtkani_by_vidCOST_FOR_1M: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' 1'#1084
      DisplayWidth = 5
      FieldName = 'COST_FOR_1M'
      Origin = 'DBZAVGO.TKANI.COST_FOR_1M'
    end
    object qtkani_by_vidPROIZVODITEL: TStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 50
      FieldName = 'PROIZVODITEL'
      Origin = 'DBZAVGO.TKANI.PROIZVODITEL'
      Size = 200
    end
  end
  object qzakazi_by_tkan: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    DataSource = dsQtkani
    SQL.Strings = (
      'select * from zakazi'
      'where tkan_id=:id')
    UpdateObject = usz_b_t
    Left = 400
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qzakazi_by_tkanID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.ZAKAZI.ID'
    end
    object qzakazi_by_tkanLUZakaz: TStringField
      DisplayLabel = #1047#1072#1082#1072#1079#1095#1080#1082
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUZakaz'
      LookupDataSet = qZakazchiki
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ZAKAZCHIK_ID'
      Size = 35
      Lookup = True
    end
    object qzakazi_by_tkanLuIzd: TStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LuIzd'
      LookupDataSet = qizdeliya
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZDELIE_ID'
      Size = 35
      Lookup = True
    end
    object qzakazi_by_tkanZAKAZCHIK_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
      DisplayWidth = 5
      FieldName = 'ZAKAZCHIK_ID'
      Origin = 'DBZAVGO.ZAKAZI.ZAKAZCHIK_ID'
      Visible = False
    end
    object qzakazi_by_tkanIZDELIE_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.ZAKAZI.IZDELIE_ID'
      Visible = False
    end
    object qzakazi_by_tkanTKAN_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1082#1072#1085#1080
      DisplayWidth = 5
      FieldName = 'TKAN_ID'
      Origin = 'DBZAVGO.ZAKAZI.TKAN_ID'
    end
    object qzakazi_by_tkanCOL: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DisplayWidth = 5
      FieldName = 'COL'
      Origin = 'DBZAVGO.ZAKAZI.COL'
    end
    object qzakazi_by_tkanRAZMER: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 10
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.ZAKAZI.RAZMER'
      Size = 50
    end
    object qzakazi_by_tkanDATA_ZAKAZA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'DATA_ZAKAZA'
      Origin = 'DBZAVGO.ZAKAZI.DATA_ZAKAZA'
    end
    object qzakazi_by_tkanSROK_VIPOLNENIYA: TStringField
      DisplayLabel = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      DisplayWidth = 12
      FieldName = 'SROK_VIPOLNENIYA'
      Origin = 'DBZAVGO.ZAKAZI.SROK_VIPOLNENIYA'
      Size = 50
    end
  end
  object dsqzakazi_by_tkan: TDataSource
    DataSet = qzakazi_by_tkan
    Left = 480
    Top = 80
  end
  object dsqtkani_by_vid: TDataSource
    DataSet = qtkani_by_vid
    Left = 488
    Top = 24
  end
  object dsqzakazi_by_zakazchik: TDataSource
    DataSet = qzakazi_by_zakazchik
    Left = 496
    Top = 128
  end
  object usz_by_z: TUpdateSQL
    ModifySQL.Strings = (
      'update zakazi'
      'set'
      '  ZAKAZCHIK_ID = :ZAKAZCHIK_ID,'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  TKAN_ID = :TKAN_ID,'
      '  COL = :COL,'
      '  RAZMER = :RAZMER,'
      '  DATA_ZAKAZA = :DATA_ZAKAZA,'
      '  SROK_VIPOLNENIYA = :SROK_VIPOLNENIYA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into zakazi'
      
        '  (ZAKAZCHIK_ID, IZDELIE_ID, TKAN_ID, COL, RAZMER, DATA_ZAKAZA, ' +
        'SROK_VIPOLNENIYA)'
      'values'
      
        '  (:ZAKAZCHIK_ID, :IZDELIE_ID, :TKAN_ID, :COL, :RAZMER, :DATA_ZA' +
        'KAZA, :SROK_VIPOLNENIYA)')
    DeleteSQL.Strings = (
      'delete from zakazi'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 128
  end
  object usz_b_t: TUpdateSQL
    ModifySQL.Strings = (
      'update zakazi'
      'set'
      '  ZAKAZCHIK_ID = :ZAKAZCHIK_ID,'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  TKAN_ID = :TKAN_ID,'
      '  COL = :COL,'
      '  RAZMER = :RAZMER,'
      '  DATA_ZAKAZA = :DATA_ZAKAZA,'
      '  SROK_VIPOLNENIYA = :SROK_VIPOLNENIYA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into zakazi'
      
        '  (ZAKAZCHIK_ID, IZDELIE_ID, TKAN_ID, COL, RAZMER, DATA_ZAKAZA, ' +
        'SROK_VIPOLNENIYA)'
      'values'
      
        '  (:ZAKAZCHIK_ID, :IZDELIE_ID, :TKAN_ID, :COL, :RAZMER, :DATA_ZA' +
        'KAZA, :SROK_VIPOLNENIYA)')
    DeleteSQL.Strings = (
      'delete from zakazi'
      'where'
      '  ID = :OLD_ID')
    Left = 552
    Top = 72
  end
  object ust_by_v: TUpdateSQL
    ModifySQL.Strings = (
      'update tkani'
      'set'
      '  VID_ID = :VID_ID,'
      '  COLOR = :COLOR,'
      '  COST_FOR_1M = :COST_FOR_1M,'
      '  PROIZVODITEL = :PROIZVODITEL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into tkani'
      '  (VID_ID, COLOR, COST_FOR_1M, PROIZVODITEL)'
      'values'
      '  (:VID_ID, :COLOR, :COST_FOR_1M, :PROIZVODITEL)')
    DeleteSQL.Strings = (
      'delete from tkani'
      'where'
      '  ID = :OLD_ID')
    Left = 560
    Top = 8
  end
  object qZakazchiki: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from vzakazchiki'
      '')
    UpdateObject = usQzakazchik
    Left = 32
    Top = 288
    object qZakazchikiID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.VZAKAZCHIKI.ID'
    end
    object qZakazchikiNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'DBZAVGO.VZAKAZCHIKI.NAME'
      Size = 50
    end
    object qZakazchikiADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 30
      FieldName = 'ADDRESS'
      Origin = 'DBZAVGO.VZAKAZCHIKI.ADDRESS'
      Size = 100
    end
    object qZakazchikiTELEPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 20
      FieldName = 'TELEPHONE'
      Origin = 'DBZAVGO.VZAKAZCHIKI.TELEPHONE'
      Size = 50
    end
  end
  object usQzakazchik: TUpdateSQL
    ModifySQL.Strings = (
      'update vzakazchiki'
      'set'
      '  NAME = :NAME,'
      '  ADDRESS = :ADDRESS,'
      '  TELEPHONE = :TELEPHONE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into vzakazchiki'
      '  (NAME, ADDRESS, TELEPHONE)'
      'values'
      '  (:NAME, :ADDRESS, :TELEPHONE)')
    DeleteSQL.Strings = (
      'delete from vzakazchiki'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 288
  end
  object dsQZakazchiki: TDataSource
    DataSet = qZakazchiki
    Left = 112
    Top = 288
  end
  object spDelete_zakazchik: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_ZAKAZCHIK'
    Left = 288
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IZAKAZCHIK_ID'
        ParamType = ptInput
      end>
  end
  object qZakazi: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    SQL.Strings = (
      'select * from zakazi'
      '')
    UpdateObject = usQzakazi
    Left = 32
    Top = 344
    object qZakaziID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.ZAKAZI.ID'
    end
    object qZakaziLUZ: TStringField
      DisplayLabel = #1047#1072#1082#1072#1079#1095#1080#1082
      FieldKind = fkLookup
      FieldName = 'LUZ'
      LookupDataSet = qZakazchiki
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ZAKAZCHIK_ID'
      Size = 35
      Lookup = True
    end
    object qZakaziZAKAZCHIK_ID: TIntegerField
      FieldName = 'ZAKAZCHIK_ID'
      Origin = 'DBZAVGO.ZAKAZI.ZAKAZCHIK_ID'
      Visible = False
    end
    object qZakaziLUizd: TStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LUizd'
      LookupDataSet = qizdeliya
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'IZDELIE_ID'
      Size = 35
      Lookup = True
    end
    object qZakaziIZDELIE_ID: TIntegerField
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.ZAKAZI.IZDELIE_ID'
      Visible = False
    end
    object qZakaziTKAN_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1082#1072#1085#1080
      FieldName = 'TKAN_ID'
      Origin = 'DBZAVGO.ZAKAZI.TKAN_ID'
    end
    object qZakaziCOL: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DisplayWidth = 5
      FieldName = 'COL'
      Origin = 'DBZAVGO.ZAKAZI.COL'
    end
    object qZakaziRAZMER: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.ZAKAZI.RAZMER'
      Size = 50
    end
    object qZakaziDATA_ZAKAZA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'DATA_ZAKAZA'
      Origin = 'DBZAVGO.ZAKAZI.DATA_ZAKAZA'
    end
    object qZakaziSROK_VIPOLNENIYA: TStringField
      DisplayLabel = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      DisplayWidth = 15
      FieldName = 'SROK_VIPOLNENIYA'
      Origin = 'DBZAVGO.ZAKAZI.SROK_VIPOLNENIYA'
      Size = 50
    end
  end
  object usQzakazi: TUpdateSQL
    ModifySQL.Strings = (
      'update zakazi'
      'set'
      '  ZAKAZCHIK_ID = :ZAKAZCHIK_ID,'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  TKAN_ID = :TKAN_ID,'
      '  COL = :COL,'
      '  RAZMER = :RAZMER,'
      '  DATA_ZAKAZA = :DATA_ZAKAZA,'
      '  SROK_VIPOLNENIYA = :SROK_VIPOLNENIYA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into zakazi'
      
        '  (ZAKAZCHIK_ID, IZDELIE_ID, TKAN_ID, COL, RAZMER, DATA_ZAKAZA, ' +
        'SROK_VIPOLNENIYA)'
      'values'
      
        '  (:ZAKAZCHIK_ID, :IZDELIE_ID, :TKAN_ID, :COL, :RAZMER, :DATA_ZA' +
        'KAZA, :SROK_VIPOLNENIYA)')
    DeleteSQL.Strings = (
      'delete from zakazi'
      'where'
      '  ID = :OLD_ID')
    Left = 200
    Top = 344
  end
  object dsQzakazi: TDataSource
    DataSet = qZakazi
    Left = 112
    Top = 344
  end
  object spDelete_zakaz: TStoredProc
    DatabaseName = 'dbZavgo'
    StoredProcName = 'DELETE_ZAKAZ'
    Left = 288
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IZAKAZ_ID'
        ParamType = ptInput
      end>
  end
  object qZakazi_by_izdelie: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    DataSource = dsQizdeliya
    SQL.Strings = (
      'select * from zakazi'
      'where izdelie_id=:id')
    UpdateObject = usZ_by_iz
    Left = 400
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object IntegerField1: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.ZAKAZI.ID'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
      DisplayWidth = 5
      FieldName = 'ZAKAZCHIK_ID'
      Origin = 'DBZAVGO.ZAKAZI.ZAKAZCHIK_ID'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      DisplayWidth = 5
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.ZAKAZI.IZDELIE_ID'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1082#1072#1085#1080
      DisplayWidth = 5
      FieldName = 'TKAN_ID'
      Origin = 'DBZAVGO.ZAKAZI.TKAN_ID'
    end
    object FloatField1: TFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DisplayWidth = 5
      FieldName = 'COL'
      Origin = 'DBZAVGO.ZAKAZI.COL'
    end
    object StringField1: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.ZAKAZI.RAZMER'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'DATA_ZAKAZA'
      Origin = 'DBZAVGO.ZAKAZI.DATA_ZAKAZA'
    end
    object StringField2: TStringField
      DisplayLabel = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1077#1085#1080#1103
      FieldName = 'SROK_VIPOLNENIYA'
      Origin = 'DBZAVGO.ZAKAZI.SROK_VIPOLNENIYA'
      Size = 50
    end
  end
  object dsqZakazi_by_izdelie: TDataSource
    DataSet = qZakazi_by_izdelie
    Left = 496
    Top = 200
  end
  object usZ_by_iz: TUpdateSQL
    ModifySQL.Strings = (
      'update zakazi'
      'set'
      '  ZAKAZCHIK_ID = :ZAKAZCHIK_ID,'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  TKAN_ID = :TKAN_ID,'
      '  COL = :COL,'
      '  RAZMER = :RAZMER,'
      '  DATA_ZAKAZA = :DATA_ZAKAZA,'
      '  SROK_VIPOLNENIYA = :SROK_VIPOLNENIYA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into zakazi'
      
        '  (ZAKAZCHIK_ID, IZDELIE_ID, TKAN_ID, COL, RAZMER, DATA_ZAKAZA, ' +
        'SROK_VIPOLNENIYA)'
      'values'
      
        '  (:ZAKAZCHIK_ID, :IZDELIE_ID, :TKAN_ID, :COL, :RAZMER, :DATA_ZA' +
        'KAZA, :SROK_VIPOLNENIYA)')
    DeleteSQL.Strings = (
      'delete from zakazi'
      'where'
      '  ID = :OLD_ID')
    Left = 568
    Top = 184
  end
  object qrask_by_izdelie: TQuery
    CachedUpdates = True
    DatabaseName = 'dbZavgo'
    DataSource = dsQizdeliya
    SQL.Strings = (
      'select * from rask_tk'
      'where izdelie_id=:id')
    UpdateObject = usRask_b_i
    Left = 400
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qrask_by_izdelieID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'DBZAVGO.RASK_TK.ID'
    end
    object qrask_by_izdelieIZDELIE_ID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      DisplayWidth = 5
      FieldName = 'IZDELIE_ID'
      Origin = 'DBZAVGO.RASK_TK.IZDELIE_ID'
    end
    object qrask_by_izdelieRAZMER: TStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'RAZMER'
      Origin = 'DBZAVGO.RASK_TK.RAZMER'
      Size = 30
    end
    object qrask_by_izdelieRASHOD: TFloatField
      DisplayLabel = #1056#1072#1089#1093#1086#1076
      DisplayWidth = 5
      FieldName = 'RASHOD'
      Origin = 'DBZAVGO.RASK_TK.RASHOD'
    end
  end
  object dsqRask_by_izdelie: TDataSource
    DataSet = qrask_by_izdelie
    Left = 488
    Top = 264
  end
  object usRask_b_i: TUpdateSQL
    ModifySQL.Strings = (
      'update rask_tk'
      'set'
      '  IZDELIE_ID = :IZDELIE_ID,'
      '  RAZMER = :RAZMER,'
      '  RASHOD = :RASHOD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into rask_tk'
      '  (IZDELIE_ID, RAZMER, RASHOD)'
      'values'
      '  (:IZDELIE_ID, :RAZMER, :RASHOD)')
    DeleteSQL.Strings = (
      'delete from rask_tk'
      'where'
      '  ID = :OLD_ID')
    Left = 576
    Top = 264
  end
end
