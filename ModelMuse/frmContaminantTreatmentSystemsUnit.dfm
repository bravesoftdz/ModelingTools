inherited frmContaminantTreatmentSystems: TfrmContaminantTreatmentSystems
  Caption = 'Contaminant Treatment Systems'
  ClientHeight = 395
  ClientWidth = 728
  ExplicitWidth = 744
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 18
  object splttr1: TJvNetscapeSplitter
    Left = 121
    Top = 0
    Height = 354
    Align = alLeft
    MinSize = 1
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
    ExplicitTop = -124
    ExplicitHeight = 350
  end
  object tvTreatmentSystems: TTreeView
    Left = 0
    Top = 0
    Width = 121
    Height = 354
    Align = alLeft
    Indent = 19
    TabOrder = 0
    OnChange = tvTreatmentSystemsChange
    ExplicitLeft = 88
    ExplicitTop = 96
    ExplicitHeight = 97
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 354
    Width = 728
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -64
    ExplicitTop = 350
    ExplicitWidth = 792
    DesignSize = (
      728
      41)
    object btnHelp: TBitBtn
      Left = 447
      Top = 6
      Width = 87
      Height = 27
      Anchors = [akRight, akBottom]
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 2
      ExplicitLeft = 511
    end
    object btnCancelBtn: TBitBtn
      Left = 633
      Top = 6
      Width = 87
      Height = 27
      Anchors = [akRight, akBottom]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 4
      ExplicitLeft = 697
    end
    object btnOkBtn: TBitBtn
      Left = 540
      Top = 6
      Width = 87
      Height = 27
      Anchors = [akRight, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 3
      ExplicitLeft = 604
    end
    object btnDeleteObservation: TButton
      Left = 88
      Top = 6
      Width = 77
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'Delete'
      Enabled = False
      TabOrder = 1
    end
    object btnAddObservation: TButton
      Left = 5
      Top = 6
      Width = 77
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'Add'
      TabOrder = 0
    end
  end
  object pnl3: TPanel
    Left = 131
    Top = 0
    Width = 597
    Height = 354
    Align = alClient
    Caption = 'pnl3'
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = -6
    ExplicitWidth = 728
    ExplicitHeight = 148
    object pgcMain: TPageControl
      Left = 1
      Top = 42
      Width = 595
      Height = 311
      Margins.Left = 0
      Margins.Top = 60
      Margins.Right = 0
      Margins.Bottom = 0
      ActivePage = tabWells
      Align = alClient
      TabOrder = 0
      object tabWells: TTabSheet
        Caption = 'Wells'
        ExplicitWidth = 718
        ExplicitHeight = 53
        inline frameWells: TframeGrid
          Left = 0
          Top = 0
          Width = 587
          Height = 278
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 587
          ExplicitHeight = 278
          inherited Panel: TPanel
            Top = 237
            Width = 587
            ExplicitTop = 237
            ExplicitWidth = 587
            inherited lbNumber: TLabel
              Width = 114
              Height = 18
              Caption = 'Number of times'
              ExplicitWidth = 114
              ExplicitHeight = 18
            end
            inherited sbAdd: TSpeedButton
              Left = 307
              ExplicitLeft = 308
            end
            inherited sbInsert: TSpeedButton
              Left = 363
              ExplicitLeft = 365
            end
            inherited sbDelete: TSpeedButton
              Left = 420
              ExplicitLeft = 421
            end
            inherited seNumber: TJvSpinEdit
              Height = 26
              ExplicitHeight = 26
            end
          end
          inherited Grid: TRbwDataGrid4
            Width = 587
            Height = 237
            ColCount = 4
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = '...'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 20
                CheckMax = False
                CheckMin = False
                ComboUsed = True
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = True
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = '...'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 20
                CheckMax = False
                CheckMin = False
                ComboUsed = True
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = False
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'Edit'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 35
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = False
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'Edit'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 20
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = False
              end>
            ExplicitLeft = 1
            ExplicitWidth = 587
            ExplicitHeight = 237
          end
        end
      end
      object tabExternalFlows: TTabSheet
        Caption = 'External Flows'
        ImageIndex = 2
        inline frameExternalFlows: TframeGrid
          Left = 0
          Top = 0
          Width = 587
          Height = 278
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 587
          ExplicitHeight = 278
          inherited Panel: TPanel
            Top = 237
            Width = 587
            ExplicitTop = 237
            ExplicitWidth = 587
            inherited lbNumber: TLabel
              Width = 114
              Height = 18
              Caption = 'Number of times'
              ExplicitWidth = 114
              ExplicitHeight = 18
            end
            inherited sbAdd: TSpeedButton
              Left = 307
              ExplicitLeft = 308
            end
            inherited sbInsert: TSpeedButton
              Left = 364
              ExplicitLeft = 365
            end
            inherited sbDelete: TSpeedButton
              Left = 420
              ExplicitLeft = 421
            end
            inherited seNumber: TJvSpinEdit
              Height = 26
              ExplicitHeight = 26
            end
          end
          inherited Grid: TRbwDataGrid4
            Width = 587
            Height = 237
            ColCount = 3
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = '...'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 20
                CheckMax = False
                CheckMin = False
                ComboUsed = True
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = True
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = '...'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 20
                CheckMax = False
                CheckMin = False
                ComboUsed = True
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = False
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 35
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = False
              end>
            ExplicitLeft = 1
            ExplicitWidth = 587
            ExplicitHeight = 237
          end
        end
      end
      object tabTreatments: TTabSheet
        Caption = 'Treatments'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 321
        object pnlTreatmentOptions: TPanel
          Left = 0
          Top = 0
          Width = 587
          Height = 41
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitWidth = 589
          object lblTreatmentOption: TLabel
            Left = 256
            Top = 11
            Width = 187
            Height = 18
            Caption = 'Treatment Option (ITRTINJ)'
          end
          object comboTreatmentOption: TComboBox
            Left = 2
            Top = 8
            Width = 239
            Height = 26
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 0
            Text = 'Each wells treated individually'
            Items.Strings = (
              'No treatment'
              'All wells treated alike'
              'Each wells treated individually')
          end
        end
        object pgcTreatments: TPageControl
          Left = 0
          Top = 41
          Width = 587
          Height = 237
          ActivePage = tabIndividualWellOptions
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 589
          ExplicitHeight = 280
          object tabDefaultOptions: TTabSheet
            Caption = 'Default Options'
            ExplicitWidth = 710
            ExplicitHeight = 39
            inline frameDefaultOptions: TframeGrid
              Left = 0
              Top = 0
              Width = 579
              Height = 204
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 710
              ExplicitHeight = 39
              inherited Panel: TPanel
                Top = 163
                Width = 579
                ExplicitTop = -2
                ExplicitWidth = 710
                inherited lbNumber: TLabel
                  Width = 114
                  Height = 18
                  Caption = 'Number of times'
                  ExplicitWidth = 114
                  ExplicitHeight = 18
                end
                inherited sbAdd: TSpeedButton
                  Left = 302
                  ExplicitLeft = 304
                end
                inherited sbInsert: TSpeedButton
                  Left = 358
                  ExplicitLeft = 360
                end
                inherited sbDelete: TSpeedButton
                  Left = 414
                  ExplicitLeft = 416
                end
                inherited seNumber: TJvSpinEdit
                  Height = 26
                  ExplicitHeight = 26
                end
              end
              inherited Grid: TRbwDataGrid4
                Width = 579
                Height = 163
                ColCount = 4
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = '...'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 20
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4Real
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = '...'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 20
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4Real
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = False
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = False
                  end
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = '...'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 20
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
                    LimitToList = True
                    MaxLength = 0
                    ParentButtonFont = False
                    PickList.Strings = (
                      'percentage change'
                      'concentration change'
                      'mass change'
                      'specified concentration')
                    WordWrapCaptions = False
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = False
                  end
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = True
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = False
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = False
                  end>
                ExplicitWidth = 710
                ExplicitHeight = 6
              end
            end
          end
          object tabIndividualWellOptions: TTabSheet
            Caption = 'Individual Well Options'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 247
            object splttr2: TJvNetscapeSplitter
              Left = 121
              Top = 0
              Height = 204
              Align = alLeft
              MinSize = 1
              Maximized = False
              Minimized = False
              ButtonCursor = crDefault
              ExplicitLeft = 129
              ExplicitHeight = 247
            end
            object tv1: TTreeView
              Left = 0
              Top = 0
              Width = 121
              Height = 204
              Align = alLeft
              Indent = 19
              TabOrder = 0
              ExplicitLeft = 8
              ExplicitHeight = 247
            end
            object pnl1: TPanel
              Left = 131
              Top = 0
              Width = 448
              Height = 204
              Align = alClient
              Caption = 'pnl1'
              TabOrder = 1
              ExplicitWidth = 579
              ExplicitHeight = 39
              object pnl2: TPanel
                Left = 1
                Top = 1
                Width = 446
                Height = 41
                Align = alTop
                TabOrder = 0
                ExplicitWidth = 577
                object cbUseDefaultOptions: TCheckBox
                  Left = 8
                  Top = 8
                  Width = 201
                  Height = 17
                  Caption = 'Use default options'
                  TabOrder = 0
                end
              end
              inline frameIndividualWellOptions: TframeGrid
                Left = 1
                Top = 42
                Width = 446
                Height = 161
                Align = alClient
                TabOrder = 1
                ExplicitLeft = 1
                ExplicitTop = 42
                ExplicitWidth = 577
                ExplicitHeight = 4
                inherited Panel: TPanel
                  Top = 120
                  Width = 446
                  ExplicitTop = -37
                  ExplicitWidth = 577
                  inherited lbNumber: TLabel
                    Width = 114
                    Height = 18
                    Caption = 'Number of times'
                    ExplicitWidth = 114
                    ExplicitHeight = 18
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 230
                    ExplicitLeft = 304
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 273
                    ExplicitLeft = 360
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 317
                    ExplicitLeft = 416
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 26
                    ExplicitHeight = 26
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 446
                  Height = 120
                  ColCount = 4
                  Columns = <
                    item
                      AutoAdjustRowHeights = False
                      ButtonCaption = '...'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 20
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = True
                      Format = rcf4Real
                      LimitToList = False
                      MaxLength = 0
                      ParentButtonFont = False
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = False
                      ButtonCaption = '...'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 20
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = True
                      Format = rcf4Real
                      LimitToList = False
                      MaxLength = 0
                      ParentButtonFont = False
                      WordWrapCaptions = False
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = False
                    end
                    item
                      AutoAdjustRowHeights = False
                      ButtonCaption = '...'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 20
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = True
                      Format = rcf4String
                      LimitToList = True
                      MaxLength = 0
                      ParentButtonFont = False
                      PickList.Strings = (
                        'percentage change'
                        'concentration change'
                        'mass change'
                        'specified concentration')
                      WordWrapCaptions = False
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = False
                    end
                    item
                      AutoAdjustRowHeights = False
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Style = []
                      ButtonUsed = True
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
                      Format = rcf4String
                      LimitToList = False
                      MaxLength = 0
                      ParentButtonFont = False
                      WordWrapCaptions = False
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = False
                    end>
                  ExplicitWidth = 577
                  ExplicitHeight = 6
                end
              end
            end
          end
        end
      end
    end
    object pnl4: TPanel
      Left = 1
      Top = 1
      Width = 595
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 336
      ExplicitTop = 32
      ExplicitWidth = 185
      object edSystemName: TLabeledEdit
        Left = 5
        Top = 8
        Width = 276
        Height = 26
        EditLabel.Width = 95
        EditLabel.Height = 18
        EditLabel.Caption = 'System name'
        LabelPosition = lpRight
        TabOrder = 0
      end
    end
  end
end
