object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 289
  Top = 413
  Height = 255
  Width = 358
  object dbBooks: TDatabase
    AliasName = 'BooksDB'
    Connected = True
    DatabaseName = 'BooksDB'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=Ws14-12:d:\temp\Ln\DB.GDB'
      'USER NAME=SYSDBA'
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
      'ENABLE BCD=TRUE'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'WAIT ON LOCKS=FALSE'
      'COMMIT RETAIN=FALSE'
      'ROLE NAME='
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object qRelese: TQuery
    CachedUpdates = True
    DatabaseName = 'BooksDB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Relese')
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
    object qBooksCODE_BOOK: TIntegerField
      FieldName = 'CODE_BOOK'
      Origin = 'BOOKSDB.BOOKS.CODE_BOOK'
    end
    object qBooksNAME: TStringField
      FieldName = 'NAME'
      Origin = 'BOOKSDB.BOOKS.NAME'
      Size = 30
    end
    object qBooksCODE_GENRES: TIntegerField
      FieldName = 'CODE_GENRES'
      Origin = 'BOOKSDB.BOOKS.CODE_GENRES'
    end
    object qBooksCODE_AUTHORS: TIntegerField
      FieldName = 'CODE_AUTHORS'
      Origin = 'BOOKSDB.BOOKS.CODE_AUTHORS'
    end
    object qBooksPRICE: TBCDField
      FieldName = 'PRICE'
      Origin = 'BOOKSDB.BOOKS.PRICE'
      Precision = 9
      Size = 2
    end
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
    object qPublishingTELEPHONE: TSmallintField
      FieldName = 'TELEPHONE'
      Origin = 'BOOKSDB.PUBLISHING.TELEPHONE'
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
    object qGenresCODE_GENRES: TIntegerField
      FieldName = 'CODE_GENRES'
      Origin = 'BOOKSDB.GENRES.CODE_GENRES'
    end
    object qGenresNAME: TStringField
      FieldName = 'NAME'
      Origin = 'BOOKSDB.GENRES.NAME'
      Size = 30
    end
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
    object qAuthorsCODE_AUTHORS: TIntegerField
      FieldName = 'CODE_AUTHORS'
      Origin = 'BOOKSDB.AUTHORS.CODE_AUTHORS'
    end
    object qAuthorsSURNAME: TStringField
      FieldName = 'SURNAME'
      Origin = 'BOOKSDB.AUTHORS.SURNAME'
      Size = 30
    end
    object qAuthorsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'BOOKSDB.AUTHORS.NAME'
      Size = 30
    end
    object qAuthorsPATR: TStringField
      FieldName = 'PATR'
      Origin = 'BOOKSDB.AUTHORS.PATR'
      Size = 30
    end
    object qAuthorsCODE_COUNTRIES: TIntegerField
      FieldName = 'CODE_COUNTRIES'
      Origin = 'BOOKSDB.AUTHORS.CODE_COUNTRIES'
    end
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
    object qCountriesCODE_COUNTRIES: TIntegerField
      FieldName = 'CODE_COUNTRIES'
      Origin = 'BOOKSDB.COUNTRIES.CODE_COUNTRIES'
    end
    object qCountriesNAME: TStringField
      FieldName = 'NAME'
      Origin = 'BOOKSDB.COUNTRIES.NAME'
      Size = 30
    end
  end
  object udBooks: TUpdateSQL
    ModifySQL.Strings = (
      'update Books'
      'set'
      '  CODE_BOOK = :CODE_BOOK,'
      '  NAME = :NAME,'
      '  CODE_GENRES = :CODE_GENRES,'
      '  CODE_AUTHORS = :CODE_AUTHORS,'
      '  PRICE = :PRICE'
      'where'
      '  CODE_BOOK = :OLD_CODE_BOOK')
    InsertSQL.Strings = (
      'insert into Books'
      '  (CODE_BOOK, NAME, CODE_GENRES, CODE_AUTHORS, PRICE)'
      'values'
      '  (:CODE_BOOK, :NAME, :CODE_GENRES, :CODE_AUTHORS, :PRICE)')
    DeleteSQL.Strings = (
      'delete from Books'
      'where'
      '  CODE_BOOK = :OLD_CODE_BOOK')
    Left = 72
    Top = 120
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
    Top = 120
  end
  object udGenres: TUpdateSQL
    ModifySQL.Strings = (
      'update Genres'
      'set'
      '  CODE_GENRES = :CODE_GENRES,'
      '  NAME = :NAME'
      'where'
      '  CODE_GENRES = :OLD_CODE_GENRES')
    InsertSQL.Strings = (
      'insert into Genres'
      '  (CODE_GENRES, NAME)'
      'values'
      '  (:CODE_GENRES, :NAME)')
    DeleteSQL.Strings = (
      'delete from Genres'
      'where'
      '  CODE_GENRES = :OLD_CODE_GENRES')
    Left = 184
    Top = 120
  end
  object udAuthors: TUpdateSQL
    ModifySQL.Strings = (
      'update Authors'
      'set'
      '  CODE_AUTHORS = :CODE_AUTHORS,'
      '  SURNAME = :SURNAME,'
      '  NAME = :NAME,'
      '  PATR = :PATR,'
      '  CODE_COUNTRIES = :CODE_COUNTRIES'
      'where'
      '  CODE_AUTHORS = :OLD_CODE_AUTHORS')
    InsertSQL.Strings = (
      'insert into Authors'
      '  (CODE_AUTHORS, SURNAME, NAME, PATR, CODE_COUNTRIES)'
      'values'
      '  (:CODE_AUTHORS, :SURNAME, :NAME, :PATR, :CODE_COUNTRIES)')
    DeleteSQL.Strings = (
      'delete from Authors'
      'where'
      '  CODE_AUTHORS = :OLD_CODE_AUTHORS')
    Left = 240
    Top = 120
  end
  object udCountries: TUpdateSQL
    ModifySQL.Strings = (
      'update Countries'
      'set'
      '  CODE_COUNTRIES = :CODE_COUNTRIES,'
      '  NAME = :NAME'
      'where'
      '  CODE_COUNTRIES = :OLD_CODE_COUNTRIES')
    InsertSQL.Strings = (
      'insert into Countries'
      '  (CODE_COUNTRIES, NAME)'
      'values'
      '  (:CODE_COUNTRIES, :NAME)')
    DeleteSQL.Strings = (
      'delete from Countries'
      'where'
      '  CODE_COUNTRIES = :OLD_CODE_COUNTRIES')
    Left = 296
    Top = 120
  end
  object spBooksAuthors: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'BOOKSAUTHORS'
    Left = 152
    Top = 176
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
      end
      item
        DataType = ftString
        Name = 'ONAME'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'OPATR'
        ParamType = ptOutput
      end>
  end
  object spCode_Books: TStoredProc
    DatabaseName = 'BooksDB'
    StoredProcName = 'CODE_AUTHORS'
    Left = 248
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'INAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ICODE_AUTHORS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OCODE_BOOK'
        ParamType = ptOutput
      end>
  end
end
