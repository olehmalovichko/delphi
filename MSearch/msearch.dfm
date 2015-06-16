object Form1: TForm1
  Left = 291
  Top = 113
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 160
    Top = 120
    Width = 441
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object CTQuery1: TCTQuery
    AutoCreateCalcFields = <>
    ReadOnly = True
    Aggregates = <>
    Constraints = <>
    Options = []
    FileOptions.UseEncode = False
    ObjectView = True
    Active = True
    SQLOptions = [soUseTransactionOnCache, soAutoFetchAll]
    TrimResults = False
    MsgDialogs = []
    ShowDbMessages = [smDbMsg, smDbErr]
    TypeErrCont = False
    TypeErrShow = True
    DbName = 'CTLibDatabase1'
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
      'select * from mfpb')
    UniDirectional = False
    RequestLive = False
    ParamCheck = True
    UseCTLibCursor = True
    AbortOnNoCols = True
    FetchMasterKeyValues = False
    CheckDups = False
    FetchRows = 75
    AutoGetParams = True
    Left = 184
    Top = 64
    ParamData = <>
  end
  object CTLibDatabase1: TCTLibDatabase
    MsgDialogs = []
    ShowDbMessages = [smDbMsg, smDbErr]
    EmulateASE = False
    DebugOptions = []
    Language = 'us_english'
    IniFile = 'C:\SYBASE\INI\SQL.INI'
    SortOrder = 'binary'
    CharSet = 'cp1251'
    Rdbms = 'Sybase SQL Server'
    Password = 'cfnehy'
    UserName = 'dbadmin'
    DbName = 'sybridge'
    ContextName = 'default'
    ServerName = 'KMH0'
    LoginPrompt = False
    ServerList.Strings = (
      'KMH0'
      'KMH0_RS'
      'KMH1')
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
    Left = 104
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = CTQuery1
    Left = 112
    Top = 120
  end
end
