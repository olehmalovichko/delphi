object DM: TDM
  OldCreateOrder = False
  Left = 354
  Top = 357
  Height = 197
  Width = 301
  object tsDPrivat: TtsDatabase
    AliasName = 'Ppppp'
    DatabaseName = 'KMH1'
    LoginPrompt = True
    Params.Strings = (
      'PASSWORD=aftnjy'
      'USER NAME=dba'
      'AutoCommit=Yes'
      'Dynamic=Yes'
      'EngineName=KMH1'
      'DatabaseName=PRIVAT'
      'StartCommand=dbclient -xtcpip{host=10.3.2.100} -ga')
    SessionName = 'SqlAny'
    CP1251 = False
    Left = 24
    Top = 24
  end
  object tsQDocuments: TtsQuery
    DatabaseName = 'KMH1'
    SQL.Strings = (
      'Select * from documents')
    Left = 96
    Top = 24
  end
  object DSDocuments: TDataSource
    DataSet = tsQDocuments
    Left = 176
    Top = 24
  end
  object tsQUpdate: TtsQuery
    DatabaseName = 'KMH1'
    SQL.Strings = (
      'update documents'
      #9'set id=:id,'
      #9'director=:director,'
      #9'zamdirector=:zamdirector,'
      #9'klient=:klient,'
      #9'klientk=:klientk,'
      #9'ndog=:ndog,'
      #9'dbeg=:dbeg,  '#9
      #9'dend=:dend,  '#9
      #9'summa=:summa, '#9
      #9'stavka=:stavka,       '
      #9'srokkred=:srokkred,'
      #9'ssc=:ssc,'
      #9'scpr=:scpr,'
      #9'pr_kred=:pr_kred,'
      #9'pr_proc=:pr_proc,      '
      #9'pasport=:pasport,      '
      #9'adress=:adress,    '
      #9'DOGZAL=:DOGZAL,       '
      #9'datdogpor=:datdogpor,'
      #9'yearprop=:yearprop,   '
      #9'monthprop=:monthprop,    '
      #9'dayprop=:dayprop,      '
      #9'celi=:celi,'
      #9'kredpred=:kredpred,'
      #9'shtraf=:shtraf,'
      #9'penapr=:penapr,        '#9#9
      #9'komisia=:komisia,'
      #9'dogpor=:dogpor,'
      #9'zalog=:zalog,'#9#9#9
      #9'CurrencyEdit3=:CurrencyEdit3,'
      #9'sumzalog=:sumzalog,'
      #9'ispoln=:ispoln,'
      #9'poruch1=:poruch1,'
      #9'fio_por1=:fio_por1,      '#9#9
      #9'poruch2=:poruch2,'
      #9'fio_por2=:fio_por2,      '#9#9
      #9'adress_por1=:adress_por1,'
      #9'adress_por2=:adress_por2,   '#9#9
      #9'CurrencyEdit1=:CurrencyEdit1,'
      #9'sumkomis=:sumkomis,'#9#9
      #9'plateg=:plateg,'
      'summacurrency=:summacurrency,'
      'stavkacurrency=:stavkacurrency,'
      'srokkredcurrency=:srokkredcurrency,'
      'kodval=:kodval,'
      'summaekv=:summaekv,'
      'summaekvcur=:summaekvcur,'
      'dirmagaz=:dirmagaz,'
      'nomkart=:nomkart,'
      'scvnebal1=:scvnebal1,'
      'scvnebal2=:scvnebal2,'
      'summastrah=:summastrah,'
      'summastrahcur=:summastrahcur,'
      'summastrahplat=:summastrahplat,'
      'summastrahplatcur=:summastrahplatcur,'
      'strahpolis=:strahpolis,'
      'strahpolisdata=:strahpolisdata,'
      'finsost=:finsost,'
      'dopsogl=:dopsogl,'
      'dopsogldata=:dopsogldata,'
      'idkod=:idkod,'
      'mestorab=:mestorab,'
      'dolgnost=:dolgnost,'
      'telefon=:telefon,'
      'datarogd=:datarogd,'
      'fammat=:fammat,'
      'suprname=:suprname,'
      'suprfam=:suprfam,'
      'suprotc=:suprotc,'
      'suprdolg=:suprdolg,'
      'serpasp=:serpasp,'
      'nompasp=:nompasp,'
      'kempasp=:kempasp,'
      'idkod1=:idkod1,'
      'idkod2=:idkod2,'
      'idkod3=:idkod3,'
      'idkod4=:idkod4,'
      'idkod5=:idkod5,'
      'idkod6=:idkod6,'
      'idkod7=:idkod7,'
      'idkod8=:idkod8,'
      'idkod9=:idkod9,'
      'idkod10=:idkod10,'
      'fam=:fam,'
      'nam=:nam,'
      'otc=:otc,'
      'datapasp=:datapasp'
      'where id=:id')
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'director'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zamdirector'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klient'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klientk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ndog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dbeg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dend'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stavka'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'srokkred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ssc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scpr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_kred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pasport'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOGZAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datdogpor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yearprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'monthprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dayprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kredpred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shtraf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'penapr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'komisia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dogpor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zalog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyEdit3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumzalog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ispoln'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'poruch1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fio_por1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'poruch2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fio_por2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress_por1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress_por2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyEdit1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumkomis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'plateg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summacurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stavkacurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'srokkredcurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodval'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summaekv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summaekvcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dirmagaz'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomkart'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scvnebal1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scvnebal2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrah'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahplat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahplatcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'strahpolis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'strahpolisdata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'finsost'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dopsogl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dopsogldata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mestorab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dolgnost'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datarogd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fammat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprname'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprfam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprotc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprdolg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serpasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nompasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kempasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datapasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object tsQInsert: TtsQuery
    DatabaseName = 'KMH1'
    SQL.Strings = (
      'insert into documents'
      '( '
      '                kodval,'
      #9'director,     '
      #9'zamdirector,  '
      #9'klient,       '
      #9'klientk,      '
      #9'ndog,  '
      #9'dbeg,  '
      #9'dend,  '
      #9'summa, '
      #9'stavka,       '
      #9'srokkred,     '
      #9'ssc,   '
      #9'scpr,  '
      #9'pr_kred,      '
      #9'pr_proc,      '
      #9'pasport,      '
      #9'adress,       '
      #9'DOGZAL,       '
      #9'datdogpor,    '
      #9'yearprop,     '
      #9'monthprop,    '
      #9'dayprop,      '
      #9'celi,  '
      #9'kredpred,     '
      #9'shtraf,       '
      #9'penapr,       '
      #9'komisia,      '
      #9'dogpor,       '
      #9'zalog, '
      #9'CurrencyEdit3,'
      #9'sumzalog,     '
      #9'ispoln,       '
      #9'poruch1,      '
      #9'fio_por1,     '
      #9'poruch2,      '
      #9'fio_por2,     '
      #9'adress_por1,  '
      #9'adress_por2,  '
      #9'CurrencyEdit1,'
      #9'sumkomis,     '
      #9'plateg,'
      '                summacurrency,'
      '                stavkacurrency,'
      '                srokkredcurrency,'
      'summaekv,'
      'summaekvcur,'
      'dirmagaz,'
      'nomkart,'
      'scvnebal1,'
      'scvnebal2,'
      'summastrah,'
      'summastrahcur,'
      'summastrahplat,'
      'summastrahplatcur,'
      'strahpolis,'
      'strahpolisdata,'
      'finsost,'
      'dopsogl,'
      'dopsogldata,'
      'idkod,'
      'mestorab,'
      'dolgnost,'
      'telefon,'
      'datarogd,'
      'fammat,'
      'suprname,'
      'suprfam,'
      'suprotc,'
      'suprdolg,'
      'serpasp,'
      'nompasp,'
      'kempasp,'
      'idkod1,'
      'idkod2,'
      'idkod3,'
      'idkod4,'
      'idkod5,'
      'idkod6,'
      'idkod7,'
      'idkod8,'
      'idkod9,'
      'idkod10,'
      'fam,'
      'nam,'
      'otc,'
      'datapasp'
      ')'
      'values'
      '('
      '                :kodval,'
      #9':director,'
      #9':zamdirector,'
      #9':klient,'
      #9':klientk,'
      #9':ndog,'
      #9':dbeg,  '#9
      #9':dend,  '#9
      #9':summa, '#9
      #9':stavka,       '
      #9':srokkred,'
      #9':ssc,'
      #9':scpr,'
      #9':pr_kred,'
      #9':pr_proc,      '
      #9':pasport,      '
      #9':adress,'
      #9':DOGZAL,'
      #9':datdogpor,'
      ':yearprop,'
      #9':monthprop,    '
      #9':dayprop,      '
      #9':celi,'
      #9':kredpred,'
      #9':shtraf,'
      #9':penapr,        '#9#9
      #9':komisia,'
      #9':dogpor,'
      #9':zalog,'#9#9#9
      #9':CurrencyEdit3,'
      #9':sumzalog,'
      #9':ispoln,'
      #9':poruch1,'
      #9':fio_por1,      '#9#9
      #9':poruch2,'
      #9':fio_por2,      '#9#9
      #9':adress_por1,'
      #9':adress_por2,   '#9#9
      #9':CurrencyEdit1,'
      #9':sumkomis,'#9#9
      #9':plateg,'
      '                :summacurrency,'
      '                :stavkacurrency,'
      '                :srokkredcurrency,'
      ':summaekv,'
      ':summaekvcur,'
      ':dirmagaz,'
      ':nomkart,'
      ':scvnebal1,'
      ':scvnebal2,'
      ':summastrah,'
      ':summastrahcur,'
      ':summastrahplat,'
      ':summastrahplatcur,'
      ':strahpolis,'
      ':strahpolisdata,'
      ':finsost,'
      ':dopsogl,'
      ':dopsogldata,'
      ':idkod,'
      ':mestorab,'
      ':dolgnost,'
      ':telefon,'
      ':datarogd,'
      ':fammat,'
      ':suprname,'
      ':suprfam,'
      ':suprotc,'
      ':suprdolg,'
      ':serpasp,'
      ':nompasp,'
      ':kempasp,'
      ':idkod1,'
      ':idkod2,'
      ':idkod3,'
      ':idkod4,'
      ':idkod5,'
      ':idkod6,'
      ':idkod7,'
      ':idkod8,'
      ':idkod9,'
      ':idkod10,'
      ':fam,'
      ':nam,'
      ':otc,'
      ':datapasp'
      ')')
    Left = 104
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kodval'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'director'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zamdirector'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klient'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'klientk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ndog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dbeg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dend'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stavka'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'srokkred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ssc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scpr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_kred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pasport'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOGZAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datdogpor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yearprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'monthprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dayprop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kredpred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shtraf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'penapr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'komisia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dogpor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zalog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyEdit3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumzalog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ispoln'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'poruch1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fio_por1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'poruch2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fio_por2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress_por1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adress_por2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyEdit1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumkomis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'plateg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summacurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stavkacurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'srokkredcurrency'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summaekv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summaekvcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dirmagaz'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nomkart'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scvnebal1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'scvnebal2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrah'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahplat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'summastrahplatcur'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'strahpolis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'strahpolisdata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'finsost'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dopsogl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dopsogldata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mestorab'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dolgnost'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datarogd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fammat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprname'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprfam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprotc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suprdolg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serpasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nompasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kempasp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkod10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nam'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datapasp'
        ParamType = ptUnknown
      end>
  end
  object tsQTMP: TtsQuery
    DatabaseName = 'KMH1'
    Left = 184
    Top = 88
  end
end
