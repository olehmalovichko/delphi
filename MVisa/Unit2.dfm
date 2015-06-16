object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 286
  Top = 125
  Height = 480
  Width = 696
  object QVisa: TtsQuery
    DatabaseName = 'Privat'
    SQL.Strings = (
      'select  TN,FIO,Ost_tek,LName, Card_No, ID_KL,CRED,'
      'TE_CREDIT,ID_CARD,EXP_END'
      'from visa_card where lname=:user'
      'order by DAT_BANK')
    Left = 104
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end>
  end
  object DSVISA: TDataSource
    DataSet = QVisa
    Left = 32
    Top = 72
  end
  object QReport: TtsQuery
    DatabaseName = 'Privat'
    DataSource = DSVISA
    SQL.Strings = (
      'select visa_cf_tranz.*,visa_cf_card.card_no'
      ' from visa_cf_tranz ,visa_cf_card'
      'where visa_cf_card.id_card=visa_cf_tranz.id_card and'
      
        'visa_cf_tranz.id_card=any(select id_card from visa_cf_card where' +
        ' id_kl=:ID_KL)'
      'and dat_ between :dat1 and :dat2'
      'order by dat_')
    Left = 104
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_KL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
  end
  object DSReport: TDataSource
    DataSet = QReport
    Left = 32
    Top = 144
  end
  object QKol: TtsQuery
    DatabaseName = 'Privat'
    DataSource = DSVISA
    SQL.Strings = (
      'select get_count_tranz(:id_kl) as kol  from dummy')
    Left = 32
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_kl'
        ParamType = ptUnknown
      end>
  end
  object QPlan: TtsQuery
    DatabaseName = 'Privat'
    DataSource = DSVISA
    SQL.Strings = (
      'SELECT (sum_DB/(sum_CR*:pPRC))*10000 as plan,'
      
        ' "get_count_tranz2"( :id_kl, :DB_CR1, :DatN1, :Datk1 ) as kol_DB' +
        ','
      '"get_sum_tranz2"( :id_kl, :DB_CR2, :DatN2, :Datk2 ) as sum_DB,'
      '"get_count_tranz2"( :id_kl, :DB_CR3, :DatN3, :Datk3 ) as kol_CR,'
      '"get_sum_tranz2"( :id_kl, :DB_CR4, :DatN4, :Datk4 ) as sum_CR'
      ''
      '')
    Left = 104
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pPRC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_kl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DB_CR1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DatN1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Datk1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_kl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DB_CR2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DatN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Datk2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_kl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DB_CR3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DatN3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Datk3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_kl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DB_CR4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DatN4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Datk4'
        ParamType = ptUnknown
      end>
  end
  object DSVISA_ID: TDataSource
    DataSet = QVISA_ID
    Left = 32
    Top = 208
  end
  object QVISA_ID: TtsQuery
    DatabaseName = 'Privat'
    RequestLive = True
    SQL.Strings = (
      'select * from visa_id')
    Left = 104
    Top = 208
  end
  object QZJVKP: TtsQuery
    DatabaseName = 'Privat'
    DataSource = DSVISA
    SQL.Strings = (
      'SELECT * FROM visa_cf_zjvkp '
      'where ID_CARD=:ID_CARD'
      'and DAT_BNK BETWEEN  :dat1 and  :dat2'
      'order by DAT_BNK')
    Left = 264
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CARD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
  end
  object DSZJVKP: TDataSource
    DataSet = QZJVKP
    Left = 200
    Top = 80
  end
  object DSEF_SLIP: TDataSource
    DataSet = QEF_SLIP
    Left = 192
    Top = 160
  end
  object QEF_SLIP: TtsQuery
    DatabaseName = 'Privat'
    DataSource = DSVISA
    SQL.Strings = (
      'select visa_ef_slip_All.*,RUS_NAME,ADRESS '
      'from visa_ef_slip_All,visa_ef_merch'
      'where'
      'visa_ef_merch.merch=visa_ef_slip_All.merch'
      'AND CH_NO=:Card_No'
      'AND PR_DATE BETWEEN  :dat1 and  :dat2'
      'ORDER BY DAT_PAY')
    Left = 256
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Card_No'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
  end
  object Privat: TtsDatabase
    AliasName = 'aaaaa'
    DatabaseName = 'Privat'
    LoginPrompt = True
    Params.Strings = (
      'USER NAME=dba'
      'PASSWORD=aftnjy'
      'AutoCommit=Yes'
      'Dynamic=Yes'
      'DataBaseName=privat'
      'EngineName=KMH1'
      'StartCommand=dbclient.exe -xtcpip{host=10.3.2.100}  -ga -ta60'
      '')
    SessionName = 'SqlAny'
    CP1251 = False
    Left = 32
    Top = 16
  end
  object Utils1: TUtils
    AnsiPropCase = False
    MonthDecline = False
    Language = lnRussian
    Valuta = vlUAH
    KopProp = kpKopeyki
    SumaProp = []
    Left = 120
    Top = 24
  end
end
