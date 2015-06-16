object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 243
  Top = 190
  Height = 560
  Width = 866
  object DSDLPB: TDataSource
    DataSet = QDLPB
    Left = 32
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = tsQuery1
    Left = 32
    Top = 80
  end
  object DSFiks: TDataSource
    DataSet = QFiks
    Left = 40
    Top = 200
  end
  object DSSFiks: TDataSource
    DataSet = QSSFiks
    Left = 40
    Top = 264
  end
  object DSQBAD: TDataSource
    DataSet = QBAD
    Left = 40
    Top = 328
  end
  object KMH0: TCTLibDatabase
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    EmulateASE = False
    DebugOptions = []
    Language = 'us_english'
    IniFile = 'C:\SYBASE\INI\SQL.INI'
    SortOrder = 'binary'
    CharSet = 'cp1251'
    Rdbms = 'Sybase SQL Server'
    UserName = 'dbadmin'
    DbName = 'sybridge'
    ContextName = 'default'
    ServerName = 'KMH0'
    LoginPrompt = False
    ServerPrompt = False
    ServerShow = False
    ServerList.Strings = (
      'KMH0'
      'KMH1'
      'KMH9'
      'KMH9_BS'
      'KMH9_MS'
      'KMH9_XP')
    ConProps = []
    TransLevel = tlLevel1
    ProcOptions = []
    AbortOnPwdExp = False
    UseParams = False
    IdleTime = 0
    RuntimeConfig.UseConfigFile = False
    RuntimeConfig.ConfigByServerName = False
    LoopDelay = 0
    RetryCount = 0
    Left = 32
    Top = 16
  end
  object QTMP: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'NN'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'KK'
        ParamType = ptInput
      end>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      'select * from  gfpf'
      'where EGF_CPNC  between :NN  AND :KK'
      ' order by egf_cpnc'
      ''
      '')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NN'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'KK'
        ParamType = ptInput
      end>
  end
  object tsQuery1: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = []
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      '')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 104
    Top = 72
    ParamData = <>
  end
  object QDLPB: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      'select * from dlpb where BOS_PR_SYS='#39'c'#39)
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 104
    Top = 136
    ParamData = <>
  end
  object QFiks: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      '')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 104
    Top = 200
    ParamData = <>
  end
  object QSSFiks: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      '')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 104
    Top = 256
    ParamData = <>
  end
  object QBAD: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    Database = KMH0
    CachedUpdates = False
    Params = <>
    MaxRows = 0
    AutoDb = False
    UseDbParams = False
    UseExecCursor = False
    ExecCursor = crSQLWait
    PacketRecords = -1
    FetchIdentity = False
    NestedFields = <>
    OpenMethod = omServer
    UpdateMode = upWhereAll
    SQL.Strings = (
      '')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 104
    Top = 328
    ParamData = <>
  end
  object Utils1: TUtils
    AnsiPropCase = False
    MonthDecline = False
    Language = lnRussian
    Valuta = vlUAH
    KopProp = kpKopeyki
    SumaProp = []
    Left = 176
    Top = 21
  end
end
