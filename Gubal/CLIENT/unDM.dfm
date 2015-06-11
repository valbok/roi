object DM: TDM
  OldCreateOrder = False
  Left = 99
  Top = 94
  Height = 363
  Width = 616
  object db: TDatabase
    DatabaseName = 'dbGubal'
    DriverName = 'INTRBASE'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=c:\gubal.gdb'
      'USER NAME=gubal'
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
    AfterConnect = dbAfterConnect
    AfterDisconnect = dbAfterDisconnect
    Left = 104
    Top = 24
  end
  object _qPotrebitels: TQuery
    CachedUpdates = True
    DatabaseName = 'dbGubal'
    SQL.Strings = (
      'select * from potrebitels'
      'order by name')
    UpdateObject = usqp
    Left = 32
    Top = 88
    object _qPotrebitelsCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DBGUBAL.POTREBITELS.CODE'
    end
    object _qPotrebitelsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBGUBAL.POTREBITELS.NAME'
      Size = 50
    end
    object _qPotrebitelsADRES: TStringField
      FieldName = 'ADRES'
      Origin = 'DBGUBAL.POTREBITELS.ADRES'
      Size = 50
    end
    object _qPotrebitelsPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'DBGUBAL.POTREBITELS.PHONE'
    end
    object _qPotrebitelsCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Origin = 'DBGUBAL.POTREBITELS.COMMENTS'
      Size = 50
    end
  end
  object _qTovars: TQuery
    CachedUpdates = True
    DatabaseName = 'dbGubal'
    SQL.Strings = (
      'select * from tovars'
      'order by name')
    UpdateObject = usqrt
    Left = 32
    Top = 136
    object _qTovarsCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DBGUBAL.TOVARS.CODE'
    end
    object _qTovarsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBGUBAL.TOVARS.NAME'
      Size = 50
    end
    object _qTovarsIZMR: TStringField
      FieldName = 'IZMR'
      Origin = 'DBGUBAL.TOVARS.IZMR'
      Size = 18
    end
    object _qTovarsCOST_FOR_ONE: TFloatField
      FieldName = 'COST_FOR_ONE'
      Origin = 'DBGUBAL.TOVARS.COST_FOR_ONE'
    end
    object _qTovarsPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Origin = 'DBGUBAL.TOVARS.PRODUCER'
      Size = 50
    end
  end
  object _qNakladnies: TQuery
    CachedUpdates = True
    DatabaseName = 'dbGubal'
    SQL.Strings = (
      'select * from nakladnies'
      '')
    UpdateObject = usqn
    Left = 32
    Top = 184
    object _qNakladniesCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DBGUBAL.NAKLADNIES.CODE'
    end
    object _qNakladniesDAT: TDateTimeField
      FieldName = 'DAT'
      Origin = 'DBGUBAL.NAKLADNIES.DAT'
    end
    object _qNakladniesLUN: TStringField
      DisplayLabel = 'Potrebitel'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LUN'
      LookupDataSet = _qPotrebitels
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'POTREBITEL_CODE'
      Size = 50
      Lookup = True
    end
    object _qNakladniesPOTREBITEL_CODE: TIntegerField
      FieldName = 'POTREBITEL_CODE'
      Origin = 'DBGUBAL.NAKLADNIES.POTREBITEL_CODE'
    end
  end
  object qPostavkas: TQuery
    CachedUpdates = True
    DatabaseName = 'dbGubal'
    SQL.Strings = (
      'select * from postavkas')
    UpdateObject = usqPostavkas
    Left = 32
    Top = 232
    object qPostavkasCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DBGUBAL.POSTAVKAS.CODE'
    end
    object qPostavkasNAKL_CODE: TIntegerField
      FieldName = 'NAKL_CODE'
      Origin = 'DBGUBAL.POSTAVKAS.NAKL_CODE'
    end
    object qPostavkaslut: TStringField
      DisplayLabel = 'Tovar'
      FieldKind = fkLookup
      FieldName = 'lut'
      LookupDataSet = _qTovars
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'TOVAR_CODE'
      Size = 35
      Lookup = True
    end
    object qPostavkasTOVAR_CODE: TIntegerField
      FieldName = 'TOVAR_CODE'
      Origin = 'DBGUBAL.POSTAVKAS.TOVAR_CODE'
    end
    object qPostavkasCOL: TFloatField
      FieldName = 'COL'
      Origin = 'DBGUBAL.POSTAVKAS.COL'
    end
  end
  object usqp: TUpdateSQL
    ModifySQL.Strings = (
      'update potrebitels'
      'set'
      '  NAME = :NAME,'
      '  ADRES = :ADRES,'
      '  PHONE = :PHONE,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  CODE = :OLD_CODE')
    InsertSQL.Strings = (
      'insert into potrebitels'
      '  (NAME, ADRES, PHONE, COMMENTS)'
      'values'
      '  (:NAME, :ADRES, :PHONE, :COMMENTS)')
    DeleteSQL.Strings = (
      'delete from potrebitels'
      'where'
      '  CODE = :OLD_CODE')
    Left = 200
    Top = 88
  end
  object usqrt: TUpdateSQL
    ModifySQL.Strings = (
      'update tovars'
      'set'
      '  NAME = :NAME,'
      '  IZMR = :IZMR,'
      '  COST_FOR_ONE = :COST_FOR_ONE,'
      '  PRODUCER = :PRODUCER'
      'where'
      '  CODE = :OLD_CODE')
    InsertSQL.Strings = (
      'insert into tovars'
      '  (NAME, IZMR, COST_FOR_ONE, PRODUCER)'
      'values'
      '  (:NAME, :IZMR, :COST_FOR_ONE, :PRODUCER)')
    DeleteSQL.Strings = (
      'delete from tovars'
      'where'
      '  CODE = :OLD_CODE')
    Left = 200
    Top = 136
  end
  object usqn: TUpdateSQL
    ModifySQL.Strings = (
      'update nakladnies'
      'set'
      '  DAT = :DAT,'
      '  POTREBITEL_CODE = :POTREBITEL_CODE'
      'where'
      '  CODE = :OLD_CODE')
    InsertSQL.Strings = (
      'insert into nakladnies'
      '  (DAT, POTREBITEL_CODE)'
      'values'
      '  (:DAT, :POTREBITEL_CODE)')
    DeleteSQL.Strings = (
      'delete from nakladnies'
      'where'
      '  CODE = :OLD_CODE')
    Left = 200
    Top = 184
  end
  object usqPostavkas: TUpdateSQL
    ModifySQL.Strings = (
      'update postavkas'
      'set'
      '  NAKL_CODE = :NAKL_CODE,'
      '  TOVAR_CODE = :TOVAR_CODE,'
      '  COL = :COL'
      'where'
      '  CODE = :OLD_CODE')
    InsertSQL.Strings = (
      'insert into postavkas'
      '  (NAKL_CODE, TOVAR_CODE, COL)'
      'values'
      '  (:NAKL_CODE, :TOVAR_CODE, :COL)')
    DeleteSQL.Strings = (
      'delete from postavkas'
      'where'
      '  CODE = :OLD_CODE')
    Left = 200
    Top = 232
  end
  object dsQPotreBitels: TDataSource
    DataSet = qPotrebitels
    Left = 544
    Top = 88
  end
  object dsQTovars: TDataSource
    DataSet = qTovars
    Left = 544
    Top = 136
  end
  object dsQNakladnies: TDataSource
    DataSet = qNakladnies
    Left = 544
    Top = 200
  end
  object dsQPostavkas: TDataSource
    DataSet = qPostavkas
    Left = 112
    Top = 232
  end
  object spDELpotrebitel: TStoredProc
    DatabaseName = 'dbGubal'
    StoredProcName = 'DEL_POTREBITEL'
    Left = 296
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IPOTREBITEL_CODE'
        ParamType = ptInput
      end>
  end
  object spDeLTovar: TStoredProc
    DatabaseName = 'dbGubal'
    StoredProcName = 'DEL_TOVAR'
    Left = 296
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITOVAR_CODE'
        ParamType = ptInput
      end>
  end
  object spDelNakl: TStoredProc
    DatabaseName = 'dbGubal'
    StoredProcName = 'DEL_NAKL'
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INAKL_CODE'
        ParamType = ptInput
      end>
  end
  object qPotrebitels: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pqPotrebitels'
    Left = 392
    Top = 88
    object qPotrebitelsCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'DBGUBAL.POTREBITELS.CODE'
    end
    object qPotrebitelsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBGUBAL.POTREBITELS.NAME'
      Size = 50
    end
    object qPotrebitelsADRES: TStringField
      FieldName = 'ADRES'
      Origin = 'DBGUBAL.POTREBITELS.ADRES'
      Size = 50
    end
    object qPotrebitelsPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'DBGUBAL.POTREBITELS.PHONE'
    end
    object qPotrebitelsCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Origin = 'DBGUBAL.POTREBITELS.COMMENTS'
      Size = 50
    end
    object qPotrebitelsqNakl_by_potr: TDataSetField
      DisplayLabel = 'Nakladnie'
      FieldName = 'qNakl_by_potr'
    end
  end
  object pqPotrebitels: TDataSetProvider
    DataSet = _qPotrebitels
    Constraints = True
    Left = 472
    Top = 88
  end
  object qTovars: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pqTovars'
    Left = 392
    Top = 144
    object qTovarsCODE: TIntegerField
      FieldName = 'CODE'
    end
    object qTovarsNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qTovarsIZMR: TStringField
      FieldName = 'IZMR'
      Size = 18
    end
    object qTovarsCOST_FOR_ONE: TFloatField
      FieldName = 'COST_FOR_ONE'
    end
    object qTovarsPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Size = 50
    end
    object qTovarsqpost_by_tovar: TDataSetField
      DisplayLabel = 'Postavki'
      FieldName = 'qpost_by_tovar'
    end
  end
  object pqTovars: TDataSetProvider
    DataSet = _qTovars
    Constraints = True
    Left = 472
    Top = 144
  end
  object qNakladnies: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pqNakladnies'
    Left = 392
    Top = 200
    object qNakladniesCODE: TIntegerField
      FieldName = 'CODE'
    end
    object qNakladniesDAT: TDateTimeField
      FieldName = 'DAT'
    end
    object qNakladniesLUN: TStringField
      FieldName = 'LUN'
      ReadOnly = True
      Size = 50
    end
    object qNakladniesPOTREBITEL_CODE: TIntegerField
      FieldName = 'POTREBITEL_CODE'
    end
    object qNakladniesqPost_by_nakl: TDataSetField
      DisplayLabel = 'Postavki'
      FieldName = 'qPost_by_nakl'
    end
  end
  object pqNakladnies: TDataSetProvider
    DataSet = _qNakladnies
    Constraints = True
    Left = 472
    Top = 200
  end
  object qNakl_by_potr: TQuery
    DatabaseName = 'dbGubal'
    DataSource = dspotr
    SQL.Strings = (
      'select * from nakladnies'
      'where potrebitel_code=:code')
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dspotr: TDataSource
    DataSet = _qPotrebitels
    Left = 112
    Top = 88
  end
  object dsTvr: TDataSource
    DataSet = _qTovars
    Left = 112
    Top = 144
  end
  object dsNakl: TDataSource
    DataSet = _qNakladnies
    Left = 112
    Top = 192
  end
  object qPost_by_nakl: TQuery
    DatabaseName = 'dbGubal'
    DataSource = dsNakl
    SQL.Strings = (
      'select * from postavkas'
      'where nakl_code=:code')
    Left = 472
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qpost_by_tovar: TQuery
    DatabaseName = 'dbGubal'
    DataSource = dsTvr
    SQL.Strings = (
      'select * from postavkas'
      'where tovar_code=:code')
    Left = 552
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
end
