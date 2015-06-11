object FootbDM: TFootbDM
  OldCreateOrder = False
  Left = 168
  Top = 144
  Height = 418
  Width = 547
  object FootbDB: TDatabase
    DatabaseName = 'Footb'
    DriverName = 'INTRBASE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=i:/roi/footdb.GDB'
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
    AfterConnect = FootbDBAfterConnect
    AfterDisconnect = FootbDBAfterDisconnect
    Left = 464
    Top = 16
  end
  object qCountries: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    SQL.Strings = (
      'Select * from Countries')
    UpdateObject = udCountries
    Left = 24
    Top = 72
    object qCountriesCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
      Origin = 'FOOTB.COUNTRIES.COUNTRY_ID'
    end
    object qCountriesCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'FOOTB.COUNTRIES.COUNTRY'
      Size = 30
    end
  end
  object qCities: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    SQL.Strings = (
      'Select * from Cities')
    UpdateObject = udCities
    Left = 88
    Top = 72
    object qCitiesCITY_ID: TIntegerField
      FieldName = 'CITY_ID'
      Origin = 'FOOTB.CITIES.CITY_ID'
    end
    object qCitiesCITY: TStringField
      FieldName = 'CITY'
      Origin = 'FOOTB.CITIES.CITY'
      Size = 30
    end
  end
  object qStadiums: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    SQL.Strings = (
      'Select * from Stadiums')
    UpdateObject = upStadiums
    Left = 144
    Top = 72
    object qStadiumsSTADIUM_ID: TIntegerField
      FieldName = 'STADIUM_ID'
      Origin = 'FOOTB.STADIUMS.STADIUM_ID'
    end
    object qStadiumsSTADIUM: TStringField
      FieldName = 'STADIUM'
      Origin = 'FOOTB.STADIUMS.STADIUM'
      Size = 30
    end
    object qStadiumsCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
      Origin = 'FOOTB.STADIUMS.COUNTRY_ID'
    end
    object qStadiumsMARK: TStringField
      FieldName = 'MARK'
      Origin = 'FOOTB.STADIUMS.MARK'
      Size = 2
    end
  end
  object qTeams: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    SQL.Strings = (
      'Select * from Teams')
    UpdateObject = udTeams
    Left = 200
    Top = 72
    object qTeamsTEAM_ID: TIntegerField
      FieldName = 'TEAM_ID'
      Origin = 'FOOTB.TEAMS.TEAM_ID'
    end
    object qTeamsTEAM: TStringField
      FieldName = 'TEAM'
      Origin = 'FOOTB.TEAMS.TEAM'
      Size = 30
    end
    object qTeamsCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
      Origin = 'FOOTB.TEAMS.COUNTRY_ID'
    end
    object qTeamsCITY_ID: TIntegerField
      FieldName = 'CITY_ID'
      Origin = 'FOOTB.TEAMS.CITY_ID'
    end
    object qTeamsSTADIUM_ID: TIntegerField
      FieldName = 'STADIUM_ID'
      Origin = 'FOOTB.TEAMS.STADIUM_ID'
    end
  end
  object qPlayers: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    RequestLive = True
    SQL.Strings = (
      'Select * from Players')
    UpdateObject = udPlayers
    Left = 256
    Top = 72
    object qPlayersPLAYER_ID: TIntegerField
      FieldName = 'PLAYER_ID'
      Origin = 'FOOTB.PLAYERS.PLAYER_ID'
    end
    object qPlayersLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Origin = 'FOOTB.PLAYERS.LASTNAME'
      Size = 15
    end
    object qPlayersFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Origin = 'FOOTB.PLAYERS.FIRSTNAME'
      Size = 15
    end
    object qPlayersBIRTH_DATE: TDateTimeField
      FieldName = 'BIRTH_DATE'
      Origin = 'FOOTB.PLAYERS.BIRTH_DATE'
    end
    object qPlayersBIRTH_PLACE: TIntegerField
      FieldName = 'BIRTH_PLACE'
      Origin = 'FOOTB.PLAYERS.BIRTH_PLACE'
    end
    object qPlayersHEIGHT: TStringField
      FieldName = 'HEIGHT'
      Origin = 'FOOTB.PLAYERS.HEIGHT'
      Size = 3
    end
    object qPlayersWEIGHT: TStringField
      FieldName = 'WEIGHT'
      Origin = 'FOOTB.PLAYERS.WEIGHT'
      Size = 2
    end
    object qPlayersAMPLUA: TStringField
      FieldName = 'AMPLUA'
      Origin = 'FOOTB.PLAYERS.AMPLUA'
      Size = 10
    end
    object qPlayersTEAM_ID: TIntegerField
      FieldName = 'TEAM_ID'
      Origin = 'FOOTB.PLAYERS.TEAM_ID'
    end
    object qPlayersNUMBER: TStringField
      FieldName = 'NUMBER'
      Origin = 'FOOTB.PLAYERS.NUMBER'
      Size = 2
    end
  end
  object qTransfer: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    RequestLive = True
    SQL.Strings = (
      'Select * from Transfer')
    UpdateObject = ust
    Left = 304
    Top = 72
    object qTransferTRANSFER_ID: TIntegerField
      FieldName = 'TRANSFER_ID'
      Origin = 'FOOTB.TRANSFER.TRANSFER_ID'
    end
    object qTransferPLAYER_ID: TIntegerField
      FieldName = 'PLAYER_ID'
      Origin = 'FOOTB.TRANSFER.PLAYER_ID'
    end
    object qTransferFROM_TEAM: TIntegerField
      FieldName = 'FROM_TEAM'
      Origin = 'FOOTB.TRANSFER.FROM_TEAM'
    end
    object qTransferTO_TEAM: TIntegerField
      FieldName = 'TO_TEAM'
      Origin = 'FOOTB.TRANSFER.TO_TEAM'
    end
    object qTransferTRANSFER_DATE: TDateTimeField
      FieldName = 'TRANSFER_DATE'
      Origin = 'FOOTB.TRANSFER.TRANSFER_DATE'
    end
    object qTransferTERM: TFloatField
      FieldName = 'TERM'
      Origin = 'FOOTB.TRANSFER.TERM'
    end
    object qTransferPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'FOOTB.TRANSFER.PRICE'
    end
  end
  object qPosts: TQuery
    CachedUpdates = True
    AutoRefresh = True
    DatabaseName = 'Footb'
    RequestLive = True
    SQL.Strings = (
      'Select * from Posts')
    UpdateObject = udPosts
    Left = 352
    Top = 80
    object qPostsPOST_ID: TIntegerField
      FieldName = 'POST_ID'
      Origin = 'FOOTB.POSTS.POST_ID'
    end
    object qPostsPOST: TStringField
      FieldName = 'POST'
      Origin = 'FOOTB.POSTS.POST'
      Size = 30
    end
  end
  object qStaff: TQuery
    CachedUpdates = True
    DatabaseName = 'Footb'
    RequestLive = True
    SQL.Strings = (
      'Select * from Staff')
    UpdateObject = udStaff
    Left = 400
    Top = 72
    object qStaffSTAFF_ID: TIntegerField
      FieldName = 'STAFF_ID'
      Origin = 'FOOTB.STAFF.STAFF_ID'
    end
    object qStaffLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Origin = 'FOOTB.STAFF.LASTNAME'
      Size = 15
    end
    object qStaffFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Origin = 'FOOTB.STAFF.FIRSTNAME'
      Size = 15
    end
    object qStaffBIRTH_DATE: TDateTimeField
      FieldName = 'BIRTH_DATE'
      Origin = 'FOOTB.STAFF.BIRTH_DATE'
    end
    object qStaffTEAM_ID: TIntegerField
      FieldName = 'TEAM_ID'
      Origin = 'FOOTB.STAFF.TEAM_ID'
    end
    object qStaffPOST_ID: TIntegerField
      FieldName = 'POST_ID'
      Origin = 'FOOTB.STAFF.POST_ID'
    end
  end
  object udCountries: TUpdateSQL
    ModifySQL.Strings = (
      'update Countries'
      'set'
      '  COUNTRY = :COUNTRY'
      'where'
      '  COUNTRY_ID = :OLD_COUNTRY_ID')
    InsertSQL.Strings = (
      'insert into Countries'
      '  (COUNTRY)'
      'values'
      '  (:COUNTRY)')
    DeleteSQL.Strings = (
      'delete from Countries'
      'where'
      '  COUNTRY_ID = :OLD_COUNTRY_ID')
    Left = 24
    Top = 136
  end
  object udCities: TUpdateSQL
    ModifySQL.Strings = (
      'update Cities'
      'set'
      '  CITY = :CITY'
      'where'
      '  CITY_ID = :OLD_CITY_ID')
    InsertSQL.Strings = (
      'insert into Cities'
      '  (CITY)'
      'values'
      '  (:CITY)')
    DeleteSQL.Strings = (
      'delete from Cities'
      'where'
      '  CITY_ID = :OLD_CITY_ID')
    Left = 88
    Top = 136
  end
  object upStadiums: TUpdateSQL
    ModifySQL.Strings = (
      'update Stadiums'
      'set'
      '  STADIUM = :STADIUM,'
      '  COUNTRY_ID = :COUNTRY_ID,'
      '  MARK = :MARK'
      'where'
      '  STADIUM_ID = :OLD_STADIUM_ID')
    InsertSQL.Strings = (
      'insert into Stadiums'
      '  (STADIUM, COUNTRY_ID, MARK)'
      'values'
      '  (:STADIUM, :COUNTRY_ID, :MARK)')
    DeleteSQL.Strings = (
      'delete from Stadiums'
      'where'
      '  STADIUM_ID = :OLD_STADIUM_ID')
    Left = 144
    Top = 136
  end
  object udTeams: TUpdateSQL
    ModifySQL.Strings = (
      'update Teams'
      'set'
      '  TEAM = :TEAM,'
      '  COUNTRY_ID = :COUNTRY_ID,'
      '  CITY_ID = :CITY_ID,'
      '  STADIUM_ID = :STADIUM_ID'
      'where'
      '  TEAM_ID = :OLD_TEAM_ID')
    InsertSQL.Strings = (
      'insert into Teams'
      '  (TEAM, COUNTRY_ID, CITY_ID, STADIUM_ID)'
      'values'
      '  (:TEAM, :COUNTRY_ID, :CITY_ID, :STADIUM_ID)')
    DeleteSQL.Strings = (
      'delete from Teams'
      'where'
      '  TEAM_ID = :OLD_TEAM_ID')
    Left = 200
    Top = 136
  end
  object udPlayers: TUpdateSQL
    ModifySQL.Strings = (
      'update Players'
      'set'
      '  LASTNAME = :LASTNAME,'
      '  FIRSTNAME = :FIRSTNAME,'
      '  BIRTH_DATE = :BIRTH_DATE,'
      '  BIRTH_PLACE = :BIRTH_PLACE,'
      '  HEIGHT = :HEIGHT,'
      '  WEIGHT = :WEIGHT,'
      '  AMPLUA = :AMPLUA,'
      '  TEAM_ID = :TEAM_ID,'
      '  NUMBER = :NUMBER'
      'where'
      '  PLAYER_ID = :OLD_PLAYER_ID')
    InsertSQL.Strings = (
      'insert into Players'
      
        '  (LASTNAME, FIRSTNAME, BIRTH_DATE, BIRTH_PLACE, HEIGHT, WEIGHT,' +
        ' AMPLUA, '
      '   TEAM_ID, NUMBER)'
      'values'
      
        '  (:LASTNAME, :FIRSTNAME, :BIRTH_DATE, :BIRTH_PLACE, :HEIGHT, :W' +
        'EIGHT, '
      '   :AMPLUA, :TEAM_ID, :NUMBER)')
    DeleteSQL.Strings = (
      'delete from Players'
      'where'
      '  PLAYER_ID = :OLD_PLAYER_ID')
    Left = 256
    Top = 136
  end
  object udPosts: TUpdateSQL
    ModifySQL.Strings = (
      'update Posts'
      'set'
      '  POST = :POST'
      'where'
      '  POST_ID = :OLD_POST_ID')
    InsertSQL.Strings = (
      'insert into Posts'
      '  (POST)'
      'values'
      '  (:POST)')
    DeleteSQL.Strings = (
      'delete from Posts'
      'where'
      '  POST_ID = :OLD_POST_ID')
    Left = 360
    Top = 136
  end
  object udStaff: TUpdateSQL
    ModifySQL.Strings = (
      'update Staff'
      'set'
      '  LASTNAME = :LASTNAME,'
      '  FIRSTNAME = :FIRSTNAME,'
      '  BIRTH_DATE = :BIRTH_DATE,'
      '  TEAM_ID = :TEAM_ID,'
      '  POST_ID = :POST_ID'
      'where'
      '  STAFF_ID = :OLD_STAFF_ID')
    InsertSQL.Strings = (
      'insert into Staff'
      '  (LASTNAME, FIRSTNAME, BIRTH_DATE, TEAM_ID, POST_ID)'
      'values'
      '  (:LASTNAME, :FIRSTNAME, :BIRTH_DATE, :TEAM_ID, :POST_ID)')
    DeleteSQL.Strings = (
      'delete from Staff'
      'where'
      '  STAFF_ID = :OLD_STAFF_ID')
    Left = 408
    Top = 136
  end
  object spAddTransfers_UpdatePlayers: TStoredProc
    DatabaseName = 'Footb'
    StoredProcName = 'ADDTRANSFERS_UPDATEPLAYERS'
    Left = 64
    Top = 200
  end
  object dsCities: TDataSource
    DataSet = qCities
    Left = 88
    Top = 32
  end
  object dsCountries: TDataSource
    DataSet = qCountries
    Left = 24
    Top = 32
  end
  object dsTeams: TDataSource
    DataSet = qTeams
    Left = 200
    Top = 32
  end
  object dsStadiums: TDataSource
    DataSet = qStadiums
    Left = 144
    Top = 32
  end
  object dsPlayers: TDataSource
    DataSet = qPlayers
    Left = 256
    Top = 32
  end
  object dsTransfer: TDataSource
    DataSet = qTransfer
    Left = 304
    Top = 32
  end
  object dsPosts: TDataSource
    DataSet = qPosts
    Left = 352
    Top = 32
  end
  object dsStaff: TDataSource
    DataSet = qStaff
    Left = 400
    Top = 32
  end
  object ust: TUpdateSQL
    ModifySQL.Strings = (
      'update Transfer'
      'set'
      '  PLAYER_ID = :PLAYER_ID,'
      '  FROM_TEAM = :FROM_TEAM,'
      '  TO_TEAM = :TO_TEAM,'
      '  TRANSFER_DATE = :TRANSFER_DATE,'
      '  TERM = :TERM,'
      '  PRICE = :PRICE'
      'where'
      '  TRANSFER_ID = :OLD_TRANSFER_ID')
    InsertSQL.Strings = (
      'insert into Transfer'
      '  (PLAYER_ID, FROM_TEAM, TO_TEAM, TRANSFER_DATE, TERM, PRICE)'
      'values'
      
        '  (:PLAYER_ID, :FROM_TEAM, :TO_TEAM, :TRANSFER_DATE, :TERM, :PRI' +
        'CE)')
    DeleteSQL.Strings = (
      'delete from Transfer'
      'where'
      '  TRANSFER_ID = :OLD_TRANSFER_ID')
    Left = 312
    Top = 136
  end
  object qCLeg_by_stad: TQuery
    DatabaseName = 'Footb'
    DataSource = dsTeams
    SQL.Strings = (
      
        'select count(p.player_id) from players p inner join teams t on p' +
        '.team_id=t.team_id'
      'where t.country_id <>p.BIRTH_PLACE and'
      't.team_id=:team_id')
    Left = 176
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TEAM_ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsqCL_by_s: TDataSource
    DataSet = qCLeg_by_stad
    Left = 272
    Top = 256
  end
  object qL_by_s: TQuery
    DatabaseName = 'Footb'
    DataSource = dsTeams
    SQL.Strings = (
      
        'select p.* from players p inner join teams t on p.team_id=t.team' +
        '_id'
      'where t.country_id <>p.BIRTH_PLACE and'
      't.team_id=:team_id')
    Left = 344
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TEAM_ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsqL_by_s: TDataSource
    DataSet = qL_by_s
    Left = 416
    Top = 272
  end
  object qS_by_Strana: TQuery
    DatabaseName = 'Footb'
    DataSource = dsCountries
    SQL.Strings = (
      'select * from stadiums'
      'where country_id=:country_id')
    Left = 64
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COUNTRY_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qS_by_StranaSTADIUM_ID: TIntegerField
      FieldName = 'STADIUM_ID'
      Origin = 'FOOTB.STADIUMS.STADIUM_ID'
    end
    object qS_by_StranaSTADIUM: TStringField
      FieldName = 'STADIUM'
      Origin = 'FOOTB.STADIUMS.STADIUM'
      Size = 30
    end
    object qS_by_StranaCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
      Origin = 'FOOTB.STADIUMS.COUNTRY_ID'
    end
    object qS_by_StranaMARK: TStringField
      FieldName = 'MARK'
      Origin = 'FOOTB.STADIUMS.MARK'
      Size = 2
    end
  end
  object dsqS_by_Strana: TDataSource
    DataSet = qS_by_Strana
    Left = 64
    Top = 312
  end
  object qT_by_Stad: TQuery
    DatabaseName = 'Footb'
    DataSource = dsqS_by_Strana
    SQL.Strings = (
      'select * from teams '
      'where STADIUM_ID=:STADIUM_ID')
    Left = 176
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STADIUM_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qT_by_StadTEAM_ID: TIntegerField
      FieldName = 'TEAM_ID'
      Origin = 'FOOTB.TEAMS.TEAM_ID'
    end
    object qT_by_StadTEAM: TStringField
      FieldName = 'TEAM'
      Origin = 'FOOTB.TEAMS.TEAM'
      Size = 30
    end
    object qT_by_StadCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
      Origin = 'FOOTB.TEAMS.COUNTRY_ID'
    end
    object qT_by_StadCITY_ID: TIntegerField
      FieldName = 'CITY_ID'
      Origin = 'FOOTB.TEAMS.CITY_ID'
    end
    object qT_by_StadSTADIUM_ID: TIntegerField
      FieldName = 'STADIUM_ID'
      Origin = 'FOOTB.TEAMS.STADIUM_ID'
    end
  end
  object dsqT_by_stad: TDataSource
    DataSet = qT_by_Stad
    Left = 264
    Top = 312
  end
  object dsStad_by_mark: TDataSource
    DataSet = qStad_by_mark
    Left = 416
    Top = 328
  end
  object qStad_by_mark: TQuery
    DatabaseName = 'Footb'
    SQL.Strings = (
      'select * from stadiums '
      'where mark >= :mark')
    Left = 344
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mark'
        ParamType = ptUnknown
      end>
  end
end
