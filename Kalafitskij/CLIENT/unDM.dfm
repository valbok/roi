object DM: TDM
  OldCreateOrder = False
  Left = 99
  Top = 94
  Height = 363
  Width = 616
  object database: TDatabase
    DatabaseName = 'dbKala'
    DriverName = 'INTRBASE'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=d:\temp\kalafitskij.gdb'
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
    AfterConnect = databaseAfterConnect
    AfterDisconnect = databaseAfterDisconnect
    Left = 104
    Top = 24
  end
  object qryFiles: TQuery
    CachedUpdates = True
    DatabaseName = 'dbKala'
    SQL.Strings = (
      'select * from files'
      '')
    UpdateObject = usqf
    Left = 32
    Top = 88
    object qryFilesKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'DBKALA.FILES.KOD'
    end
    object qryFilesKOD_COMP: TIntegerField
      FieldName = 'KOD_COMP'
      Origin = 'DBKALA.FILES.KOD_COMP'
    end
    object qryFilesKOD_TYPE: TIntegerField
      FieldName = 'KOD_TYPE'
      Origin = 'DBKALA.FILES.KOD_TYPE'
    end
    object qryFilesKOD_USER: TIntegerField
      FieldName = 'KOD_USER'
      Origin = 'DBKALA.FILES.KOD_USER'
    end
    object qryFilesFSIZE: TFloatField
      FieldName = 'FSIZE'
      Origin = 'DBKALA.FILES.FSIZE'
    end
    object qryFilesDATE_CREATE: TDateTimeField
      FieldName = 'DATE_CREATE'
      Origin = 'DBKALA.FILES.DATE_CREATE'
    end
    object qryFilesDATE_MODIFIC: TDateTimeField
      FieldName = 'DATE_MODIFIC'
      Origin = 'DBKALA.FILES.DATE_MODIFIC'
    end
  end
  object qryUsers: TQuery
    CachedUpdates = True
    DatabaseName = 'dbKala'
    SQL.Strings = (
      'select * from users')
    UpdateObject = usqryUsers
    Left = 32
    Top = 136
    object qryUsersKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'DBKALA.USERS.KOD'
    end
    object qryUsersLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Origin = 'DBKALA.USERS.LASTNAME'
      Size = 50
    end
    object qryUsersFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Origin = 'DBKALA.USERS.FIRSTNAME'
      Size = 50
    end
    object qryUsersOTCH: TStringField
      FieldName = 'OTCH'
      Origin = 'DBKALA.USERS.OTCH'
      Size = 50
    end
    object qryUsersGROUPA: TStringField
      FieldName = 'GROUPA'
      Origin = 'DBKALA.USERS.GROUPA'
    end
  end
  object qryComps: TQuery
    CachedUpdates = True
    DatabaseName = 'dbKala'
    SQL.Strings = (
      'select * from comps'
      '')
    UpdateObject = usqryComps
    Left = 32
    Top = 184
    object qryCompsKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'DBKALA.COMPS.KOD'
    end
    object qryCompsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBKALA.COMPS.NAME'
      Size = 50
    end
    object qryCompsNUM_KLASS: TStringField
      FieldName = 'NUM_KLASS'
      Origin = 'DBKALA.COMPS.NUM_KLASS'
      Size = 15
    end
  end
  object qryTypes: TQuery
    CachedUpdates = True
    DatabaseName = 'dbKala'
    SQL.Strings = (
      'select * from types')
    UpdateObject = usqryTypes
    Left = 32
    Top = 232
    object qryTypesKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'DBKALA.TYPES.KOD'
    end
    object qryTypesNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DBKALA.TYPES.NAME'
      Size = 50
    end
    object qryTypesDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DBKALA.TYPES.DESCRIPTION'
      Size = 100
    end
  end
  object usqf: TUpdateSQL
    ModifySQL.Strings = (
      'update files'
      'set'
      '  KOD_COMP = :KOD_COMP,'
      '  KOD_TYPE = :KOD_TYPE,'
      '  KOD_USER = :KOD_USER,'
      '  FSIZE = :FSIZE,'
      '  DATE_CREATE = :DATE_CREATE,'
      '  DATE_MODIFIC = :DATE_MODIFIC'
      'where'
      '  KOD = :OLD_KOD')
    InsertSQL.Strings = (
      'insert into files'
      
        '  (KOD_COMP, KOD_TYPE, KOD_USER, FSIZE, DATE_CREATE, DATE_MODIFI' +
        'C)'
      'values'
      
        '  (:KOD_COMP, :KOD_TYPE, :KOD_USER, :FSIZE, :DATE_CREATE, :DATE_' +
        'MODIFIC)')
    DeleteSQL.Strings = (
      'delete from files'
      'where'
      '  KOD = :OLD_KOD')
    Left = 200
    Top = 88
  end
  object usqryUsers: TUpdateSQL
    ModifySQL.Strings = (
      'update users'
      'set'
      '  LASTNAME = :LASTNAME,'
      '  FIRSTNAME = :FIRSTNAME,'
      '  OTCH = :OTCH,'
      '  GROUPA = :GROUPA'
      'where'
      '  KOD = :OLD_KOD')
    InsertSQL.Strings = (
      'insert into users'
      '  (LASTNAME, FIRSTNAME, OTCH, GROUPA)'
      'values'
      '  (:LASTNAME, :FIRSTNAME, :OTCH, :GROUPA)')
    DeleteSQL.Strings = (
      'delete from users'
      'where'
      '  KOD = :OLD_KOD')
    Left = 200
    Top = 136
  end
  object usqryComps: TUpdateSQL
    ModifySQL.Strings = (
      'update comps'
      'set'
      '  NAME = :NAME,'
      '  NUM_KLASS = :NUM_KLASS'
      'where'
      '  KOD = :OLD_KOD')
    InsertSQL.Strings = (
      'insert into comps'
      '  (NAME, NUM_KLASS)'
      'values'
      '  (:NAME, :NUM_KLASS)')
    DeleteSQL.Strings = (
      'delete from comps'
      'where'
      '  KOD = :OLD_KOD')
    Left = 200
    Top = 184
  end
  object usqryTypes: TUpdateSQL
    ModifySQL.Strings = (
      'update types'
      'set'
      '  NAME = :NAME,'
      '  DESCRIPTION = :DESCRIPTION'
      'where'
      '  KOD = :OLD_KOD')
    InsertSQL.Strings = (
      'insert into types'
      '  (NAME, DESCRIPTION)'
      'values'
      '  (:NAME, :DESCRIPTION)')
    DeleteSQL.Strings = (
      'delete from types'
      'where'
      '  KOD = :OLD_KOD')
    Left = 200
    Top = 232
  end
  object dsQqryTypes: TDataSource
    DataSet = qryTypes
    Left = 112
    Top = 232
  end
  object spDELType: TStoredProc
    DatabaseName = 'dbKala'
    StoredProcName = 'DELTYPE'
    Left = 296
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IKOD_TYPE'
        ParamType = ptInput
      end>
  end
  object spDeLUSer: TStoredProc
    DatabaseName = 'dbKala'
    StoredProcName = 'DELTYPE'
    Left = 296
    Top = 136
  end
  object spDelComp: TStoredProc
    DatabaseName = 'dbKala'
    StoredProcName = 'DELCOMP'
    Left = 296
    Top = 184
  end
  object qryfiles_by_comp: TQuery
    DatabaseName = 'dbKala'
    DataSource = dsQryComps
    SQL.Strings = (
      'select * from files'
      'where kod_comp=:kod')
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KOD'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsQryFiles: TDataSource
    DataSet = qryFiles
    Left = 112
    Top = 88
  end
  object dsQryUsers: TDataSource
    DataSet = qryUsers
    Left = 112
    Top = 144
  end
  object dsQryComps: TDataSource
    DataSet = qryComps
    Left = 112
    Top = 192
  end
  object qryFiles_by_USer: TQuery
    DatabaseName = 'dbKala'
    DataSource = dsQryUsers
    SQL.Strings = (
      'select * from files'
      'where kod_user=:kod')
    Left = 392
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KOD'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qryFiles_by_Type: TQuery
    DatabaseName = 'dbKala'
    DataSource = dsQqryTypes
    SQL.Strings = (
      'select * from files'
      'where kod_type=:kod')
    Left = 392
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kod'
        ParamType = ptUnknown
      end>
  end
  object dsQryFiles_by_comp: TDataSource
    DataSet = qryfiles_by_comp
    Left = 496
    Top = 16
  end
  object dsQryFiles_by_User: TDataSource
    DataSet = qryFiles_by_USer
    Left = 496
    Top = 64
  end
  object dsQryFiles_by_Type: TDataSource
    DataSet = qryFiles_by_Type
    Left = 504
    Top = 112
  end
end
