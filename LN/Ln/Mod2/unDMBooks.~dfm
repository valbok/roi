object dmBooks: TdmBooks
  OldCreateOrder = False
  Left = 278
  Top = 162
  Height = 383
  Width = 391
  object dbBooks: TDatabase
    DatabaseName = 'BooksDB'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=i:\roi\db.gdb'
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
    AfterConnect = dbBooksAfterConnect
    Left = 16
  end
  object qRelese: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Relese')
    UpdateObject = udRelese
    Left = 16
    Top = 56
  end
  object qBooks: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Books')
    UpdateObject = udBooks
    Left = 72
    Top = 56
  end
  object qPublishing: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Publishing')
    UpdateObject = udPublishing
    Left = 128
    Top = 56
    object qPublishingCODE_PUBLISHING: TIntegerField
      FieldName = 'CODE_PUBLISHING'
      Origin = 'BOOKSDB.PUBLISHING.CODE_PUBLISHING'
    end
    object qPublishingNAME: TStringField
      FieldName = 'NAME'
      Origin = 'BOOKSDB.PUBLISHING.NAME'
      Size = 30
    end
    object qPublishingADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'BOOKSDB.PUBLISHING.ADDRESS'
      Size = 50
    end
    object qPublishingE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Origin = 'BOOKSDB.PUBLISHING.E_MAIL'
      Size = 30
    end
    object qPublishingMAIN_EDITOR: TStringField
      FieldName = 'MAIN_EDITOR'
      Origin = 'BOOKSDB.PUBLISHING.MAIN_EDITOR'
      Size = 30
    end
    object qPublishingTELEPHONE: TStringField
      FieldName = 'TELEPHONE'
      Origin = 'BOOKSDB.PUBLISHING.TELEPHONE'
      Size = 7
    end
  end
  object qGenres: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Genres')
    UpdateObject = udGenres
    Left = 184
    Top = 56
  end
  object qAuthors: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Authors')
    UpdateObject = udAuthors
    Left = 240
    Top = 56
  end
  object qCountries: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Countries')
    UpdateObject = udCountries
    Left = 296
    Top = 56
  end
  object udBooks: TUpdateSQL
    ModifySQL.Strings = (
      'update Books'
      'set'
      '  NAME = :NAME,'
      '  CODE_GENRES = :CODE_GENRES,'
      '  CODE_AUTHORS = :CODE_AUTHORS,'
      '  PRICE = :PRICE'
      'where'
      '  CODE_BOOK = :OLD_CODE_BOOK')
    InsertSQL.Strings = (
      'insert into Books'
      '  (NAME, CODE_GENRES, CODE_AUTHORS, PRICE)'
      'values'
      '  (:NAME, :CODE_GENRES, :CODE_AUTHORS, :PRICE)')
    DeleteSQL.Strings = (
      'delete from Books'
      'where'
      '  CODE_BOOK = :OLD_CODE_BOOK')
    Left = 72
    Top = 176
  end
  object udPublishing: TUpdateSQL
    ModifySQL.Strings = (
      'update Publishing'
      'set'
      '  CODE_PUBLISHING = :CODE_PUBLISHING,'
      '  NAME = :NAME,'
      '  ADDRESS = :ADDRESS,'
      '  TELEPHONE = :TELEPHONE,'
      '  E_MAIL = :E_MAIL,'
      '  MAIN_EDITOR = :MAIN_EDITOR'
      'where'
      '  CODE_PUBLISHING = :OLD_CODE_PUBLISHING')
    InsertSQL.Strings = (
      'insert into Publishing'
      
        '  (CODE_PUBLISHING, NAME, ADDRESS, TELEPHONE, E_MAIL, MAIN_EDITO' +
        'R)'
      'values'
      
        '  (:CODE_PUBLISHING, :NAME, :ADDRESS, :TELEPHONE, :E_MAIL, :MAIN' +
        '_EDITOR)')
    DeleteSQL.Strings = (
      'delete from Publishing'
      'where'
      '  CODE_PUBLISHING = :OLD_CODE_PUBLISHING')
    Left = 128
    Top = 176
  end
  object udGenres: TUpdateSQL
    ModifySQL.Strings = (
      'update Genres'
      'set'
      '  NAME = :NAME'
      'where'
      '  CODE_GENRES = :OLD_CODE_GENRES')
    InsertSQL.Strings = (
      'insert into Genres'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from Genres'
      'where'
      '  CODE_GENRES = :OLD_CODE_GENRES')
    Left = 184
    Top = 176
  end
  object udAuthors: TUpdateSQL
    ModifySQL.Strings = (
      'update Authors'
      'set'
      '  FAM = :FAM,'
      '  NAME = :NAME,'
      '  OTCH = :OTCH,'
      '  CODE_COUNTRIES = :CODE_COUNTRIES'
      'where'
      '  CODE_AUTHORS = :OLD_CODE_AUTHORS')
    InsertSQL.Strings = (
      'insert into Authors'
      '  (FAM, NAME, OTCH, CODE_COUNTRIES)'
      'values'
      '  (:FAM, :NAME, :OTCH, :CODE_COUNTRIES)')
    DeleteSQL.Strings = (
      'delete from Authors'
      'where'
      '  CODE_AUTHORS = :OLD_CODE_AUTHORS')
    Left = 240
    Top = 176
  end
  object udCountries: TUpdateSQL
    ModifySQL.Strings = (
      'update Countries'
      'set'
      '  NAME = :NAME'
      'where'
      '  CODE_COUNTRIES = :OLD_CODE_COUNTRIES')
    InsertSQL.Strings = (
      'insert into Countries'
      '  (NAME)'
      'values'
      '  (:NAME)')
    DeleteSQL.Strings = (
      'delete from Countries'
      'where'
      '  CODE_COUNTRIES = :OLD_CODE_COUNTRIES')
    Left = 296
    Top = 176
  end
  object spBooksAuthors: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'BOOKS_AUTHORS'
    Left = 128
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'ISTROKA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OSURNAME'
        ParamType = ptOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'ONAME'
        ParamType = ptOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'OPATR'
        ParamType = ptOutput
        Value = Null
      end>
  end
  object dsBooks: TDataSource
    DataSet = qBooks
    Left = 72
    Top = 120
  end
  object dsGenres: TDataSource
    DataSet = qGenres
    Left = 184
    Top = 120
  end
  object dsRelese: TDataSource
    DataSet = qRelese
    Left = 16
    Top = 120
  end
  object dsPublishing: TDataSource
    DataSet = qPublishing
    Left = 128
    Top = 120
  end
  object dsAuthors: TDataSource
    DataSet = qAuthors
    Left = 240
    Top = 120
  end
  object dsCountries: TDataSource
    DataSet = qCountries
    Left = 296
    Top = 120
  end
  object spDelete_Book: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_BOOK'
    Left = 72
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IBOOK_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_Publishing: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_PUBLISHING'
    Left = 128
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IPUBLISHING_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_Genres: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_GENRES'
    Left = 184
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IGENRES_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_author: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_AUTHOR'
    Left = 240
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IAUTHOR_ID'
        ParamType = ptInput
      end>
  end
  object spDelete_Country: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_COUNTRY'
    Left = 296
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ICOUNTRY_ID'
        ParamType = ptInput
      end>
  end
  object udRelese: TUpdateSQL
    ModifySQL.Strings = (
      'update Relese'
      'set'
      '  CODE_BOOK = :CODE_BOOK,'
      '  QUANTITY = :QUANTITY,'
      '  CODE_PUBLISHING = :CODE_PUBLISHING,'
      '  DATE_RELESE = :DATE_RELESE'
      'where'
      '  CODE_RELESE = :OLD_CODE_RELESE')
    InsertSQL.Strings = (
      'insert into Relese'
      '  (CODE_BOOK, QUANTITY, CODE_PUBLISHING, DATE_RELESE)'
      'values'
      '  (:CODE_BOOK, :QUANTITY, :CODE_PUBLISHING, :DATE_RELESE)')
    DeleteSQL.Strings = (
      'delete from Relese'
      'where'
      '  CODE_RELESE = :OLD_CODE_RELESE')
    Left = 16
    Top = 176
  end
  object Spdelete_Relese: TStoredProc
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    StoredProcName = 'DELETE_RELESE'
    Left = 16
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IRELESE_ID'
        ParamType = ptInput
      end>
  end
  object dsSPBA: TDataSource
    DataSet = qAuthors_
    Left = 200
    Top = 8
  end
  object qAuthors_: TQuery
    DatabaseName = 'BooksDB'
    SQL.Strings = (
      'select * from books_authors(:ISTROKA)')
    Left = 272
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ISTROKA'
        ParamType = ptUnknown
      end>
  end
end
