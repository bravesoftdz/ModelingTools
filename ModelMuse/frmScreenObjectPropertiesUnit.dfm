inherited frmScreenObjectProperties: TfrmScreenObjectProperties
  Left = 354
  Top = 158
  HelpType = htKeyword
  HelpKeyword = 'Object_Properties_Dialog_Box'
  ActiveControl = pageMain
  Caption = 'Object Properties'
  ClientHeight = 555
  ClientWidth = 784
  Font.Height = 19
  KeyPreview = True
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  ExplicitWidth = 800
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 19
  object pageMain: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 514
    ActivePage = tabSutraFeatures
    Align = alClient
    TabHeight = 28
    TabOrder = 0
    OnChange = pageMainChange
    object tabProperties: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Properties_Tab'
      Caption = 'Properties'
      DesignSize = (
        776
        476)
      object shpFillColor: TShape
        Left = 457
        Top = 215
        Width = 25
        Height = 25
      end
      object shpLineColor: TShape
        Left = 457
        Top = 194
        Width = 25
        Height = 3
      end
      object lblName: TLabel
        Left = 8
        Top = 56
        Width = 42
        Height = 19
        Caption = 'Name'
        FocusControl = edName
      end
      object lblZ: TLabel
        Left = 8
        Top = 384
        Width = 92
        Height = 19
        Caption = 'Z-coordinate'
        Enabled = False
      end
      object lblHighZ: TLabel
        Left = 8
        Top = 417
        Width = 145
        Height = 19
        Caption = 'Higher Z-coordinate'
        Enabled = False
      end
      object lblLowZ: TLabel
        Left = 8
        Top = 450
        Width = 141
        Height = 19
        Caption = 'Lower Z-coordinate'
        Enabled = False
      end
      object lblGridCellSize: TLabel
        Left = 8
        Top = 147
        Width = 126
        Height = 19
        Caption = 'Grid element size'
        Enabled = False
      end
      object lblMinimumCellFraction: TLabel
        Left = 296
        Top = 248
        Width = 130
        Height = 38
        Caption = 'Minimum fraction of cell length'
        WordWrap = True
      end
      object lblQuadTreeRefinement: TLabel
        Left = 289
        Top = 91
        Width = 149
        Height = 19
        Caption = 'Quadtree refinement'
      end
      object btnLineColor: TButton
        Left = 225
        Top = 180
        Width = 225
        Height = 30
        Caption = 'Set object line color'
        TabOrder = 8
        OnClick = btnColorClick
      end
      object btnFillColor: TButton
        Left = 225
        Top = 212
        Width = 225
        Height = 30
        Caption = 'Set object fill color'
        TabOrder = 10
        OnClick = btnColorClick
      end
      object cbIntersectedCells: TCheckBox
        Left = 8
        Top = 273
        Width = 282
        Height = 24
        AllowGrayed = True
        Caption = 'Set values of intersected cells'
        TabOrder = 13
        OnClick = cbIntersectedCellsClick
      end
      object cbEnclosedCells: TCheckBox
        Left = 8
        Top = 249
        Width = 265
        Height = 24
        AllowGrayed = True
        Caption = 'Set values of enclosed cells'
        TabOrder = 11
        OnClick = cbEnclosedCellsClick
      end
      object cbFillColor: TCheckBox
        Left = 8
        Top = 212
        Width = 209
        Height = 31
        AllowGrayed = True
        Caption = 'Color object interior'
        TabOrder = 9
        OnClick = cbFillColorClick
      end
      object cbLineColor: TCheckBox
        Left = 8
        Top = 180
        Width = 209
        Height = 31
        AllowGrayed = True
        Caption = 'Color object line'
        TabOrder = 7
        OnClick = cbLineColorClick
      end
      object edName: TEdit
        Left = 72
        Top = 55
        Width = 377
        Height = 27
        Cursor = crIBeam
        TabOrder = 2
        OnExit = edNameExit
      end
      object edHighZ: TRbwEdit
        Left = 201
        Top = 414
        Width = 476
        Height = 27
        Cursor = crIBeam
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        Enabled = False
        TabOrder = 19
        Text = '0'
        OnExit = edHighZExit
      end
      object edLowZ: TRbwEdit
        Left = 201
        Top = 447
        Width = 476
        Height = 27
        Cursor = crIBeam
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        Enabled = False
        TabOrder = 22
        Text = '0'
        OnExit = edLowZExit
      end
      object btnZ: TButton
        Left = 683
        Top = 378
        Width = 90
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'Edit F()...'
        Enabled = False
        TabOrder = 16
        OnClick = btnFormulaClick
      end
      object btnHighZ: TButton
        Left = 683
        Top = 413
        Width = 90
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'Edit F()...'
        Enabled = False
        TabOrder = 18
        OnClick = btnFormulaClick
      end
      object btnLowZ: TButton
        Left = 683
        Top = 446
        Width = 90
        Height = 30
        Anchors = [akTop, akRight]
        Caption = 'Edit F()...'
        Enabled = False
        TabOrder = 20
        OnClick = btnFormulaClick
      end
      object cbInterpolation: TCheckBox
        Left = 8
        Top = 296
        Width = 481
        Height = 24
        AllowGrayed = True
        Caption = 'Set values of cells by interpolation'
        TabOrder = 14
        OnClick = cbInterpolationClick
      end
      object rdeGridCellSize: TRbwDataEntry
        Left = 210
        Top = 144
        Width = 137
        Height = 30
        Cursor = crIBeam
        Color = clBtnFace
        Enabled = False
        TabOrder = 6
        Text = '1'
        OnExit = rdeGridCellSizeExit
        DataType = dtReal
        Max = 1.000000000000000000
        CheckMin = True
        ChangeDisabledColor = True
      end
      object rgElevationCount: TRadioGroup
        Left = 8
        Top = 326
        Width = 337
        Height = 49
        Caption = 'Number of Z formulas'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Zero'
          'One'
          'Two')
        TabOrder = 15
        OnClick = rgElevationCountClick
      end
      object cbSetGridCellSize: TCheckBox
        Left = 8
        Top = 121
        Width = 281
        Height = 17
        Caption = 'Use to set grid element size'
        TabOrder = 5
        OnClick = cbSetGridCellSizeClick
      end
      object rgEvaluatedAt: TRadioGroup
        Left = 8
        Top = 0
        Width = 297
        Height = 49
        Caption = 'Evaluated at'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Elements'
          'Nodes')
        TabOrder = 0
        OnClick = rgEvaluatedAtClick
      end
      object edZ: TRbwEdit
        Left = 201
        Top = 381
        Width = 476
        Height = 27
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        Enabled = False
        TabOrder = 17
        Text = '0'
        OnExit = edZExit
      end
      object jvplObjectInfo: TJvPageList
        Left = 487
        Top = 16
        Width = 274
        Height = 329
        ActivePage = jvspSingleObject
        PropagateEnable = False
        object jvspSingleObject: TJvStandardPage
          Left = 0
          Top = 0
          Width = 274
          Height = 329
          Caption = 'jvspSingleObject'
          object gbObjectInfo: TGroupBox
            Left = 0
            Top = 0
            Width = 274
            Height = 329
            Align = alClient
            Caption = 'Object information (not editable)'
            TabOrder = 0
            object lblObjectLength: TLabel
              Left = 16
              Top = 27
              Width = 94
              Height = 19
              Caption = 'Object length'
            end
            object lblObjectArea: TLabel
              Left = 16
              Top = 82
              Width = 84
              Height = 19
              Caption = 'Object area'
            end
            object lblObjectOrder: TLabel
              Left = 16
              Top = 137
              Width = 90
              Height = 19
              Caption = 'Object order'
            end
            object edObjectLength: TEdit
              Left = 16
              Top = 49
              Width = 145
              Height = 27
              ReadOnly = True
              TabOrder = 0
              Text = 'edObjectLength'
            end
            object edObjectArea: TEdit
              Left = 16
              Top = 104
              Width = 145
              Height = 27
              ReadOnly = True
              TabOrder = 1
              Text = 'edObjectLength'
            end
            object edObjectOrder: TEdit
              Left = 16
              Top = 159
              Width = 145
              Height = 27
              ReadOnly = True
              TabOrder = 2
              Text = 'edObjectLength'
            end
          end
        end
        object jvspMultipleObjects: TJvStandardPage
          Left = 0
          Top = 0
          Width = 274
          Height = 329
          Caption = 'jvspMultipleObjects'
          object lblNames: TLabel
            Left = 9
            Top = 3
            Width = 190
            Height = 19
            Caption = 'Names of selected objects'
          end
          object memoNames: TMemo
            Left = 9
            Top = 25
            Width = 257
            Height = 262
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            WordWrap = False
          end
        end
      end
      object cbLock: TCheckBox
        Left = 320
        Top = 16
        Width = 153
        Height = 17
        AllowGrayed = True
        Caption = 'Position locked'
        TabOrder = 1
        OnClick = cbLockClick
      end
      object cbDuplicatesAllowed: TCheckBox
        Left = 8
        Top = 88
        Width = 225
        Height = 17
        AllowGrayed = True
        Caption = 'Duplicates allowed'
        TabOrder = 3
        OnClick = cbDuplicatesAllowedClick
      end
      object rdeMinimumCellFraction: TRbwDataEntry
        Left = 296
        Top = 292
        Width = 145
        Height = 22
        TabOrder = 12
        Text = '0'
        OnChange = rdeMinimumCellFractionChange
        DataType = dtReal
        Max = 1.000000000000000000
        CheckMax = True
        CheckMin = True
        ChangeDisabledColor = True
      end
      object rdeQuadTreeRefinement: TRbwDataEntry
        Left = 233
        Top = 88
        Width = 50
        Height = 22
        TabOrder = 4
        Text = '0'
        DataType = dtInteger
        Max = 6.000000000000000000
        CheckMax = True
        CheckMin = True
        ChangeDisabledColor = True
      end
    end
    object tabLGR: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Footprint_Well_Tab'
      Caption = 'LGR'
      ImageIndex = 7
      object Splitter1: TSplitter
        Left = 0
        Top = 244
        Width = 776
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 245
        ExplicitWidth = 778
      end
      object pnlLgrTop: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 244
        Align = alClient
        TabOrder = 0
        object lblObjectUsedWithModels: TLabel
          Left = 4
          Top = 8
          Width = 115
          Height = 19
          Caption = 'Models affected'
        end
        object cbLgrAllModels: TCheckBox
          Left = 16
          Top = 32
          Width = 97
          Height = 17
          Caption = 'All models'
          TabOrder = 0
          OnClick = cbLgrAllModelsClick
        end
        object clbLgrUsedModels: TCheckListBox
          Left = 1
          Top = 62
          Width = 774
          Height = 181
          OnClickCheck = clbLgrUsedModelsClickCheck
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 19
          TabOrder = 1
        end
      end
      object pnlLgrBottom: TPanel
        Left = 0
        Top = 249
        Width = 776
        Height = 227
        Align = alBottom
        TabOrder = 1
        object lblLgrChildModel: TLabel
          Left = 4
          Top = 8
          Width = 357
          Height = 19
          Caption = 'Define boundary of child model (2D objects only)'
        end
        object clbChildModels: TJvxCheckListBox
          AlignWithMargins = True
          Left = 4
          Top = 40
          Width = 768
          Height = 183
          CheckKind = ckRadioButtons
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 19
          TabOrder = 0
          OnClickCheck = clbChildModelsClickCheck
          InternalVersion = 202
        end
      end
    end
    object tabDataSets: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Data_Sets_Tab'
      Caption = 'Data Sets'
      ImageIndex = 2
      object gbPhastInterpolation: TGroupBox
        Left = 0
        Top = 300
        Width = 776
        Height = 176
        Align = alBottom
        Caption = 'PHAST-style interpolation'
        TabOrder = 1
        DesignSize = (
          776
          176)
        inline framePhastInterpolationData: TframePhastInterpolation
          Left = 4
          Top = 26
          Width = 777
          Height = 143
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          TabStop = True
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 777
          ExplicitHeight = 143
          inherited lblDistance1: TLabel
            Top = 68
            Width = 78
            Height = 19
            ExplicitTop = 68
            ExplicitWidth = 78
            ExplicitHeight = 19
          end
          inherited lblDistance2: TLabel
            Top = 108
            Width = 78
            Height = 19
            ExplicitTop = 108
            ExplicitWidth = 78
            ExplicitHeight = 19
          end
          inherited lblValue1: TLabel
            Top = 68
            Width = 54
            Height = 19
            ExplicitTop = 68
            ExplicitWidth = 54
            ExplicitHeight = 19
          end
          inherited lblValue2: TLabel
            Top = 108
            Width = 54
            Height = 19
            ExplicitTop = 108
            ExplicitWidth = 54
            ExplicitHeight = 19
          end
          inherited lblMixtureFormula: TLabel
            Top = 68
            Width = 111
            Height = 19
            ExplicitTop = 68
            ExplicitWidth = 111
            ExplicitHeight = 19
          end
          inherited cbPhastInterpolation: TJvCheckBox
            Width = 238
            Height = 19
            OnClick = framePhastInterpolationDatacbPhastInterpolationClick
            HotTrackFont.Charset = ANSI_CHARSET
            HotTrackFont.Height = 19
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Pitch = fpVariable
            ExplicitWidth = 238
            ExplicitHeight = 19
          end
          inherited rdeDistance1: TRbwDataEntry
            Top = 68
            Height = 30
            TabOrder = 3
            OnExit = framePhastInterpolationDatardeDistance1Exit
            ExplicitTop = 68
            ExplicitHeight = 30
          end
          inherited rdeDistance2: TRbwDataEntry
            Left = 92
            Top = 104
            Height = 30
            OnExit = framePhastInterpolationDatardeDistance2Exit
            ExplicitLeft = 92
            ExplicitTop = 104
            ExplicitHeight = 30
          end
          inherited rdeValue1: TRbwDataEntry
            Top = 64
            Height = 30
            TabOrder = 2
            OnExit = framePhastInterpolationDatardeValue1Exit
            ExplicitTop = 64
            ExplicitHeight = 30
          end
          inherited rdeValue2: TRbwDataEntry
            Top = 104
            Height = 30
            OnExit = framePhastInterpolationDatardeValue2Exit
            ExplicitTop = 104
            ExplicitHeight = 30
          end
          inherited rgInterpolationDirection: TRadioGroup
            Left = 392
            Width = 297
            Height = 57
            OnClick = framePhastInterpolationDatargInterpolationDirectionClick
            ExplicitLeft = 392
            ExplicitWidth = 297
            ExplicitHeight = 57
          end
          inherited edMixFormula: TRbwEdit
            Top = 104
            Width = 281
            Height = 27
            Anchors = [akLeft, akTop, akRight]
            OnEnter = framePhastInterpolationDataedMixFormulaEnter
            OnExit = framePhastInterpolationDataedMixFormulaExit
            ExplicitTop = 104
            ExplicitWidth = 281
            ExplicitHeight = 27
          end
          inherited btnEditMixtureFormula: TButton
            Left = 679
            Top = 104
            Height = 30
            Anchors = [akTop, akRight]
            OnClick = framePhastInterpolationDatabtnEditMixtureFormulaClick
            ExplicitLeft = 679
            ExplicitTop = 104
            ExplicitHeight = 30
          end
        end
      end
      object pnlDataSets: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 300
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object JvNetscapeSplitter2: TJvNetscapeSplitter
          Left = 285
          Top = 0
          Height = 300
          Align = alLeft
          MinSize = 1
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
          ExplicitLeft = 216
          ExplicitTop = 192
          ExplicitHeight = 100
        end
        object Panel1: TPanel
          Left = 295
          Top = 0
          Width = 481
          Height = 300
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            481
            300)
          object lblDataSetFormula: TLabel
            Left = 6
            Top = 3
            Width = 59
            Height = 19
            Caption = 'Formula'
          end
          object btnDataSetFormula: TButton
            Left = 382
            Top = -3
            Width = 89
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Edit F()...'
            Enabled = False
            TabOrder = 0
            WordWrap = True
            OnClick = btnDataSetFormulaClick
          end
          object Panel3: TPanel
            Left = -4
            Top = 182
            Width = 485
            Height = 116
            Anchors = [akLeft, akBottom]
            BevelOuter = bvNone
            TabOrder = 2
            object lblDataComment: TLabel
              Left = 10
              Top = 8
              Width = 131
              Height = 19
              Caption = 'Data set comment'
            end
            object lblAssociatedModelDataSets: TLabel
              Left = 247
              Top = 8
              Width = 164
              Height = 19
              Caption = 'Associated model data'
            end
            object reDataSetComment: TRichEdit
              Left = 10
              Top = 30
              Width = 231
              Height = 80
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
              Zoom = 100
            end
            object reAssocModDataSets: TRichEdit
              Left = 247
              Top = 30
              Width = 226
              Height = 80
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 1
              Zoom = 100
            end
          end
          object reDataSetFormula: TRichEdit
            Left = 6
            Top = 28
            Width = 465
            Height = 153
            Anchors = [akLeft, akTop, akRight, akBottom]
            Enabled = False
            TabOrder = 1
            Zoom = 100
            OnChange = reDataSetFormulaChange
            OnEnter = reDataSetFormulaEnter
            OnExit = reDataSetFormulaExit
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 285
          Height = 300
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object tvDataSets: TTreeView
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 279
            Height = 218
            Margins.Bottom = 6
            Align = alClient
            HideSelection = False
            Indent = 21
            ReadOnly = True
            StateImages = ilCheckImages
            TabOrder = 0
            OnChange = tvDataSetsChange
            OnMouseDown = tvDataSetsMouseDown
          end
          object pnl1: TPanel
            Left = 0
            Top = 227
            Width = 285
            Height = 73
            Align = alBottom
            TabOrder = 1
            object lblLayerElevationExplaination: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 277
              Height = 65
              Align = alClient
              Caption = 
                'Layer elevations can only be specified using objects with Zero Z' +
                ' formulas.'
              WordWrap = True
              ExplicitWidth = 256
              ExplicitHeight = 57
            end
          end
        end
      end
    end
    object tabBoundaries: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'PHAST_Boundary_Conditions_Tab'
      Caption = 'PHAST Boundary Conditions'
      ImageIndex = 3
      object pcPhastBoundaries: TJvPageList
        Left = 0
        Top = 201
        Width = 776
        Height = 275
        ActivePage = tabBoundaryWell
        PropagateEnable = False
        Align = alClient
        OnChange = pcPhastBoundariesChange
        object tabBoundaryNone: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'None'
        end
        object tabBoundarySpecifiedHead: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'Specified Head'
          object pnlSolutionType: TPanel
            Left = 0
            Top = 0
            Width = 776
            Height = 81
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object lblSolutionType: TLabel
              Left = 16
              Top = 6
              Width = 114
              Height = 19
              Caption = 'Type of solution'
            end
            object comboSolutionType: TComboBox
              Left = 16
              Top = 40
              Width = 273
              Height = 27
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = 'Associated solution'
              OnChange = comboSolutionTypeChange
              Items.Strings = (
                'Associated solution'
                'Specified solution')
            end
          end
          object dgSpecifiedHead: TRbwDataGrid4
            Left = 0
            Top = 81
            Width = 776
            Height = 194
            Align = alClient
            ColCount = 6
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            TabOrder = 1
            OnDrawCell = dgBoundaryDrawCell
            OnSelectCell = dgBoundarySelectCell
            OnSetEditText = dgBoundarySetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            OnButtonClick = dgBoundaryButtonClick
            OnStateChange = dgBoundaryStateChanged
            ColorRangeSelection = False
            OnDistributeTextProgress = dgSpecifiedHeadDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = True
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 25
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 25
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = True
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20
              24
              20
              24)
            RowHeights = (
              24
              24)
          end
        end
        object tabBoundaryFlux: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'Flux'
          object dgBoundaryFlux: TRbwDataGrid4
            Left = 0
            Top = 0
            Width = 776
            Height = 275
            Align = alClient
            ColCount = 6
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            TabOrder = 0
            OnDrawCell = dgBoundaryDrawCell
            OnSelectCell = dgBoundarySelectCell
            OnSetEditText = dgBoundarySetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            OnButtonClick = dgBoundaryButtonClick
            OnStateChange = dgBoundaryStateChanged
            ColorRangeSelection = False
            OnDistributeTextProgress = dgBoundaryFluxDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = True
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 25
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = True
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20
              20
              20
              24)
            RowHeights = (
              24
              24)
          end
        end
        object tabBoundaryLeaky: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'Leaky'
          object pnlLeaky: TPanel
            Left = 0
            Top = 0
            Width = 776
            Height = 105
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            DesignSize = (
              776
              105)
            object lblLeakyHydraulicConductivity: TLabel
              Left = 8
              Top = 12
              Width = 160
              Height = 19
              Caption = 'Hydraulic conductivity'
            end
            object lblLeakyThickness: TLabel
              Left = 8
              Top = 60
              Width = 73
              Height = 19
              Caption = 'Thickness'
            end
            object edLeakyHydraulicConductivity: TEdit
              Left = 200
              Top = 8
              Width = 455
              Height = 27
              Cursor = crIBeam
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              OnExit = edLeakyHydraulicConductivityExit
            end
            object edLeakyThickness: TEdit
              Left = 200
              Top = 56
              Width = 455
              Height = 27
              Cursor = crIBeam
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              OnExit = edLeakyHydraulicConductivityExit
            end
            object btnLeakyHydraulicConductivity: TButton
              Left = 662
              Top = 8
              Width = 94
              Height = 30
              Anchors = [akTop, akRight]
              Caption = 'Edit F()...'
              TabOrder = 1
              OnClick = btnFormulaClick
            end
            object btnLeakyThickness: TButton
              Left = 662
              Top = 56
              Width = 94
              Height = 30
              Anchors = [akTop, akRight]
              Caption = 'Edit F()...'
              TabOrder = 3
              OnClick = btnFormulaClick
            end
          end
          object dgBoundaryLeaky: TRbwDataGrid4
            Left = 0
            Top = 105
            Width = 776
            Height = 170
            Align = alClient
            ColCount = 6
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            TabOrder = 1
            OnDrawCell = dgBoundaryDrawCell
            OnSelectCell = dgBoundarySelectCell
            OnSetEditText = dgBoundarySetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            OnButtonClick = dgBoundaryButtonClick
            OnStateChange = dgBoundaryStateChanged
            ColorRangeSelection = False
            OnDistributeTextProgress = dgBoundaryLeakyDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = True
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4String
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 25
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Boolean
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = True
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20
              20
              20
              24)
            RowHeights = (
              24
              24)
          end
        end
        object tabBoundaryRiver: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'River'
          object pnlRiver: TPanel
            Left = 0
            Top = 0
            Width = 776
            Height = 129
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object lblRiverHydraulicConductivity: TLabel
              Left = 8
              Top = 52
              Width = 86
              Height = 38
              Caption = 'Hydraulic conductivity'
              WordWrap = True
            end
            object lblRiverWidth: TLabel
              Left = 196
              Top = 64
              Width = 43
              Height = 19
              Caption = 'Width'
            end
            object lblRiverDepth: TLabel
              Left = 384
              Top = 64
              Width = 43
              Height = 19
              Caption = 'Depth'
            end
            object lblRiverBedThickness: TLabel
              Left = 574
              Top = 52
              Width = 68
              Height = 38
              Caption = 'Bed thickness'
              WordWrap = True
            end
            object lblRiverDescripton: TLabel
              Left = 8
              Top = 16
              Width = 42
              Height = 19
              Caption = 'Name'
            end
            object edRiverHydraulicConductivity: TEdit
              Left = 6
              Top = 96
              Width = 184
              Height = 27
              Cursor = crIBeam
              TabOrder = 5
              OnExit = edRiverExit
            end
            object edRiverWidth: TEdit
              Left = 196
              Top = 96
              Width = 184
              Height = 27
              Cursor = crIBeam
              TabOrder = 6
              OnExit = edRiverExit
            end
            object edRiverDepth: TEdit
              Left = 384
              Top = 96
              Width = 184
              Height = 27
              Cursor = crIBeam
              TabOrder = 7
              OnExit = edRiverExit
            end
            object edRiverBedThickness: TEdit
              Left = 574
              Top = 96
              Width = 184
              Height = 27
              Cursor = crIBeam
              TabOrder = 8
              OnExit = edRiverExit
            end
            object edRiverDescripton: TEdit
              Left = 88
              Top = 15
              Width = 394
              Height = 27
              Cursor = crIBeam
              TabOrder = 0
              OnExit = edRiverDescriptonExit
            end
            object btnRiverHydraulicConductivity: TButton
              Left = 98
              Top = 60
              Width = 92
              Height = 30
              Caption = 'Edit F()...'
              TabOrder = 1
              OnClick = btnFormulaClick
            end
            object btnRiverWidth: TButton
              Left = 288
              Top = 60
              Width = 92
              Height = 30
              Caption = 'Edit F()...'
              TabOrder = 2
              OnClick = btnFormulaClick
            end
            object btnRiverDepth: TButton
              Left = 476
              Top = 60
              Width = 92
              Height = 30
              Caption = 'Edit F()...'
              TabOrder = 3
              OnClick = btnFormulaClick
            end
            object btnRiverBedThickness: TButton
              Left = 664
              Top = 60
              Width = 94
              Height = 30
              Caption = 'Edit F()...'
              TabOrder = 4
              OnClick = btnFormulaClick
            end
          end
          object dgBoundaryRiver: TRbwDataGrid4
            Left = 0
            Top = 129
            Width = 776
            Height = 146
            Align = alClient
            ColCount = 4
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 19
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            ParentFont = False
            TabOrder = 1
            OnDrawCell = dgBoundaryDrawCell
            OnSelectCell = dgBoundarySelectCell
            OnSetEditText = dgBoundarySetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            OnButtonClick = dgBoundaryButtonClick
            ColorRangeSelection = False
            OnDistributeTextProgress = dgBoundaryRiverDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = True
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20
              24)
            RowHeights = (
              24
              24)
          end
        end
        object tabBoundaryWell: TJvStandardPage
          Left = 0
          Top = 0
          Width = 776
          Height = 275
          Caption = 'Well'
          object splitterWell: TSplitter
            Left = 431
            Top = 145
            Width = 5
            Height = 130
            ExplicitLeft = 0
            ExplicitTop = 296
            ExplicitHeight = 767
          end
          object pnlWellBoundary: TPanel
            Left = 0
            Top = 0
            Width = 776
            Height = 145
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            DesignSize = (
              776
              145)
            object lblWellDiameter: TLabel
              Left = 8
              Top = 48
              Width = 66
              Height = 19
              Caption = 'Diameter'
            end
            object lblWellLandSurfaceDatum: TLabel
              Left = 8
              Top = 88
              Width = 145
              Height = 19
              Caption = 'Land surface datum'
              Enabled = False
              FocusControl = rdeWellLandSurfaceDatum
            end
            object lblWellIntervalStyle: TLabel
              Left = 306
              Top = 76
              Width = 135
              Height = 19
              Caption = 'Specify interval by'
            end
            object lblWellIntervals: TLabel
              Left = 306
              Top = 113
              Width = 140
              Height = 19
              Caption = 'Number of intervals'
            end
            object lblWellDescription: TLabel
              Left = 8
              Top = 8
              Width = 77
              Height = 19
              Caption = 'Well name'
            end
            object rdeWellDiameter: TRbwDataEntry
              Left = 192
              Top = 48
              Width = 101
              Height = 30
              Cursor = crIBeam
              TabOrder = 2
              Text = '0'
              OnExit = edWellExit
              DataType = dtReal
              Max = 1.000000000000000000
              ChangeDisabledColor = True
            end
            object rdeWellLandSurfaceDatum: TRbwDataEntry
              Left = 192
              Top = 88
              Width = 101
              Height = 30
              Cursor = crIBeam
              Color = clBtnFace
              Enabled = False
              TabOrder = 4
              Text = '0'
              OnExit = edWellExit
              DataType = dtReal
              Max = 1.000000000000000000
              ChangeDisabledColor = True
            end
            object cbWellPumpAllocation: TCheckBox
              Left = 306
              Top = 41
              Width = 329
              Height = 31
              Caption = 'Allocate by pressure and mobility'
              TabOrder = 1
              OnClick = cbWellPumpAllocationClick
            end
            object comboWellIntervalStyle: TComboBox
              Left = 490
              Top = 73
              Width = 105
              Height = 27
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'Elevation'
              OnChange = comboWellIntervalStyleChange
              Items.Strings = (
                'Elevation'
                'Depth')
            end
            object seWellIntervals: TJvSpinEdit
              Left = 490
              Top = 106
              Width = 105
              Height = 27
              ButtonKind = bkClassic
              MaxValue = 2147483647.000000000000000000
              MinValue = 1.000000000000000000
              Value = 1.000000000000000000
              TabOrder = 5
              OnChange = seWellIntervalsChange
            end
            object edWellDescription: TEdit
              Left = 104
              Top = 8
              Width = 668
              Height = 27
              Cursor = crIBeam
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              OnExit = edWellExit
            end
          end
          object dgWellElevations: TRbwDataGrid4
            Left = 436
            Top = 145
            Width = 340
            Height = 130
            Align = alClient
            ColCount = 3
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 19
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            ParentFont = False
            TabOrder = 2
            OnSetEditText = dgWellElevationsSetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            ColorRangeSelection = False
            OnDistributeTextProgress = dgWellElevationsDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 25
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = False
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20)
            RowHeights = (
              24
              24)
          end
          object dgWell: TRbwDataGrid4
            Left = 0
            Top = 145
            Width = 431
            Height = 130
            Align = alLeft
            ColCount = 4
            DefaultColWidth = 20
            FixedCols = 1
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 19
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs, goAlwaysShowEditor]
            ParentFont = False
            TabOrder = 1
            OnDrawCell = dgBoundaryDrawCell
            OnSelectCell = dgBoundarySelectCell
            OnSetEditText = dgBoundarySetEditText
            ExtendedAutoDistributeText = False
            AutoMultiEdit = True
            AutoDistributeText = True
            AutoIncreaseColCount = False
            AutoIncreaseRowCount = True
            SelectedRowOrColumnColor = clAqua
            UnselectableColor = clBtnFace
            OnButtonClick = dgBoundaryButtonClick
            ColorRangeSelection = False
            OnDistributeTextProgress = dgWellDistributeTextProgress
            Columns = <
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
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
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = False
                ButtonWidth = 40
                CheckMax = False
                CheckMin = True
                ComboUsed = False
                Format = rcf4Real
                LimitToList = False
                MaxLength = 0
                ParentButtonFont = False
                WordWrapCaptions = False
                WordWrapCells = False
                CaseSensitivePicklist = False
                CheckStyle = csCheck
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end
              item
                AutoAdjustRowHeights = False
                ButtonCaption = 'F()'
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'MS Sans Serif'
                ButtonFont.Pitch = fpVariable
                ButtonFont.Style = []
                ButtonUsed = True
                ButtonWidth = 40
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
                AutoAdjustColWidths = True
              end>
            WordWrapRowCaptions = False
            ColWidths = (
              20
              20
              20
              24)
            RowHeights = (
              24
              24)
          end
        end
      end
      object pnlBoundaries: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 201
        HelpType = htKeyword
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object lblBoundaryTimes: TLabel
          Left = 0
          Top = 172
          Width = 119
          Height = 19
          Caption = 'Number of times'
        end
        object rgBoundaryType: TRadioGroup
          Left = 0
          Top = -3
          Width = 267
          Height = 166
          Caption = 'Boundary type'
          ItemIndex = 0
          Items.Strings = (
            'None'
            'Specified head'
            'Flux boundary'
            'Leaky boundary'
            'River boundary'
            'Well boundary')
          TabOrder = 0
          OnClick = rgBoundaryTypeClick
        end
        object gbBoundaryPhastInterpolation: TGroupBox
          Left = 273
          Top = 0
          Width = 488
          Height = 169
          TabOrder = 1
          inline framePhastInterpolationBoundaries: TframePhastInterpolation
            Left = 4
            Top = 16
            Width = 469
            Height = 145
            TabOrder = 0
            TabStop = True
            OnExit = framePhastInterpolationBoundariesExit
            ExplicitLeft = 4
            ExplicitTop = 16
            ExplicitWidth = 469
            ExplicitHeight = 145
            inherited lblDistance1: TLabel
              Top = 84
              Width = 78
              Height = 19
              ExplicitTop = 84
              ExplicitWidth = 78
              ExplicitHeight = 19
            end
            inherited lblDistance2: TLabel
              Left = 115
              Top = 84
              Width = 78
              Height = 19
              ExplicitLeft = 115
              ExplicitTop = 84
              ExplicitWidth = 78
              ExplicitHeight = 19
            end
            inherited lblValue1: TLabel
              Left = 224
              Top = 84
              Width = 54
              Height = 19
              ExplicitLeft = 224
              ExplicitTop = 84
              ExplicitWidth = 54
              ExplicitHeight = 19
            end
            inherited lblValue2: TLabel
              Left = 336
              Top = 84
              Width = 54
              Height = 19
              ExplicitLeft = 336
              ExplicitTop = 84
              ExplicitWidth = 54
              ExplicitHeight = 19
            end
            inherited lblMixtureFormula: TLabel
              Left = 256
              Top = 3
              Width = 111
              Height = 19
              ExplicitLeft = 256
              ExplicitTop = 3
              ExplicitWidth = 111
              ExplicitHeight = 19
            end
            inherited cbPhastInterpolation: TJvCheckBox
              Left = 16
              Top = 65
              Width = 238
              Height = 19
              TabOrder = 3
              Visible = False
              OnClick = framePhastInterpolationBoundariescbPhastInterpolationClick
              HotTrackFont.Charset = ANSI_CHARSET
              HotTrackFont.Height = 19
              HotTrackFont.Name = 'Arial'
              HotTrackFont.Pitch = fpVariable
              ExplicitLeft = 16
              ExplicitTop = 65
              ExplicitWidth = 238
              ExplicitHeight = 19
            end
            inherited rdeDistance1: TRbwDataEntry
              Left = 8
              Top = 109
              Height = 30
              TabOrder = 4
              OnExit = framePhastInterpolationBoundariesrdeDistance1Exit
              ExplicitLeft = 8
              ExplicitTop = 109
              ExplicitHeight = 30
            end
            inherited rdeDistance2: TRbwDataEntry
              Left = 115
              Top = 109
              Height = 30
              TabOrder = 5
              OnExit = framePhastInterpolationBoundariesrdeDistance2Exit
              ExplicitLeft = 115
              ExplicitTop = 109
              ExplicitHeight = 30
            end
            inherited rdeValue1: TRbwDataEntry
              Left = 224
              Top = 109
              Height = 30
              TabOrder = 6
              OnExit = framePhastInterpolationBoundariesrdeValue1Exit
              ExplicitLeft = 224
              ExplicitTop = 109
              ExplicitHeight = 30
            end
            inherited rdeValue2: TRbwDataEntry
              Left = 336
              Top = 109
              Height = 30
              TabOrder = 7
              OnExit = framePhastInterpolationBoundariesrdeValue2Exit
              ExplicitLeft = 336
              ExplicitTop = 109
              ExplicitHeight = 30
            end
            inherited rgInterpolationDirection: TRadioGroup
              Left = 8
              Width = 233
              Height = 73
              Caption = 'Interp. dir. or mixture'
              Columns = 2
              OnClick = framePhastInterpolationBoundariesrgInterpolationDirectionClick
              ExplicitLeft = 8
              ExplicitWidth = 233
              ExplicitHeight = 73
            end
            inherited edMixFormula: TRbwEdit
              Left = 256
              Top = 32
              Width = 193
              Height = 27
              TabOrder = 2
              OnExit = framePhastInterpolationBoundariesedMixFormulaExit
              ExplicitLeft = 256
              ExplicitTop = 32
              ExplicitWidth = 193
              ExplicitHeight = 27
            end
            inherited btnEditMixtureFormula: TButton
              Left = 377
              Top = 1
              Anchors = [akTop, akRight]
              TabOrder = 1
              OnClick = btnFormulaClick
              ExplicitLeft = 377
              ExplicitTop = 1
            end
          end
        end
        object seBoundaryTimes: TJvSpinEdit
          Left = 144
          Top = 169
          Width = 101
          Height = 27
          ButtonKind = bkClassic
          MaxValue = 2147483647.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          TabOrder = 2
          OnChange = seBoundaryTimesChange
        end
      end
    end
    object tabModflowBoundaryConditions: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'MODFLOW_Features_Tab'
      Caption = 'MODFLOW Features'
      ImageIndex = 4
      object splttrModflowFeature: TJvNetscapeSplitter
        Left = 185
        Top = 0
        Height = 476
        Align = alLeft
        MinSize = 1
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
        ExplicitHeight = 606
      end
      object jvtlModflowBoundaryNavigator: TJvPageListTreeView
        Left = 0
        Top = 0
        Width = 185
        Height = 476
        HelpType = htKeyword
        HelpKeyword = 'OBS_Observation_Utility_Pane'
        AutoExpand = False
        ShowLines = True
        PageDefault = 0
        PageList = jvplModflowBoundaries
        Align = alLeft
        HideSelection = False
        StateImages = ilCheckImages
        Indent = 21
        TabOrder = 0
        OnChanging = jvtlModflowBoundaryNavigatorChanging
        OnCustomDrawItem = jvtlModflowBoundaryNavigatorCustomDrawItem
        OnMouseDown = jvtlModflowBoundaryNavigatorMouseDown
        Items.NodeData = {
          030200000070000000000000000000000001000000FFFFFFFFFFFFFFFF000000
          0000000000012943004800440020002800540069006D0065002D005600610072
          00690061006E00740020005300700065006300690066006900650064002D0048
          0065006100640020007000610063006B00610067006500290064000000000000
          000000000001000000FFFFFFFFFFFFFFFF000000000000000001234700480042
          0020002800470065006E006500720061006C0020004800650061006400200042
          006F0075006E00640061007200790020007000610063006B0061006700650029
          00}
        Items.Links = {020000000000000000000000}
      end
      object jvplModflowBoundaries: TJvPageList
        Left = 195
        Top = 0
        Width = 581
        Height = 476
        ActivePage = jvspCHD
        PropagateEnable = False
        Align = alClient
        OnChange = jvplModflowBoundariesChange
        object jvspCHD: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CHD_Object_Pane'
          Caption = 'jvspCHD'
          inline frameChdParam: TframeScreenObjectParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 400
              Width = 581
              Height = 76
              ExplicitTop = 400
              ExplicitWidth = 581
              ExplicitHeight = 76
              DesignSize = (
                581
                76)
              inherited lblNumTimes: TLabel
                Left = 63
                Top = 9
                Width = 119
                Height = 19
                ExplicitLeft = 63
                ExplicitTop = 9
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 42
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 42
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Left = 8
                Top = 6
                Height = 27
                TabOrder = 2
                OnChange = frameChdParamseNumberOfTimesChange
                ExplicitLeft = 8
                ExplicitTop = 6
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 482
                Top = 3
                TabOrder = 1
                ExplicitLeft = 482
                ExplicitTop = 3
              end
              inherited btnInsert: TBitBtn
                Left = 394
                Top = 3
                TabOrder = 0
                ExplicitLeft = 394
                ExplicitTop = 3
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 200
                Top = 39
                Height = 27
                ItemIndex = 2
                Text = 'LINEAR-END'
                Visible = True
                OnChange = frameChdParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 200
                ExplicitTop = 39
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameChdParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 308
              ExplicitWidth = 581
              ExplicitHeight = 308
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 256
                ColCount = 4
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSelectCell = frameChdParamrdgModflowBoundarySelectCell
                OnSetEditText = frameChdParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
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
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end
                  item
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
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
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameChdParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 256
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspGHB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'GHB_Object_Pane'
          Caption = 'jvspGHB'
          inline frameGhbParam: TframeScreenObjectCondParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 355
              Width = 581
              Height = 121
              ExplicitTop = 355
              ExplicitWidth = 581
              ExplicitHeight = 121
              inherited lblNumTimes: TLabel
                Top = 8
                Width = 119
                Height = 19
                ExplicitTop = 8
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Left = 9
                Width = 197
                Height = 19
                ExplicitLeft = 9
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 84
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 84
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Top = 6
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameGhbParamseNumberOfTimesChange
                ExplicitTop = 6
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 217
                Top = 81
                Height = 27
                Visible = True
                OnChange = frameGhbParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 217
                ExplicitTop = 81
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 217
                Height = 27
                OnChange = frameGhbParamcomboFormulaInterpChange
                ExplicitLeft = 217
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameGhbParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 263
              ExplicitWidth = 581
              ExplicitHeight = 263
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 211
                ColCount = 4
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameGhbParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
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
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameGhbParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 211
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspWell: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'WEL_Object_Pane'
          Caption = 'jvspWell'
          inline frameWellParam: TframeScreenObjectWel
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 328
              Width = 581
              Height = 148
              ExplicitTop = 328
              ExplicitWidth = 581
              ExplicitHeight = 148
              inherited lblNumTimes: TLabel
                Top = 8
                Width = 119
                Height = 19
                ExplicitTop = 8
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Left = 9
                Width = 197
                Height = 19
                Caption = 'Pumping rate interpretation'
                ExplicitLeft = 9
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTabfile: TLabel
                Left = 504
                Top = 122
                Width = 46
                Height = 19
                Enabled = False
                ExplicitLeft = 504
                ExplicitTop = 122
                ExplicitWidth = 46
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 84
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 84
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameWellParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 217
                Top = 81
                Height = 27
                Visible = True
                OnChange = frameWellParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 217
                ExplicitTop = 81
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 217
                Height = 27
                OnChange = frameWellParamcomboFormulaInterpChange
                ExplicitLeft = 217
                ExplicitHeight = 27
              end
              inherited fedTabfile: TJvFilenameEdit
                Left = 9
                Top = 119
                Width = 489
                Height = 27
                ReadOnly = True
                ShowButton = False
                OnChange = frameWellParamfedTabfileChange
                ExplicitLeft = 9
                ExplicitTop = 119
                ExplicitWidth = 489
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameWellParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 236
              ExplicitWidth = 581
              ExplicitHeight = 236
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 184
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameWellParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameWellParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 184
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspRIV: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'RIV_Object_Pane'
          Caption = 'jvspRIV'
          inline frameRivParam: TframeScreenObjectCondParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 363
              Width = 581
              Height = 113
              ExplicitTop = 363
              ExplicitWidth = 581
              ExplicitHeight = 113
              inherited lblNumTimes: TLabel
                Top = 8
                Width = 119
                Height = 19
                ExplicitTop = 8
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Left = 6
                Width = 197
                Height = 19
                ExplicitLeft = 6
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 7
                Top = 84
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 7
                ExplicitTop = 84
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameRivParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 212
                Top = 81
                Height = 27
                Visible = True
                OnChange = frameRivParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 212
                ExplicitTop = 81
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 212
                Height = 27
                OnChange = frameRivParamcomboFormulaInterpChange
                ExplicitLeft = 212
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameRivParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 271
              ExplicitWidth = 581
              ExplicitHeight = 271
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 219
                ColCount = 5
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameRivParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameRivParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 219
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspDRN: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'DRN_Object_Pane'
          Caption = 'jvspDRN'
          inline frameDrnParam: TframeScreenObjectCondParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 352
              Width = 581
              Height = 124
              ExplicitTop = 352
              ExplicitWidth = 581
              ExplicitHeight = 124
              inherited lblNumTimes: TLabel
                Top = 8
                Width = 119
                Height = 19
                ExplicitTop = 8
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Left = 9
                Top = 55
                Width = 197
                Height = 19
                ExplicitLeft = 9
                ExplicitTop = 55
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 88
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 88
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameDrnParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 212
                Top = 85
                Height = 27
                Visible = True
                OnChange = frameDrnParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 212
                ExplicitTop = 85
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 212
                Top = 52
                Height = 27
                OnChange = frameDrnParamcomboFormulaInterpChange
                ExplicitLeft = 212
                ExplicitTop = 52
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameDrnParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 260
              ExplicitWidth = 581
              ExplicitHeight = 260
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 208
                ColCount = 4
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameDrnParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameDrnParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 208
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspDRT: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'DRT_Object_Pane'
          Caption = 'jvspDRT'
          inline frameDrtParam: TframeScreenObjectCondParam
            Left = 0
            Top = 0
            Width = 581
            Height = 394
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 394
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 313
              Width = 581
              ExplicitTop = 313
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Top = 52
                Width = 197
                Height = 19
                ExplicitTop = 52
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Width = 177
                Height = 19
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameDrtParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 212
                Top = 49
                Height = 27
                OnChange = frameDrtParamcomboFormulaInterpChange
                ExplicitLeft = 212
                ExplicitTop = 49
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameDrtParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 221
              ExplicitWidth = 581
              ExplicitHeight = 221
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 169
                ColCount = 5
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameDrtParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameDrtParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 169
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
          object pnlDrtLocation: TPanel
            Left = 0
            Top = 394
            Width = 581
            Height = 82
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object lblReturnLocationMethod: TLabel
              Left = 6
              Top = 9
              Width = 167
              Height = 19
              Caption = 'Return location method'
            end
            object comboDrtLocationChoice: TComboBox
              Left = 186
              Top = 6
              Width = 145
              Height = 27
              Style = csDropDownList
              TabOrder = 1
              OnChange = comboDrtLocationChoiceChange
              Items.Strings = (
                'none'
                'Object'
                'Location'
                'Cell')
            end
            object pcDrtReturnLChoice: TJvPageControl
              Left = 329
              Top = 0
              Width = 252
              Height = 82
              ActivePage = tabDrtCell
              Align = alRight
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              ClientBorderWidth = 0
              object tabDrtNone: TTabSheet
                Caption = 'tabDrtNone'
                TabVisible = False
              end
              object tabDrtObject: TTabSheet
                Caption = 'tabDrtObject'
                ImageIndex = 1
                TabVisible = False
                object comboDrtReturnObject: TComboBox
                  Left = 3
                  Top = -1
                  Width = 208
                  Height = 27
                  Style = csDropDownList
                  TabOrder = 0
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                end
              end
              object tabDrtLocation: TTabSheet
                Caption = 'tabDrtLocation'
                ImageIndex = 2
                TabVisible = False
                object lblDrtX: TLabel
                  Left = 3
                  Top = 7
                  Width = 11
                  Height = 19
                  Caption = 'X'
                end
                object lblDrtY: TLabel
                  Left = 63
                  Top = 7
                  Width = 11
                  Height = 19
                  Caption = 'Y'
                end
                object lblDrtZ: TLabel
                  Left = 123
                  Top = 7
                  Width = 9
                  Height = 19
                  Caption = 'Z'
                end
                object rdeDrtX: TRbwDataEntry
                  Left = 3
                  Top = 32
                  Width = 54
                  Height = 27
                  TabOrder = 0
                  Text = '0'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtReal
                  Max = 1.000000000000000000
                  ChangeDisabledColor = True
                end
                object rdeDrtY: TRbwDataEntry
                  Left = 63
                  Top = 32
                  Width = 54
                  Height = 27
                  TabOrder = 1
                  Text = '0'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtReal
                  Max = 1.000000000000000000
                  ChangeDisabledColor = True
                end
                object rdeDrtZ: TRbwDataEntry
                  Left = 123
                  Top = 32
                  Width = 54
                  Height = 27
                  TabOrder = 2
                  Text = '0'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtReal
                  Max = 1.000000000000000000
                  ChangeDisabledColor = True
                end
              end
              object tabDrtCell: TTabSheet
                Caption = 'tabDrtCell'
                ImageIndex = 3
                TabVisible = False
                object lblDrtCol: TLabel
                  Left = 3
                  Top = 15
                  Width = 24
                  Height = 19
                  Caption = 'Col'
                end
                object lblDrtRow: TLabel
                  Left = 95
                  Top = 15
                  Width = 31
                  Height = 19
                  Caption = 'Row'
                end
                object lblDrtLay: TLabel
                  Left = 187
                  Top = 15
                  Width = 42
                  Height = 19
                  Caption = 'Layer'
                end
                object rdeDrtLay: TRbwDataEntry
                  Left = 187
                  Top = 40
                  Width = 54
                  Height = 27
                  TabOrder = 2
                  Text = '1'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtInteger
                  Max = 1.000000000000000000
                  Min = 1.000000000000000000
                  CheckMin = True
                  ChangeDisabledColor = True
                end
                object rdeDrtRow: TRbwDataEntry
                  Left = 95
                  Top = 40
                  Width = 54
                  Height = 27
                  TabOrder = 1
                  Text = '1'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtInteger
                  Max = 1.000000000000000000
                  Min = 1.000000000000000000
                  CheckMin = True
                  ChangeDisabledColor = True
                end
                object rdeDrtCol: TRbwDataEntry
                  Left = 3
                  Top = 40
                  Width = 54
                  Height = 27
                  TabOrder = 0
                  Text = '1'
                  OnChange = comboDrtReturnObjectChange
                  OnExit = rdeDrtLocationControlExit
                  Items.Strings = (
                    'False'
                    'True')
                  DataType = dtInteger
                  Max = 1.000000000000000000
                  Min = 1.000000000000000000
                  CheckMin = True
                  ChangeDisabledColor = True
                end
              end
            end
          end
        end
        object jvspRCH: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'RCH_Object_Pane'
          Caption = 'jvspRCH'
          inline frameRchParam: TframeScreenObjectParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 403
              Width = 581
              Height = 73
              ExplicitTop = 403
              ExplicitWidth = 581
              ExplicitHeight = 73
              inherited lblNumTimes: TLabel
                Top = 8
                Width = 119
                Height = 19
                ExplicitTop = 8
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 42
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 42
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameRchParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 489
                Top = 9
                ExplicitLeft = 489
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 200
                Top = 39
                Height = 27
                Visible = True
                OnChange = frameRchParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 200
                ExplicitTop = 39
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameRchParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 311
              ExplicitWidth = 581
              ExplicitHeight = 311
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 259
                ColCount = 4
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameRchParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                OnEndUpdate = frameRchParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 259
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspBlank: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          Caption = 'jvspBlank'
        end
        object jvspEVT: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'EVT_Object_Pane'
          Caption = 'jvspEVT'
          inline frameEvtParam: TframeScreenObjectParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Width = 177
                Height = 19
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                Value = 1.000000000000000000
                OnChange = frameEvtParamseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameEvtParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 338
              ExplicitWidth = 581
              ExplicitHeight = 338
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 286
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameEvtParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameEvtParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 286
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspETS: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'ETS_Object_Pane'
          Caption = 'jvspETS'
          inline frameEtsParam: TframeScreenObjectParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 585
            end
            inherited pnlBottom: TPanel
              Top = 400
              Width = 581
              Height = 76
              ExplicitTop = 400
              ExplicitWidth = 581
              ExplicitHeight = 76
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Left = 9
                Top = 43
                Width = 177
                Height = 19
                Visible = True
                ExplicitLeft = 9
                ExplicitTop = 43
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Top = 10
                Height = 27
                Value = 1.000000000000000000
                TabOrder = 2
                OnChange = frameEtsParamseNumberOfTimesChange
                ExplicitTop = 10
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 7
                TabOrder = 1
                ExplicitLeft = 485
                ExplicitTop = 7
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 7
                TabOrder = 0
                ExplicitLeft = 401
                ExplicitTop = 7
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Left = 200
                Top = 40
                Height = 27
                Visible = True
                OnChange = frameEtsParamcomboTimeSeriesInterpolationChange
                ExplicitLeft = 200
                ExplicitTop = 40
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameEtsParamclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 308
              ExplicitWidth = 581
              ExplicitHeight = 308
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 256
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameEtsParamdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameEtsParamdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 256
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspRES: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'RES_Object_Pane'
          Caption = 'jvspRES'
          inline frameRes: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameResseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                ColCount = 4
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameResdgModflowBoundarySetEditText
                OnButtonClick = frameResdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = True
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                OnEndUpdate = frameResdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
          end
        end
        object jvspLAK: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'LAK_Object_Pane'
          Caption = 'jvspLAK'
          inline frameLak: TframeScreenObjectLAK
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 219
              Width = 581
              ExplicitTop = 219
              ExplicitWidth = 581
              DesignSize = (
                581
                257)
              inherited lblNumTimes: TLabel
                Left = 79
                Width = 119
                Height = 19
                ExplicitLeft = 79
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblInitialStage: TLabel
                Top = 76
                Width = 82
                Height = 19
                ExplicitTop = 76
                ExplicitWidth = 82
                ExplicitHeight = 19
              end
              inherited lblCenterLake: TLabel
                Width = 83
                Height = 19
                ExplicitWidth = 83
                ExplicitHeight = 19
              end
              inherited lblSill: TLabel
                Top = 76
                Width = 21
                Height = 19
                ExplicitTop = 76
                ExplicitWidth = 21
                ExplicitHeight = 19
              end
              inherited lblLakeID: TLabel
                Width = 57
                Height = 19
                ExplicitWidth = 57
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Width = 65
                Height = 27
                OnChange = frameLakseNumberOfTimesChange
                ExplicitWidth = 65
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
              inherited rdeInitialStage: TRbwDataEntry
                Top = 73
                TabOrder = 5
                OnChange = frameLakrdeInitialStageChange
                ExplicitTop = 73
              end
              inherited rdeCenterLake: TRbwDataEntry
                OnChange = frameLakrdeCenterLakeChange
              end
              inherited rdeSill: TRbwDataEntry
                TabOrder = 6
                OnChange = frameLakrdeSillChange
              end
              inherited rdeLakeID: TRbwDataEntry
                OnChange = frameLakrdeLakeIDChange
              end
              inherited gbGage: TGroupBox
                Top = 101
                Width = 573
                Height = 154
                ExplicitTop = 101
                ExplicitWidth = 573
                ExplicitHeight = 154
                DesignSize = (
                  573
                  154)
                inherited cbGagStandard: TCheckBox
                  Top = 21
                  OnClick = frameLakcbGagStandardClick
                  ExplicitTop = 21
                end
                inherited cbGagFluxAndCond: TCheckBox
                  Top = 44
                  OnClick = frameLakcbGagFluxAndCondClick
                  ExplicitTop = 44
                end
                inherited cbGagDelta: TCheckBox
                  Top = 67
                  OnClick = frameLakcbGagDeltaClick
                  ExplicitTop = 67
                end
                inherited cbGage4: TCheckBox
                  Top = 90
                  Width = 556
                  OnClick = frameLakcbGage4Click
                  ExplicitTop = 90
                  ExplicitWidth = 556
                end
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 193
              ExplicitWidth = 581
              ExplicitHeight = 193
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 141
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameLakdgModflowBoundarySetEditText
                OnButtonClick = frameResdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                OnEndUpdate = frameLakdgModflowBoundaryEndUpdate
                ExplicitWidth = 579
                ExplicitHeight = 141
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  25)
              end
            end
            inherited pcLake: TPageControl
              Top = 218
              Width = 581
              Height = 1
              ExplicitTop = 218
              ExplicitWidth = 581
              ExplicitHeight = 1
              inherited tabLakeProperties: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 455
                ExplicitHeight = 155
              end
              inherited tabBathymetry: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 455
                ExplicitHeight = 155
                inherited rdgLakeTable: TRbwDataGrid4
                  Height = 50
                  OnEndUpdate = frameLakrdgLakeTableEndUpdate
                  ExplicitHeight = 50
                  ColWidths = (
                    64
                    64
                    64)
                  RowHeights = (
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24
                    24)
                end
                inherited pnlBathChoice: TPanel
                  inherited rgBathChoice: TRadioGroup
                    OnClick = frameLakrgBathChoiceClick
                  end
                  inherited feLakeBathymetry: TJvFilenameEdit
                    Height = 27
                    OnChange = frameLakfeLakeBathymetryChange
                    ExplicitHeight = 27
                  end
                end
              end
              inherited tabObservations: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 155
                inherited framePestObsLak: TframePestObs
                  Width = 573
                  Height = 155
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 573
                  ExplicitHeight = 155
                  inherited splObservations: TSplitter
                    Top = -23
                    Width = 573
                    ExplicitTop = -23
                    ExplicitWidth = 573
                  end
                  inherited grpDirectObs: TGroupBox
                    Width = 573
                    ExplicitWidth = 573
                    inherited frameObservations: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 219
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 219
                      inherited Panel: TPanel
                        Top = 178
                        Width = 569
                        ExplicitTop = 178
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited sbAdd: TSpeedButton
                          Left = 297
                          ExplicitLeft = 297
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 178
                        ExplicitWidth = 569
                        ExplicitHeight = 178
                      end
                    end
                  end
                  inherited grpObsComparisons: TGroupBox
                    Top = -18
                    Width = 573
                    ExplicitTop = -18
                    ExplicitWidth = 573
                    inherited frameObsComparisons: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 150
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 150
                      inherited Panel: TPanel
                        Top = 109
                        Width = 569
                        ExplicitTop = 109
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited sbAdd: TSpeedButton
                          Left = 297
                          ExplicitLeft = 297
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 109
                        ExplicitWidth = 569
                        ExplicitHeight = 109
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object jvspSFR: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SFR_Object_Pane'
          Caption = 'jvspSFR'
          inline frameScreenObjectSFR: TframeScreenObjectSFR
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pcSFR: TPageControl
              Width = 581
              Height = 476
              OnChange = frameScreenObjectSFRpcSFRChange
              ExplicitWidth = 581
              ExplicitHeight = 476
              inherited tabBasic: TTabSheet
                ExplicitTop = 30
                ExplicitHeight = 472
                inherited Label1: TLabel
                  Width = 186
                  Height = 19
                  ExplicitWidth = 186
                  ExplicitHeight = 19
                end
                inherited gReachProperties: TGroupBox
                  Left = 2
                  Width = 981
                  ExplicitLeft = 2
                  ExplicitWidth = 981
                  inherited lblStreamTop: TLabel
                    Top = 55
                    Width = 186
                    Height = 19
                    ExplicitTop = 55
                    ExplicitWidth = 186
                    ExplicitHeight = 19
                  end
                  inherited lblSlope: TLabel
                    Top = 82
                    Width = 166
                    Height = 19
                    ExplicitTop = 82
                    ExplicitWidth = 166
                    ExplicitHeight = 19
                  end
                  inherited lblStreambedThickness: TLabel
                    Top = 109
                    Width = 248
                    Height = 19
                    ExplicitTop = 109
                    ExplicitWidth = 248
                    ExplicitHeight = 19
                  end
                  inherited lblStreambedK: TLabel
                    Top = 136
                    Width = 182
                    Height = 19
                    ExplicitTop = 136
                    ExplicitWidth = 182
                    ExplicitHeight = 19
                  end
                  inherited lblSaturatedVolumetricWater: TLabel
                    Top = 163
                    Width = 307
                    Height = 19
                    ExplicitTop = 163
                    ExplicitWidth = 307
                    ExplicitHeight = 19
                  end
                  inherited lblInitialVolumetricWater: TLabel
                    Top = 190
                    Width = 269
                    Height = 19
                    ExplicitTop = 190
                    ExplicitWidth = 269
                    ExplicitHeight = 19
                  end
                  inherited lblBrooksCoreyExponent: TLabel
                    Top = 217
                    Width = 222
                    Height = 19
                    ExplicitTop = 217
                    ExplicitWidth = 222
                    ExplicitHeight = 19
                  end
                  inherited lblMaxUnsaturatedKz: TLabel
                    Top = 244
                    Width = 194
                    Height = 19
                    ExplicitTop = 244
                    ExplicitWidth = 194
                    ExplicitHeight = 19
                  end
                  inherited lblReachLength: TLabel
                    Top = 28
                    Width = 177
                    Height = 19
                    ExplicitTop = 28
                    ExplicitWidth = 177
                    ExplicitHeight = 19
                  end
                  inherited jceStreamTop: TJvComboEdit
                    Top = 51
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 51
                    ExplicitHeight = 27
                  end
                  inherited jceSlope: TJvComboEdit
                    Top = 78
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 78
                    ExplicitHeight = 27
                  end
                  inherited jceStreambedThickness: TJvComboEdit
                    Top = 105
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 105
                    ExplicitHeight = 27
                  end
                  inherited jceStreambedK: TJvComboEdit
                    Top = 132
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 132
                    ExplicitHeight = 27
                  end
                  inherited jceSaturatedVolumetricWater: TJvComboEdit
                    Top = 159
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 159
                    ExplicitHeight = 27
                  end
                  inherited jceInitialVolumetricWater: TJvComboEdit
                    Top = 186
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 186
                    ExplicitHeight = 27
                  end
                  inherited jceBrooksCoreyExponent: TJvComboEdit
                    Top = 213
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 213
                    ExplicitHeight = 27
                  end
                  inherited jceMaxUnsaturatedKz: TJvComboEdit
                    Top = 240
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 240
                    ExplicitHeight = 27
                  end
                  inherited jvcReachLength: TJvComboEdit
                    Top = 24
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitTop = 24
                    ExplicitHeight = 27
                  end
                end
              end
              inherited tabTime: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited pnlParamTop: TPanel
                  inherited lblParameterChoices: TLabel
                    Width = 76
                    Height = 19
                    ExplicitWidth = 76
                    ExplicitHeight = 19
                  end
                  inherited lblIcalcChoice: TLabel
                    Width = 190
                    Height = 19
                    ExplicitWidth = 190
                    ExplicitHeight = 19
                  end
                  inherited comboParameterChoices: TJvImageComboBox
                    Height = 29
                    ItemHeight = 23
                    ExplicitHeight = 29
                  end
                  inherited comboIcalcChoice: TJvImageComboBox
                    Height = 29
                    ItemHeight = 23
                    ExplicitHeight = 29
                  end
                end
                inherited rdgParameters: TRbwDataGrid4
                  Height = 374
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                  Columns = <
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
                      Format = rcf4String
                      LimitToList = True
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
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
                      Format = rcf4String
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
                      Format = rcf4String
                      LimitToList = True
                      MaxLength = 0
                      ParentButtonFont = False
                      PickList.Strings = (
                        'Specified stage (0)'
                        'Rectangular channel (1)'
                        'Eight-point chanel (2)'
                        'Power function (3)'
                        'Table (4)')
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end>
                  ExplicitHeight = 374
                  RowHeights = (
                    24
                    24)
                end
                inherited pnlParamBottom: TPanel
                  Top = 431
                  ExplicitTop = 431
                  inherited lblParametersCount: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seParametersCount: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnInserParameters: TBitBtn
                    Left = 395
                    ExplicitLeft = 395
                  end
                  inherited btnDeleteParameters: TBitBtn
                    Left = 483
                    ExplicitLeft = 483
                  end
                end
              end
              inherited tabNetwork: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited pnlNetwork: TPanel
                  inherited lblSegment: TLabel
                    Width = 59
                    Height = 19
                    ExplicitWidth = 59
                    ExplicitHeight = 19
                  end
                  inherited comboMultiIprior: TJvImageComboBox
                    Height = 29
                    ItemHeight = 23
                    ItemIndex = -1
                    ExplicitHeight = 29
                  end
                end
                inherited rdgNetwork: TRbwDataGrid4
                  Height = 415
                  OnButtonClick = frameScreenObjectSFRrdgNetworkButtonClick
                  ExplicitHeight = 415
                  ColWidths = (
                    50
                    50
                    50
                    50
                    50)
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabFlows: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited dgFlowTimes: TRbwDataGrid4
                  Height = 415
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                  OnButtonClick = frameResdgModflowBoundaryButtonClick
                  Columns = <
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
                      CheckMax = False
                      CheckMin = False
                      ComboUsed = False
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end>
                  ExplicitHeight = 415
                  ColWidths = (
                    50
                    50
                    50
                    50
                    50
                    50)
                  RowHeights = (
                    24
                    24)
                end
                inherited pnlFlowTop: TPanel
                  inherited lblFlowFormula: TLabel
                    Width = 59
                    Height = 19
                    ExplicitWidth = 59
                    ExplicitHeight = 19
                  end
                end
              end
              inherited tabSegment: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited Splitter1: TSplitter
                  ExplicitWidth = 575
                end
                inherited pnlSegmentUpstream: TPanel
                  inherited dgUp: TRbwDataGrid4
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    Columns = <
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end>
                    ColWidths = (
                      50
                      50
                      50
                      50
                      50
                      50
                      50)
                    RowHeights = (
                      24
                      24)
                  end
                  inherited pnlUpstream: TPanel
                    inherited lblUpstreamFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                end
                inherited pnlSegmentDownstream: TPanel
                  Height = 255
                  ExplicitHeight = 255
                  inherited dgDown: TRbwDataGrid4
                    Height = 201
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    Columns = <
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end>
                    ExplicitHeight = 201
                    ColWidths = (
                      50
                      50
                      50
                      50
                      50
                      50
                      50)
                    RowHeights = (
                      24
                      24)
                  end
                  inherited pnlDownstream: TPanel
                    inherited lblDownstreamFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                end
              end
              inherited tabChannel: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited Panel5: TPanel
                  Height = 363
                  ExplicitHeight = 363
                  inherited Splitter3: TSplitter
                    Left = 381
                    Width = 5
                    Height = 304
                    ExplicitLeft = 277
                    ExplicitTop = 58
                    ExplicitWidth = 5
                    ExplicitHeight = 289
                  end
                  inherited dgSfrRough: TRbwDataGrid4
                    Width = 380
                    Height = 304
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                    OnButtonClick = frameResdgModflowBoundaryButtonClick
                    Columns = <
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
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
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = True
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
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
                        WordWrapCaptions = True
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end>
                    ExplicitWidth = 380
                    ExplicitHeight = 304
                    ColWidths = (
                      64
                      64
                      64
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                  inherited pnlChannelTop: TPanel
                    inherited lblChannelFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited frameCrossSection1: TframeCrossSection
                    Height = 304
                    ExplicitHeight = 304
                    inherited dg8Point: TRbwDataGrid4
                      Height = 304
                      ExplicitHeight = 304
                      ColWidths = (
                        64
                        64)
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24
                        24
                        24
                        24
                        24)
                    end
                  end
                end
                inherited zbChannel: TQRbwZoomBox2
                  Top = 363
                  Image32.Top = 0
                  ExplicitTop = 363
                end
              end
              inherited tabEquation: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited dgSfrEquation: TRbwDataGrid4
                  Height = 415
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                  OnButtonClick = frameResdgModflowBoundaryButtonClick
                  Columns = <
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
                      ButtonFont.Style = []
                      ButtonUsed = False
                      ButtonWidth = 35
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
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end
                    item
                      AutoAdjustRowHeights = True
                      ButtonCaption = 'F()'
                      ButtonFont.Charset = DEFAULT_CHARSET
                      ButtonFont.Color = clWindowText
                      ButtonFont.Height = -11
                      ButtonFont.Name = 'Tahoma'
                      ButtonFont.Pitch = fpVariable
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
                      WordWrapCaptions = True
                      WordWrapCells = False
                      CaseSensitivePicklist = False
                      CheckStyle = csCheck
                      AutoAdjustColWidths = True
                    end>
                  ExplicitHeight = 415
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
                inherited pnlEquationTop: TPanel
                  inherited lblEquationFormula: TLabel
                    Width = 59
                    Height = 19
                    ExplicitWidth = 59
                    ExplicitHeight = 19
                  end
                end
              end
              inherited tabTable: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited Splitter2: TSplitter
                  Height = 315
                  ExplicitLeft = 218
                  ExplicitHeight = 300
                end
                inherited Panel4: TPanel
                  Height = 315
                  ExplicitHeight = 315
                  inherited dgTableTime: TRbwDataGrid4
                    Height = 313
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs]
                    Columns = <
                      item
                        AutoAdjustRowHeights = False
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
                        Format = rcf4Real
                        LimitToList = False
                        MaxLength = 0
                        ParentButtonFont = False
                        WordWrapCaptions = False
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end
                      item
                        AutoAdjustRowHeights = False
                        ButtonCaption = 'F()'
                        ButtonFont.Charset = DEFAULT_CHARSET
                        ButtonFont.Color = clWindowText
                        ButtonFont.Height = -11
                        ButtonFont.Name = 'Tahoma'
                        ButtonFont.Pitch = fpVariable
                        ButtonFont.Style = []
                        ButtonUsed = False
                        ButtonWidth = 35
                        CheckMax = False
                        CheckMin = False
                        ComboUsed = False
                        Format = rcf4Real
                        LimitToList = False
                        MaxLength = 0
                        ParentButtonFont = False
                        WordWrapCaptions = False
                        WordWrapCells = False
                        CaseSensitivePicklist = False
                        CheckStyle = csCheck
                        AutoAdjustColWidths = True
                      end>
                    ExplicitHeight = 313
                    ColWidths = (
                      64
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                end
                inherited gpFlowTable: TGridPanel
                  Top = 315
                  ColumnCollection = <
                    item
                      Value = 49.909323456075350000
                    end
                    item
                      Value = 50.090744101633390000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameScreenObjectSFR.zbFlowDepthTable
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = frameScreenObjectSFR.zbFlowWidthTable
                      Row = 0
                    end>
                  ExplicitTop = 315
                  inherited zbFlowDepthTable: TQRbwZoomBox2
                    Image32.Top = 0
                  end
                  inherited zbFlowWidthTable: TQRbwZoomBox2
                    Image32.Top = 0
                  end
                end
                inherited frameFlowTable1: TframeFlowTable
                  Height = 315
                  ExplicitHeight = 315
                  inherited dgSfrTable: TRbwDataGrid4
                    Height = 243
                    OnSetEditText = frameFlowTable1dgSfrTableSetEditText
                    ExplicitHeight = 243
                    ColWidths = (
                      64
                      64
                      64)
                    RowHeights = (
                      24
                      24
                      24)
                  end
                  inherited pnl1: TPanel
                    Top = 243
                    ExplicitTop = 243
                    inherited lblNumberOfPoints: TLabel
                      Width = 124
                      Height = 19
                      ExplicitWidth = 124
                      ExplicitHeight = 19
                    end
                    inherited btnDeleteFlowTableRow: TBitBtn
                      OnClick = frameFlowTable1btnDeleteFlowTableRowClick
                    end
                    inherited btnInsertFlowTableRow: TBitBtn
                      OnClick = frameFlowTable1btnInsertFlowTableRowClick
                    end
                    inherited seTableCount: TJvSpinEdit
                      Height = 27
                      OnChange = frameFlowTable1seTableCountChange
                      ExplicitHeight = 27
                    end
                  end
                end
              end
              inherited tabUnsaturatedProperties: TTabSheet
                ExplicitTop = 30
                ExplicitHeight = 472
                inherited gbUnsatUpstream: TGroupBox
                  Width = 802
                  ExplicitWidth = 802
                  inherited Label6: TLabel
                    Width = 316
                    Height = 19
                    ExplicitWidth = 316
                    ExplicitHeight = 19
                  end
                  inherited Label17: TLabel
                    Width = 278
                    Height = 19
                    ExplicitWidth = 278
                    ExplicitHeight = 19
                  end
                  inherited Label18: TLabel
                    Width = 231
                    Height = 19
                    ExplicitWidth = 231
                    ExplicitHeight = 19
                  end
                  inherited Label19: TLabel
                    Width = 203
                    Height = 19
                    ExplicitWidth = 203
                    ExplicitHeight = 19
                  end
                  inherited jceSaturatedVolumetricWaterUpstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceInitialVolumetricWaterUpstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceBrooksCoreyExponentUpstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceMaxUnsaturatedKzUpstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                end
                inherited gbUnsatDownstream: TGroupBox
                  Width = 802
                  ExplicitWidth = 802
                  inherited Label20: TLabel
                    Width = 316
                    Height = 19
                    ExplicitWidth = 316
                    ExplicitHeight = 19
                  end
                  inherited Label21: TLabel
                    Width = 278
                    Height = 19
                    ExplicitWidth = 278
                    ExplicitHeight = 19
                  end
                  inherited Label22: TLabel
                    Width = 231
                    Height = 19
                    ExplicitWidth = 231
                    ExplicitHeight = 19
                  end
                  inherited Label23: TLabel
                    Width = 203
                    Height = 19
                    ExplicitWidth = 203
                    ExplicitHeight = 19
                  end
                  inherited jceSaturatedVolumetricWaterDownstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceInitialVolumetricWaterDownstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceBrooksCoreyExponentDownstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                  inherited jceMaxUnsaturatedKzDownstream: TJvComboEdit
                    Height = 27
                    OnButtonClick = frameScreenObjectSFRjceButtonClick
                    ExplicitHeight = 27
                  end
                end
              end
              inherited tabExternalFlowFile: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 553
                ExplicitHeight = 472
                inherited frameExternalFileValues: TframeGrid
                  Height = 327
                  ExplicitHeight = 327
                  inherited Panel: TPanel
                    Top = 286
                    ExplicitTop = 286
                    inherited lbNumber: TLabel
                      Width = 57
                      Height = 19
                      ExplicitWidth = 57
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      Left = 300
                      ExplicitLeft = 300
                    end
                    inherited sbInsert: TSpeedButton
                      Left = 356
                      ExplicitLeft = 356
                    end
                    inherited sbDelete: TSpeedButton
                      Left = 411
                      ExplicitLeft = 411
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Height = 286
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goAlwaysShowEditor]
                    ExplicitHeight = 286
                    ColWidths = (
                      64
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                end
                inherited pnlFlowFile: TPanel
                  inherited lblExternalFileName: TLabel
                    Width = 129
                    Height = 19
                    ExplicitWidth = 129
                    ExplicitHeight = 19
                  end
                  inherited fedExternalFileName: TJvFilenameEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
              end
              inherited tabGage: TTabSheet
                ExplicitTop = 30
                ExplicitHeight = 472
                inherited rgGages: TRadioGroup
                  Height = 95
                  ExplicitHeight = 95
                end
                inherited gbObservationTypes: TGroupBox
                  Left = 2
                  Top = 104
                  Width = 947
                  Height = 329
                  ExplicitLeft = 2
                  ExplicitTop = 104
                  ExplicitWidth = 947
                  ExplicitHeight = 329
                  inherited cbGag2: TCheckBox
                    Width = 553
                    ExplicitWidth = 553
                  end
                  inherited cbGag5: TCheckBox
                    Top = 158
                    Width = 553
                    ExplicitTop = 158
                    ExplicitWidth = 553
                  end
                  inherited cbGag6: TCheckBox
                    Top = 223
                    Width = 553
                    ExplicitTop = 223
                    ExplicitWidth = 553
                  end
                  inherited cbGag7: TCheckBox
                    Top = 287
                    Width = 553
                    ExplicitTop = 287
                    ExplicitWidth = 553
                  end
                end
              end
              inherited tabObservations: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 442
                inherited frameSfrPestObs: TframePestObs
                  Width = 573
                  Height = 442
                  ExplicitWidth = 573
                  ExplicitHeight = 442
                  inherited splObservations: TSplitter
                    Top = 264
                    Width = 573
                    ExplicitTop = 264
                    ExplicitWidth = 573
                  end
                  inherited grpDirectObs: TGroupBox
                    Width = 573
                    Height = 264
                    ExplicitWidth = 573
                    ExplicitHeight = 264
                    inherited frameObservations: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 241
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 241
                      inherited Panel: TPanel
                        Top = 200
                        Width = 569
                        ExplicitTop = 200
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 200
                        ExplicitWidth = 569
                        ExplicitHeight = 200
                      end
                    end
                  end
                  inherited grpObsComparisons: TGroupBox
                    Top = 269
                    Width = 573
                    ExplicitTop = 269
                    ExplicitWidth = 573
                    inherited frameObsComparisons: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 150
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 150
                      inherited Panel: TPanel
                        Top = 109
                        Width = 569
                        ExplicitTop = 109
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 109
                        ExplicitWidth = 569
                        ExplicitHeight = 109
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object jvspUZF: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'UZF_Object_Pane'
          Caption = 'jvspUZF'
          inline frameScreenObjectUZF: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 354
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 354
            inherited pnlBottom: TPanel
              Top = 308
              Width = 581
              ExplicitTop = 308
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Top = 9
                Height = 27
                OnChange = frameScreenObjectUZFseNumberOfTimesChange
                ExplicitTop = 9
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                Top = 9
                ExplicitLeft = 485
                ExplicitTop = 9
              end
              inherited btnInsert: TBitBtn
                Left = 401
                Top = 9
                ExplicitLeft = 401
                ExplicitTop = 9
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 283
              ExplicitWidth = 581
              ExplicitHeight = 283
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 231
                ColCount = 6
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                OnSetEditText = frameScreenObjectUZFdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Pitch = fpVariable
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
                    LimitToList = False
                    MaxLength = 0
                    ParentButtonFont = False
                    WordWrapCaptions = True
                    WordWrapCells = False
                    CaseSensitivePicklist = False
                    CheckStyle = csCheck
                    AutoAdjustColWidths = True
                  end>
                OnEndUpdate = frameScreenObjectUZFdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 231
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
          object pnlUzfGage: TPanel
            Left = 0
            Top = 354
            Width = 581
            Height = 122
            Align = alBottom
            TabOrder = 1
            object cbUzfGage1: TCheckBox
              Left = 6
              Top = 8
              Width = 571
              Height = 33
              Caption = 
                'Print time, ground-water head, and thickness of unsaturated zone' +
                ', and cumulative volumes (IUZOPT = 1)'
              TabOrder = 0
              WordWrap = True
              OnClick = cbUzfGage1Click
            end
            object cbUzfGage2: TCheckBox
              Left = 6
              Top = 51
              Width = 563
              Height = 18
              Caption = 'Also print rates (IUZOPT = 2)'
              Enabled = False
              TabOrder = 1
              OnClick = cbUzfGage2Click
            end
            object cbUzfGage3: TCheckBox
              Left = 6
              Top = 75
              Width = 561
              Height = 49
              Caption = 
                'Print time, ground-water head, thickness of unsaturated zone, fo' +
                'llowed by a series of depths and water contents in the unsaturat' +
                'ed zone (IUZOPT = 3)'
              TabOrder = 2
              WordWrap = True
              OnClick = cbUzfGage3Click
            end
          end
        end
        object jvspHOB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'HOB_Head_Observation_Package_P'
          Caption = 'jvspHOB'
          inline frameHeadObservations: TframeHeadObservations
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            HelpType = htKeyword
            HelpKeyword = 'HOB_Head_Observation_Package_P'
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pcData: TJvPageControl
              Width = 581
              Height = 342
              ExplicitWidth = 581
              ExplicitHeight = 342
              inherited tabTimes: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 308
                inherited Panel5: TPanel
                  Width = 573
                  Height = 41
                  ExplicitWidth = 573
                  ExplicitHeight = 41
                  inherited rdeMultiValueEdit: TRbwDataEntry
                    Height = 29
                    ExplicitHeight = 29
                  end
                  inherited comboMultiStatFlag: TJvImageComboBox
                    Height = 29
                    ItemHeight = 23
                    ExplicitHeight = 29
                  end
                end
                inherited Panel2: TPanel
                  Top = 232
                  Width = 573
                  ExplicitTop = 232
                  ExplicitWidth = 573
                  inherited lblNumberOfTimes: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seTimes: TJvSpinEdit
                    Height = 27
                    OnChange = frameHeadObservationsseTimesChange
                    ExplicitHeight = 27
                  end
                end
                inherited rdgObservations: TRbwDataGrid4
                  Top = 41
                  Width = 573
                  Height = 191
                  OnSetEditText = frameHeadObservationsrdgHeadsSetEditText
                  ExplicitTop = 41
                  ExplicitWidth = 573
                  ExplicitHeight = 191
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabLayers: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 560
                ExplicitHeight = 182
                inherited Panel4: TPanel
                  Top = 106
                  ExplicitTop = 106
                  inherited lblNumberOfLayers: TLabel
                    Width = 125
                    Height = 19
                    ExplicitWidth = 125
                    ExplicitHeight = 19
                  end
                  inherited seLayers: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited rdgLayers: TRbwDataGrid4
                  Height = 71
                  ExplicitHeight = 71
                  ColWidths = (
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited pnlName: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited lblTreatment: TLabel
                Top = 0
                Width = 122
                Height = 19
                ExplicitTop = 0
                ExplicitWidth = 122
                ExplicitHeight = 19
              end
              inherited edObsName: TLabeledEdit
                Height = 27
                EditLabel.Width = 131
                EditLabel.Height = 19
                EditLabel.ExplicitLeft = 8
                EditLabel.ExplicitTop = 0
                EditLabel.ExplicitWidth = 131
                EditLabel.ExplicitHeight = 19
                ExplicitHeight = 27
              end
              inherited comboTreatment: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspHFB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'HFB_Horizontal_Flow_Barrier_Pane'
          Caption = 'jvspHFB'
          inline frameHfbBoundary: TframeHfbScreenObject
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            Enabled = False
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited lblParameterName: TLabel
              Width = 121
              Height = 19
              ExplicitWidth = 121
              ExplicitHeight = 19
            end
            inherited lblHydraulicConductivity: TLabel
              Width = 214
              Height = 19
              ExplicitWidth = 214
              ExplicitHeight = 19
            end
            inherited lblBarrierThickness: TLabel
              Width = 124
              Height = 19
              ExplicitWidth = 124
              ExplicitHeight = 19
            end
            inherited comboHfbParameters: TJvImageComboBox
              Height = 29
              ItemHeight = 23
              ExplicitHeight = 29
            end
            inherited rgAngleAdjustment: TRadioGroup
              Width = 553
              ExplicitWidth = 553
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited edHydraulicConductivity: TRbwEdit
              Height = 27
              ExplicitHeight = 27
            end
            inherited edBarrierThickness: TRbwEdit
              Height = 27
              TabOrder = 4
              ExplicitHeight = 27
            end
            inherited btnEditHfbHydraulicConductivityFormula: TButton
              Top = 58
              OnClick = frameHfbBoundarybtnEditHfbHydraulicConductivityFormulaClick
              ExplicitTop = 58
            end
            inherited btnEditHfbThicknessyFormula: TButton
              Top = 89
              TabOrder = 5
              OnClick = frameHfbBoundarybtnEditHfbThicknessyFormulaClick
              ExplicitTop = 89
            end
          end
        end
        object jvspModpath: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'MODPATH_MODPATH_Object_Options'
          Caption = 'jvspModpath'
          inline frameIface: TframeIface
            Left = 8
            Top = 0
            Width = 489
            Height = 169
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ExplicitLeft = 8
            ExplicitWidth = 489
            ExplicitHeight = 169
            inherited gbIface: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 483
              Height = 163
              ExplicitLeft = 3
              ExplicitTop = 3
              ExplicitWidth = 483
              ExplicitHeight = 163
              inherited lblMessage: TLabel
                Left = 296
                Top = 33
                Width = 162
                Height = 54
                Visible = True
                ExplicitLeft = 296
                ExplicitTop = 33
                ExplicitWidth = 162
                ExplicitHeight = 54
              end
              inherited rbBottom: TJvRadioButton
                Top = 135
                OnClick = frameIfacerbHorizontalClick
                ExplicitTop = 135
              end
              inherited rbFront: TJvRadioButton
                Top = 111
                OnClick = frameIfacerbHorizontalClick
                ExplicitTop = 111
              end
              inherited rbRight: TJvRadioButton
                Left = 102
                Top = 87
                OnClick = frameIfacerbHorizontalClick
                ExplicitLeft = 102
                ExplicitTop = 87
              end
              inherited rbLeft: TJvRadioButton
                OnClick = frameIfacerbHorizontalClick
              end
              inherited rbTop: TJvRadioButton
                Left = 103
                Top = 135
                OnClick = frameIfacerbHorizontalClick
                ExplicitLeft = 103
                ExplicitTop = 135
              end
              inherited rbBack: TJvRadioButton
                Left = 103
                Top = 111
                OnClick = frameIfacerbHorizontalClick
                ExplicitLeft = 103
                ExplicitTop = 111
              end
              inherited rbInternal: TJvRadioButton
                TabOrder = 2
                OnClick = frameIfacerbHorizontalClick
              end
              inherited rbHorizontal: TJvRadioButton
                Width = 246
                OnClick = frameIfacerbHorizontalClick
                ExplicitWidth = 246
              end
              inherited glsvViewer: TGLSceneViewer
                Left = 287
                Top = 21
                Height = 132
                FieldOfView = 105.706626892089800000
                Visible = False
                TabOrder = 1
                ExplicitLeft = 287
                ExplicitTop = 21
                ExplicitHeight = 132
              end
            end
            inherited glsIface: TGLScene
              inherited GLDummyCube1: TGLDummyCube
                Direction.Coordinates = {CAC431BE27DC82BB5C1C7C3F00000000}
                Scale.Coordinates = {00000041000000410000004100000000}
                Up.Coordinates = {EC65BCBCABEE7F3FA89E092E00000000}
                inherited LeftFace: TGLPlane
                  Material.BackProperties.Diffuse.Color = {000000000000803FF8FEFE3E0000803F}
                  Material.FrontProperties.Diffuse.Color = {F8FEFE3E0000803F000000000000803F}
                  Direction.Coordinates = {2EBDBBB300000000000080BF00000000}
                  Position.Coordinates = {00000000000000000000C03F0000803F}
                end
                inherited GLCube1: TGLCube
                  Position.Coordinates = {00000000000000000000C0BF0000803F}
                end
                inherited GLLightSource2: TGLLightSource
                  Position.Coordinates = {0000E0400000C040000000C10000803F}
                  Specular.Color = {6666E63E6666E63E6666E63E0000803F}
                  inherited GLSphere1: TGLSphere
                    Material.FrontProperties.Diffuse.Color = {000000000000003F0000003F0000803F}
                    Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
                  end
                end
                inherited FrontFace: TGLPlane
                  Direction.Coordinates = {0000803F000000000000000000000000}
                  Position.Coordinates = {0000003F000000000000803F0000803F}
                end
                inherited TopFace: TGLPlane
                  Direction.Coordinates = {000000000000803F0000000000000000}
                  Position.Coordinates = {000000000000003F0000803F0000803F}
                  Up.Coordinates = {0000000000000000000080BF00000000}
                end
                inherited BottomFace: TGLPlane
                  Direction.Coordinates = {004474990000803F2EBD3BB400000000}
                  Position.Coordinates = {00000000000000BF0000803F0000803F}
                  Up.Coordinates = {00004A1D2EBD3BB4000080BF00000000}
                end
                inherited RightFace: TGLPlane
                  Direction.Coordinates = {0000000000000000000080BF00000000}
                  Position.Coordinates = {00000000000000000000003F0000803F}
                end
                inherited BackFace: TGLPlane
                  Material.BackProperties.Diffuse.Color = {F8FEFE3E0000803F000000000000803F}
                  Material.FrontProperties.Diffuse.Color = {F8FEFE3E0000803F000000000000803F}
                  Direction.Coordinates = {0000803F000000000000000000000000}
                  Position.Coordinates = {000000BF000000000000803F0000803F}
                end
                inherited CentralSphere: TGLSphere
                  Material.BackProperties.Diffuse.Color = {000000000000803FF8FEFE3E0000803F}
                  Material.FrontProperties.Diffuse.Color = {000000000000803FF8FEFE3E0000803F}
                  Position.Coordinates = {00000000000000000000803F0000803F}
                  Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
                end
                inherited Tube1: TGLCylinder
                  Material.FrontProperties.Diffuse.Color = {0000003F0000003F0000003F0000803F}
                  Position.Coordinates = {0000003F000000000000003F0000803F}
                end
                inherited Tube2: TGLCylinder
                  Material.FrontProperties.Diffuse.Color = {0000003F0000003F0000003F0000803F}
                  Position.Coordinates = {000000000000003F0000003F0000803F}
                  Up.Coordinates = {000080BF2EBD3BB30000000000000000}
                end
                inherited Tube3: TGLCylinder
                  Material.FrontProperties.Diffuse.Color = {0000003F0000003F0000003F0000803F}
                  Direction.Coordinates = {000000000000803F2EBD3BB300000000}
                  Position.Coordinates = {0000003F0000003F0000803F0000803F}
                  Up.Coordinates = {000000002EBD3BB3000080BF00000000}
                end
              end
              inherited GLCamera1: TGLCamera
                Position.Coordinates = {0000F04100002041000000000000803F}
              end
            end
          end
          inline frameModpathParticles: TframeModpathParticles
            Left = 11
            Top = 172
            Width = 555
            Height = 316
            TabOrder = 1
            TabStop = True
            ExplicitLeft = 11
            ExplicitTop = 172
            ExplicitWidth = 555
            ExplicitHeight = 316
            inherited gbParticles: TJvGroupBox
              Width = 555
              Height = 316
              OnCheckBoxClick = frameModpathParticlesgbParticlesCheckBoxClick
              ExplicitWidth = 555
              ExplicitHeight = 316
              DesignSize = (
                555
                316)
              inherited lblTimeCount: TLabel
                Top = 248
                Width = 43
                Height = 19
                ExplicitTop = 248
                ExplicitWidth = 43
                ExplicitHeight = 19
              end
              inherited sbAddTime: TSpeedButton
                Top = 284
                ExplicitTop = 284
              end
              inherited sbInsertTime: TSpeedButton
                Top = 284
                ExplicitTop = 284
              end
              inherited sbDeleteTime: TSpeedButton
                Top = 284
                ExplicitTop = 284
              end
              inherited lblMessage: TLabel
                Width = 105
                Height = 95
                Visible = True
                ExplicitWidth = 105
                ExplicitHeight = 95
              end
              inherited rgChoice: TRadioGroup
                OnClick = frameModpathParticlesrgChoiceClick
              end
              inherited GLSceneViewer1: TGLSceneViewer
                Visible = False
              end
              inherited plParticlePlacement: TJvPageList
                inherited jvspGrid: TJvStandardPage
                  inherited lblX: TLabel
                    Width = 138
                    Height = 38
                    ExplicitWidth = 138
                    ExplicitHeight = 38
                  end
                  inherited lblY: TLabel
                    Width = 138
                    Height = 38
                    ExplicitWidth = 138
                    ExplicitHeight = 38
                  end
                  inherited lblZ: TLabel
                    Width = 138
                    Height = 38
                    ExplicitWidth = 138
                    ExplicitHeight = 38
                  end
                  inherited cbLeftFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbRightFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbFrontFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbBackFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbBottomFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbTopFace: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited cbInternal: TCheckBox
                    OnClick = frameModpathParticlescbLeftFaceClick
                  end
                  inherited seX: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                  inherited seY: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                  inherited seZ: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                end
                inherited jvspCylinder: TJvStandardPage
                  inherited lblCylParticleCount: TLabel
                    Width = 147
                    Height = 38
                    ExplicitWidth = 147
                    ExplicitHeight = 38
                  end
                  inherited lblClylLayerCount: TLabel
                    Width = 130
                    Height = 38
                    ExplicitWidth = 130
                    ExplicitHeight = 38
                  end
                  inherited lblCylRadius: TLabel
                    Width = 111
                    Height = 19
                    ExplicitWidth = 111
                    ExplicitHeight = 19
                  end
                  inherited rgCylinderOrientation: TRadioGroup
                    OnClick = frameModpathParticlesrgCylinderOrientationClick
                  end
                  inherited seCylParticleCount: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                  inherited seCylLayerCount: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                  inherited seCylRadius: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseCylRadiusClick
                    ExplicitHeight = 27
                  end
                end
                inherited jvspSphere: TJvStandardPage
                  inherited lblSpherParticleCount: TLabel
                    Width = 147
                    Height = 38
                    ExplicitWidth = 147
                    ExplicitHeight = 38
                  end
                  inherited lblSpherelLayerCount: TLabel
                    Width = 130
                    Height = 38
                    ExplicitWidth = 130
                    ExplicitHeight = 38
                  end
                  inherited lblSphereRadius: TLabel
                    Width = 103
                    Height = 19
                    ExplicitWidth = 103
                    ExplicitHeight = 19
                  end
                  inherited rgSphereOrientation: TRadioGroup
                    OnClick = frameModpathParticlesrgCylinderOrientationClick
                  end
                  inherited seSphereParticleCount: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitHeight = 27
                  end
                  inherited seSphereLayerCount: TJvSpinEdit
                    Top = 120
                    Height = 27
                    OnChange = frameModpathParticlesseXChange
                    ExplicitTop = 120
                    ExplicitHeight = 27
                  end
                  inherited seSphereRadius: TJvSpinEdit
                    Height = 27
                    OnChange = frameModpathParticlesseCylRadiusClick
                    ExplicitHeight = 27
                  end
                end
                inherited jvspIndividual: TJvStandardPage
                  inherited rdgSpecific: TRbwDataGrid4
                    FixedCols = 0
                    OnSetEditText = frameModpathParticlesrdgSpecificSetEditText
                    ColWidths = (
                      20
                      20
                      20
                      20)
                    RowHeights = (
                      24
                      24)
                  end
                  inherited pnlBottom: TPanel
                    inherited lblCount: TLabel
                      Width = 43
                      Height = 19
                      ExplicitWidth = 43
                      ExplicitHeight = 19
                    end
                    inherited seSpecificParticleCount: TJvSpinEdit
                      Height = 27
                      OnChange = frameModpathParticlesseSpecificParticleCountChange
                      ExplicitHeight = 27
                    end
                  end
                end
              end
              inherited seTimeCount: TJvSpinEdit
                Top = 245
                Height = 27
                OnChange = frameModpathParticlesseTimeCountChange
                ExplicitTop = 245
                ExplicitHeight = 27
              end
              inherited rdgReleaseTimes: TRbwDataGrid4
                FixedCols = 0
                ColWidths = (
                  20
                  20)
                RowHeights = (
                  24
                  24)
              end
            end
            inherited GLScene1: TGLScene
              inherited GLDummyCube: TGLDummyCube
                Direction.Coordinates = {D36D79B2D7B35DBF010000BF00000000}
                Scale.Coordinates = {00000040000000400000004000000000}
                Up.Coordinates = {1C1DAFBEBC8FF0BE1155503F00000000}
                inherited GLLightSource1: TGLLightSource
                  Position.Coordinates = {0000204100002041000020410000803F}
                end
                inherited BottomPlane: TGLPlane
                  Material.BackProperties.Diffuse.Color = {0AD7633FD7A3F03ECDCC4C3E0000803F}
                  Material.FrontProperties.Diffuse.Color = {00000000000000000000803F0000803F}
                  Direction.Coordinates = {000000002EBDBBB3000080BF00000000}
                  Position.Coordinates = {00000000000000000000003F0000803F}
                  Up.Coordinates = {00000000000080BF2EBDBB3300000000}
                end
                inherited LeftPlane: TGLPlane
                  Material.FrontProperties.Diffuse.Color = {8FC2753FCDCC4C3FD7A3303F0000803F}
                  Direction.Coordinates = {0000803F000000002EBD3BB300000000}
                  Position.Coordinates = {000000BF00000000000000000000803F}
                end
                inherited BackPlane: TGLPlane
                  Material.FrontProperties.Diffuse.Color = {EBE0E03EE4DB5B3FE4DB5B3F0000803F}
                  Direction.Coordinates = {000000000000803F2EBD3BB300000000}
                  Position.Coordinates = {00000000000000BF000000000000803F}
                  Up.Coordinates = {000000002EBD3BB3000080BF00000000}
                end
                inherited GLCylinder1: TGLCylinder
                  Position.Coordinates = {0000003F00000000000000BF0000803F}
                end
                inherited GLCylinder2: TGLCylinder
                  Direction.Coordinates = {000000000000803F2EBD3BB300000000}
                  Position.Coordinates = {0000003F0000003F000000000000803F}
                  Up.Coordinates = {000000002EBD3BB3000080BF00000000}
                end
                inherited GLCylinder3: TGLCylinder
                  Position.Coordinates = {000000000000003F000000BF0000803F}
                  Up.Coordinates = {000080BF2EBD3BB30000000000000000}
                end
              end
              inherited GLLightSource2: TGLLightSource
                Position.Coordinates = {0000803F00000000000040400000803F}
                SpotDirection.Coordinates = {00000000000000000000803F00000000}
              end
              inherited GLCamera: TGLCamera
                Position.Coordinates = {0000000000000000000020410000803F}
              end
            end
          end
        end
        object jvspCHOB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CHOB_Specified_Head_Flow_ObsObjects'
          Caption = 'jvspCHOB'
          inline frameCHOB: TframeFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            DesignSize = (
              581
              476)
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Top = 64
              Width = 569
              Height = 408
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
              OnSetEditText = frameCHOBrdgObservationGroupsSetEditText
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameCHOBrdgObservationGroupsStateChange
              ExplicitTop = 64
              ExplicitWidth = 569
              ExplicitHeight = 408
              RowHeights = (
                24
                24)
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              Top = 33
              OnClick = frameFluxObsbtnAddOrRemoveFluxObservationsClick
              ExplicitTop = 33
            end
          end
        end
        object jvspDROB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'DROB_Drain_ObservationObjects'
          Caption = 'jvspDROB'
          inline frameDROB: TframeFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            DesignSize = (
              581
              476)
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 569
              Height = 440
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
              OnSetEditText = frameDROBrdgObservationGroupsSetEditText
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameDROBrdgObservationGroupsStateChange
              ExplicitWidth = 569
              ExplicitHeight = 440
              RowHeights = (
                24
                24)
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              OnClick = frameFluxObsbtnAddOrRemoveFluxObservationsClick
            end
          end
        end
        object jvspGBOB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'GBOB_General_Head_Boundary_ObsObjects'
          Caption = 'jvspGBOB'
          inline frameGBOB: TframeFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            DesignSize = (
              581
              476)
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Top = 64
              Width = 569
              Height = 409
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
              OnSetEditText = frameGBOBrdgObservationGroupsSetEditText
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameGBOBrdgObservationGroupsStateChange
              ExplicitTop = 64
              ExplicitWidth = 569
              ExplicitHeight = 409
              RowHeights = (
                24
                24)
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              Top = 33
              OnClick = frameFluxObsbtnAddOrRemoveFluxObservationsClick
              ExplicitTop = 33
            end
          end
        end
        object jvspRVOB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'RVOB_River_ObservationObjects'
          Caption = 'jvspRVOB'
          inline frameRVOB: TframeFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            DesignSize = (
              581
              476)
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 561
              Height = 412
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
              OnSetEditText = frameRVOBrdgObservationGroupsSetEditText
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameRVOBrdgObservationGroupsStateChange
              ExplicitWidth = 561
              ExplicitHeight = 412
              RowHeights = (
                24
                24)
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              OnClick = frameFluxObsbtnAddOrRemoveFluxObservationsClick
            end
          end
        end
        object jvspGAGE: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'GAGE_for_SFR'
          Caption = 'jvspGAGE'
          object pnlGageTop: TPanel
            Left = 0
            Top = 0
            Width = 581
            Height = 65
            Align = alTop
            TabOrder = 0
            object lblGageCaption: TLabel
              Left = 11
              Top = 10
              Width = 110
              Height = 19
              Caption = 'lblGageCaption'
            end
          end
          object pcGage: TPageControl
            Left = 0
            Top = 65
            Width = 581
            Height = 411
            ActivePage = tabGageObservations
            Align = alClient
            TabOrder = 1
            object tabGageTypes: TTabSheet
              Caption = 'Gage Types'
              object cbGage1: TCheckBox
                Left = 8
                Top = 55
                Width = 530
                Height = 17
                Caption = 'Default values plus depth, width, and flow at midpoint'
                TabOrder = 0
                OnClick = cbGageStandardClick
              end
              object cbGage2: TCheckBox
                Left = 8
                Top = 86
                Width = 553
                Height = 43
                Caption = 
                  'Default values plus streambed conductance for the reach, head di' +
                  'fference across streambed, and hydraulic gradient across streamb' +
                  'ed.'
                TabOrder = 1
                WordWrap = True
                OnClick = cbGageStandardClick
              end
              object cbGage3: TCheckBox
                Left = 8
                Top = 135
                Width = 530
                Height = 17
                Caption = 'Default values plus solute load in stream (if GWT is active). '
                TabOrder = 2
                OnClick = cbGageStandardClick
              end
              object cbGage5: TCheckBox
                Left = 8
                Top = 158
                Width = 553
                Height = 59
                Caption = 
                  'Use for diversions to provide a listing of time, stage, flow div' +
                  'erted, maximum assigned diversion rate, flow at end of upstream ' +
                  'segment prior to diversion, solute concentration, and solute loa' +
                  'd.'
                TabOrder = 3
                WordWrap = True
                OnClick = cbGageStandardClick
              end
              object cbGage6: TCheckBox
                Left = 8
                Top = 223
                Width = 553
                Height = 58
                Caption = 
                  'Used for unsaturated flow routing to provide a listing of time, ' +
                  'stage, ground-water head, streambed seepage, change in unsaturat' +
                  'ed storage, and recharge.'
                TabOrder = 4
                WordWrap = True
                OnClick = cbGageStandardClick
              end
              object cbGage7: TCheckBox
                Left = 3
                Top = 287
                Width = 553
                Height = 34
                Caption = 
                  'Used for unsaturated flow routing to provide a listing of time a' +
                  'nd the unsaturated water content profile beneath the stream.'
                TabOrder = 5
                WordWrap = True
                OnClick = cbGageStandardClick
              end
              object cbGageStandard: TCheckBox
                Left = 3
                Top = 24
                Width = 537
                Height = 17
                Caption = 
                  'Standard default - time, stage, outflow, and solute concentratio' +
                  'n.'
                TabOrder = 6
                OnClick = cbGageStandardClick
              end
            end
            object tabGageObservations: TTabSheet
              Caption = 'Observations'
              ImageIndex = 1
              inline frameGagePestObs: TframePestObs
                Left = 0
                Top = 0
                Width = 573
                Height = 377
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 573
                ExplicitHeight = 377
                inherited splObservations: TSplitter
                  Top = 199
                  Width = 573
                  ExplicitTop = 199
                  ExplicitWidth = 573
                end
                inherited grpDirectObs: TGroupBox
                  Width = 573
                  Height = 199
                  ExplicitWidth = 573
                  ExplicitHeight = 199
                  inherited frameObservations: TframeGrid
                    Top = 21
                    Width = 569
                    Height = 176
                    ExplicitTop = 21
                    ExplicitWidth = 569
                    ExplicitHeight = 176
                    inherited Panel: TPanel
                      Top = 135
                      Width = 569
                      ExplicitTop = 135
                      ExplicitWidth = 569
                      inherited lbNumber: TLabel
                        Width = 57
                        Height = 19
                        ExplicitWidth = 57
                        ExplicitHeight = 19
                      end
                      inherited sbAdd: TSpeedButton
                        Left = 297
                        ExplicitLeft = 297
                      end
                      inherited sbInsert: TSpeedButton
                        Left = 352
                        ExplicitLeft = 352
                      end
                      inherited sbDelete: TSpeedButton
                        Left = 407
                        ExplicitLeft = 407
                      end
                      inherited seNumber: TJvSpinEdit
                        Height = 27
                        ExplicitHeight = 27
                      end
                    end
                    inherited Grid: TRbwDataGrid4
                      Width = 569
                      Height = 135
                      ExplicitWidth = 569
                      ExplicitHeight = 135
                    end
                  end
                end
                inherited grpObsComparisons: TGroupBox
                  Top = 204
                  Width = 573
                  ExplicitTop = 204
                  ExplicitWidth = 573
                  inherited frameObsComparisons: TframeGrid
                    Top = 21
                    Width = 569
                    Height = 150
                    ExplicitTop = 21
                    ExplicitWidth = 569
                    ExplicitHeight = 150
                    inherited Panel: TPanel
                      Top = 109
                      Width = 569
                      ExplicitTop = 109
                      ExplicitWidth = 569
                      inherited lbNumber: TLabel
                        Width = 57
                        Height = 19
                        ExplicitWidth = 57
                        ExplicitHeight = 19
                      end
                      inherited sbAdd: TSpeedButton
                        Left = 297
                        ExplicitLeft = 297
                      end
                      inherited sbInsert: TSpeedButton
                        Left = 352
                        ExplicitLeft = 352
                      end
                      inherited sbDelete: TSpeedButton
                        Left = 407
                        ExplicitLeft = 407
                      end
                      inherited seNumber: TJvSpinEdit
                        Height = 27
                        ExplicitHeight = 27
                      end
                    end
                    inherited Grid: TRbwDataGrid4
                      Width = 569
                      Height = 109
                      ExplicitWidth = 569
                      ExplicitHeight = 109
                    end
                  end
                end
              end
            end
          end
        end
        object jvspMNW2: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'MNW2_Object_Pane'
          Caption = 'jvspMNW2'
          inline frameMNW2: TframeScreenObjectMNW2
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited pcMnw2: TPageControl
              Width = 581
              OnChange = frameMNW2pcMnw2Change
              ExplicitWidth = 581
              inherited tabBasic: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 29
                ExplicitWidth = 601
                ExplicitHeight = 421
                inherited comboLossType: TJvImageComboBox
                  ItemIndex = -1
                end
                inherited edPartialPenetration: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited framePumpLocationMethod: TframeLocationMethod
                  Width = 501
                  Font.Pitch = fpVariable
                  ExplicitWidth = 501
                  inherited pcLocationChoice: TJvPageControl
                    Width = 164
                    ExplicitWidth = 164
                    inherited tabNone: TTabSheet
                      ExplicitWidth = 164
                    end
                    inherited tabObject: TTabSheet
                      inherited comboObject: TComboBox
                        Left = 0
                        Width = 243
                        ExplicitLeft = 0
                        ExplicitWidth = 243
                      end
                    end
                  end
                  inherited comboLocationChoice: TJvImageComboBox
                    Font.Pitch = fpVariable
                  end
                end
              end
              inherited tabLossControls: TTabSheet
                inherited edWellRadius: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edSkinRadius: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edKSkin: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edBCoefficient: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edCCoefficient: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edPCoefficient: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
                inherited edCellToWellConductance: TJvComboEdit
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                end
              end
              inherited tabDischargeAdjustment: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 29
                ExplicitWidth = 601
                ExplicitHeight = 421
                inherited rdgLiftTable: TRbwDataGrid4
                  ColWidths = (
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabPumpingRate: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 29
                ExplicitWidth = 601
                ExplicitHeight = 421
                inherited rdgTimeTable: TRbwDataGrid4
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
                  OnButtonClick = frameResdgModflowBoundaryButtonClick
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabWellScreens: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 29
                ExplicitWidth = 601
                ExplicitHeight = 421
                inherited rdgVerticalScreens: TRbwDataGrid4
                  OnButtonClick = frameResdgModflowBoundaryButtonClick
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabObservations: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 29
                ExplicitWidth = 573
                ExplicitHeight = 421
                inherited framePestObsMnw2: TframePestObs
                  Width = 573
                  ExplicitWidth = 573
                  inherited splObservations: TSplitter
                    Width = 573
                    ExplicitWidth = 573
                  end
                  inherited grpDirectObs: TGroupBox
                    Width = 573
                    ExplicitWidth = 573
                    inherited frameObservations: TframeGrid
                      Width = 569
                      ExplicitWidth = 569
                      inherited Panel: TPanel
                        Width = 569
                        ExplicitWidth = 569
                        inherited sbAdd: TSpeedButton
                          Left = 298
                          ExplicitLeft = 298
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        ExplicitWidth = 569
                      end
                    end
                  end
                  inherited grpObsComparisons: TGroupBox
                    Width = 573
                    ExplicitWidth = 573
                    inherited frameObsComparisons: TframeGrid
                      Width = 569
                      ExplicitWidth = 569
                      inherited Panel: TPanel
                        Width = 569
                        ExplicitWidth = 569
                        inherited sbAdd: TSpeedButton
                          Left = 298
                          ExplicitLeft = 298
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        ExplicitWidth = 569
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object jvspHYDMOD: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'HYD_HYDMOD_Package_Pane'
          Caption = 'jvspHYDMOD'
          inline frameHydmod: TframeScreenObjectHydmod
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited lblHYDLBL: TLabel
              Width = 204
              Height = 19
              ExplicitWidth = 204
              ExplicitHeight = 19
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited edHYDLBL: TRbwEdit
              Height = 27
              ExplicitHeight = 27
            end
            inherited gbBasic: TGroupBox
              inherited clbBasic: TCheckListBox
                Top = 21
                Height = 87
                OnClickCheck = frameHydmodclbBasicClickCheck
                ItemHeight = 19
                ExplicitTop = 21
                ExplicitHeight = 87
              end
            end
            inherited gbSubsidence: TGroupBox
              inherited lblLayerGroup: TLabel
                Width = 89
                Height = 19
                ExplicitWidth = 89
                ExplicitHeight = 19
              end
              inherited lblNoDelayBed: TLabel
                Width = 97
                Height = 19
                ExplicitWidth = 97
                ExplicitHeight = 19
              end
              inherited lblLayer: TLabel
                Width = 50
                Height = 19
                ExplicitWidth = 50
                ExplicitHeight = 19
              end
              inherited clbSub: TCheckListBox
                Top = 21
                OnClickCheck = frameHydmodclbSubClickCheck
                ItemHeight = 19
                ExplicitTop = 21
              end
              inherited comboLayerGroup: TJvImageComboBox
                Height = 29
                ItemHeight = 23
                OnChange = frameHydmodcomboLayerGroupChange
                ExplicitHeight = 29
              end
              inherited comboNoDelayBed: TJvImageComboBox
                Height = 29
                ItemHeight = 23
                OnChange = frameHydmodcomboNoDelayBedChange
                ExplicitHeight = 29
              end
              inherited clbLayer: TCheckListBox
                ItemHeight = 19
              end
            end
            inherited gbSFR: TGroupBox
              inherited clbSFR: TCheckListBox
                Top = 21
                Height = 87
                OnClickCheck = frameHydmodclbSFRClickCheck
                ItemHeight = 19
                ExplicitTop = 21
                ExplicitHeight = 87
              end
            end
          end
        end
        object jvspMT3DMS_SSM: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SSM_Sink__Source_Mixing_Packa2'
          Caption = 'jvspMT3DMS_SSM'
          inline frameMT3DMS_SSM: TframeScreenObjectSsm
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameMT3DMSseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited cbSpecifiedConcentration: TCheckBox
                OnClick = frameMT3DMScbSpecifiedConcentrationClick
              end
              inherited cbMassLoading: TCheckBox
                OnClick = frameMT3DMScbMassLoadingClick
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 354
              ExplicitWidth = 581
              ExplicitHeight = 354
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 302
                OnSetEditText = frameMT3DMSdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameMT3DMSdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 302
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspMT3DMS_TOB_Conc: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Concentration_Observations_TOB'
          Caption = 'jvspMT3DMS_TOB_Conc'
          inline frameMt3dmsTobConc: TframeConcentrationObservation
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pcData: TJvPageControl
              Width = 581
              Height = 377
              ExplicitWidth = 581
              ExplicitHeight = 377
              inherited tabTimes: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 343
                inherited Panel5: TPanel
                  Width = 573
                  Height = 41
                  ExplicitWidth = 573
                  ExplicitHeight = 41
                  inherited rdeMultiValueEdit: TRbwDataEntry
                    Height = 29
                    ExplicitHeight = 29
                  end
                  inherited comboSpeciesNames: TComboBox
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Panel2: TPanel
                  Top = 267
                  Width = 573
                  ExplicitTop = 267
                  ExplicitWidth = 573
                  inherited lblNumberOfTimes: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seTimes: TJvSpinEdit
                    Height = 27
                    OnChange = frameMt3dmsTobConcseTimesChange
                    ExplicitHeight = 27
                  end
                end
                inherited rdgObservations: TRbwDataGrid4
                  Top = 41
                  Width = 573
                  Height = 226
                  OnSetEditText = frameMt3dmsTobConcrdgObservationsSetEditText
                  ExplicitTop = 41
                  ExplicitWidth = 573
                  ExplicitHeight = 226
                  ColWidths = (
                    187
                    40
                    40
                    40
                    40
                    40)
                  RowHeights = (
                    24
                    24)
                end
              end
              inherited tabLayers: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 560
                ExplicitHeight = 217
                inherited Panel4: TPanel
                  Top = 141
                  ExplicitTop = 141
                  inherited lblNumberOfLayers: TLabel
                    Width = 125
                    Height = 19
                    ExplicitWidth = 125
                    ExplicitHeight = 19
                  end
                  inherited seLayers: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited rdgLayers: TRbwDataGrid4
                  Height = 106
                  ExplicitHeight = 106
                  ColWidths = (
                    64
                    64)
                  RowHeights = (
                    24
                    24)
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited pnlName: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited lblTreatment: TLabel
                Top = 5
                Width = 122
                Height = 19
                ExplicitTop = 5
                ExplicitWidth = 122
                ExplicitHeight = 19
              end
              inherited edObsName: TLabeledEdit
                Height = 27
                EditLabel.Width = 131
                EditLabel.Height = 19
                EditLabel.ExplicitTop = 5
                EditLabel.ExplicitWidth = 131
                EditLabel.ExplicitHeight = 19
                ExplicitHeight = 27
              end
              inherited comboTreatment: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspMT3DMS_TOB_Flux: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Flux_Observations_TOB_Transpor'
          Caption = 'jvspMT3DMS_TOB_Flux'
          inline frameMt3dmsFluxObs: TframeMt3dmsFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              AlignWithMargins = True
              Left = 3
              Width = 575
              Height = 19
              Margins.Top = 8
              Align = alTop
              ExplicitLeft = 3
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Top = 64
              Width = 575
              Height = 409
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
              OnSetEditText = frameMt3dmsFluxObsrdgObservationGroupsSetEditText
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameMt3dmsFluxObsrdgObservationGroupsStateChange
              ExplicitTop = 64
              ExplicitWidth = 575
              ExplicitHeight = 409
              RowHeights = (
                24
                24)
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              Top = 33
              OnClick = frameFluxObsbtnAddOrRemoveFluxObservationsClick
              ExplicitTop = 33
            end
          end
        end
        object jvspSTR: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'STR_Stream_Package_Pane'
          Caption = 'jvspSTR'
          inline frameScreenObjectSTR: TframeScreenObjectStr
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Top = 141
              Width = 581
              ExplicitTop = 141
              ExplicitWidth = 575
            end
            inherited pnlBottom: TPanel
              Top = 395
              Width = 581
              ExplicitTop = 395
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Width = 197
                Height = 19
                ExplicitWidth = 197
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Width = 177
                Height = 19
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              Height = 141
              ExplicitWidth = 581
              ExplicitHeight = 141
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                Height = 74
                ItemHeight = 19
                ExplicitWidth = 579
                ExplicitHeight = 74
              end
              inherited pnlNumber: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblSegmentNumber: TLabel
                  Width = 170
                  Height = 19
                  ExplicitWidth = 170
                  ExplicitHeight = 19
                end
                inherited seSegmentNumber: TJvSpinEdit
                  Height = 27
                  ExplicitHeight = 27
                end
              end
            end
            inherited pnlGrid: TPanel
              Top = 144
              Width = 581
              Height = 251
              ExplicitTop = 144
              ExplicitWidth = 581
              ExplicitHeight = 251
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 193
                OnButtonClick = frameScreenObjectSTRdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 193
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSTOB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'STOB_Stream_Observation_Pane'
          Caption = 'jvspSTOB'
          inline frameSTOB: TframeFluxObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Top = 34
              Width = 575
              Height = 441
              OnSetEditText = frameSTOBrdgObservationGroupsSetEditText
              OnStateChange = frameSTOBrdgObservationGroupsStateChange
              ExplicitTop = 34
              ExplicitWidth = 575
              ExplicitHeight = 441
              RowHeights = (
                24
                24)
            end
          end
        end
        object jvspFhbHeads: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Heads_in_FHB_Flow_and_Head_Bou'
          Caption = 'jvspFhbHeads'
          inline frameFhbHead: TframeScreenObjectFhbHead
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFhbFlows: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Flows_in_FHB_Flow_and_Head_Bou'
          Caption = 'jvspFhbFlows'
          inline frameFhbFlow: TframeScreenObjectFhbFlow
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 400
              Width = 581
              ExplicitTop = 400
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Width = 166
                Height = 19
                ExplicitWidth = 166
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
              inherited comboFormulaInterp: TComboBox
                Left = 190
                Top = 47
                Height = 27
                ExplicitLeft = 190
                ExplicitTop = 47
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 375
              ExplicitWidth = 581
              ExplicitHeight = 375
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 323
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 323
                ColWidths = (
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFarmWell: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Farms_Wells_in_FMP_Farm_Proces'
          Caption = 'jvspFarmWell'
          inline frameFarmWell: TframeScreenObjectCondParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splitHorizontal: TSplitter
              Width = 581
              ExplicitWidth = 573
            end
            inherited pnlBottom: TPanel
              Top = 395
              Width = 581
              ExplicitTop = 395
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Width = 192
                Height = 19
                Caption = 'Pumpint rate interpretation'
                ExplicitWidth = 192
                ExplicitHeight = 19
              end
              inherited lblTimeSeriesInterpolation: TLabel
                Width = 177
                Height = 19
                ExplicitWidth = 177
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameFarmWellseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
              inherited comboTimeSeriesInterpolation: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
              inherited comboFormulaInterp: TComboBox
                Left = 211
                Height = 27
                OnChange = frameFarmWellcomboFormulaInterpChange
                ExplicitLeft = 211
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
              inherited clbParameters: TJvxCheckListBox
                Width = 579
                ItemHeight = 19
                OnStateChange = frameFarmWellclbParametersStateChange
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 303
              ExplicitWidth = 581
              ExplicitHeight = 303
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 251
                ColCount = 5
                OnSetEditText = frameFarmWelldgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                Columns = <
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -11
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
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
                    AutoAdjustRowHeights = True
                    ButtonCaption = 'F()'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -13
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
                    ButtonWidth = 35
                    CheckMax = False
                    CheckMin = False
                    ComboUsed = False
                    Format = rcf4String
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
                    ButtonFont.Height = -13
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                  end
                  item
                    AutoAdjustRowHeights = False
                    ButtonCaption = '...'
                    ButtonFont.Charset = DEFAULT_CHARSET
                    ButtonFont.Color = clWindowText
                    ButtonFont.Height = -13
                    ButtonFont.Name = 'Tahoma'
                    ButtonFont.Style = []
                    ButtonUsed = False
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
                OnEndUpdate = frameFarmWelldgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 251
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFarmPrecip: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Precip_in_FMP_Farm_Process'
          Caption = 'jvspFarmPrecip'
          inline frameFarmPrecip: TframeScreenObjectFmpPrecip
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFarmRefEvap: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Ref_Evap_in_FMP_Farm_Process'
          Caption = 'jvspFarmRefEvap'
          inline frameFarmRefEvap: TframeScreenObjectFmpEvap
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFarmCropID: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Crop_ID_in_FMP_Farm_Process'
          Caption = 'jvspFarmCropID'
          inline frameFarmCropID: TframeScreenObjectCropID
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspCfpPipes: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CFP_Conduit_Flow_Process_Pane'
          Caption = 'jvspCfpPipes'
          inline frameCfpPipes: TframeScreenObjectCfpPipes
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            DesignSize = (
              581
              476)
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited btnDiameter: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited btnTortuosity: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited btnRoughnessHeight: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited btnLowerCriticalR: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited edDiameter: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 166
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 17
              EditLabel.ExplicitWidth = 166
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited edTortuosity: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 186
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 66
              EditLabel.ExplicitWidth = 186
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited edRoughnessHeight: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 217
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 116
              EditLabel.ExplicitWidth = 217
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited edLowerCriticalR: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 500
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 166
              EditLabel.ExplicitWidth = 500
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited edHigherCriticalR: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 504
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 215
              EditLabel.ExplicitWidth = 504
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited btnHigherCriticalR: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited edConductancePermeability: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 337
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 265
              EditLabel.ExplicitWidth = 337
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited btnConductancePermeability: TButton
              Left = 467
              OnClick = btnFormulaClick
              ExplicitLeft = 467
            end
            inherited edElevation: TLabeledEdit
              Width = 458
              Height = 27
              EditLabel.Width = 206
              EditLabel.Height = 19
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 313
              EditLabel.ExplicitWidth = 206
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 458
              ExplicitHeight = 27
            end
            inherited btnElevation: TButton
              Left = 467
              Top = 334
              OnClick = btnFormulaClick
              ExplicitLeft = 467
              ExplicitTop = 334
            end
            inherited cbRecordPipes: TCheckBox
              Width = 558
              ExplicitWidth = 558
            end
            inherited cbRecordNodes: TCheckBox
              Width = 550
              ExplicitWidth = 550
            end
          end
        end
        object jvspCfpFixedHeads: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CFP_Fixed_Heads_Pane'
          Caption = 'jvspCfpFixedHeads'
          inline frameCfpFixedHeads: TframeScreenObjectCfpFixed
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited lblHint: TLabel
              Width = 482
              Height = 95
              ExplicitWidth = 482
              ExplicitHeight = 95
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited edFixedHead: TLabeledEdit
              Width = 464
              Height = 27
              EditLabel.Width = 80
              EditLabel.Height = 19
              EditLabel.ExplicitTop = 17
              EditLabel.ExplicitWidth = 80
              EditLabel.ExplicitHeight = 19
              ExplicitWidth = 464
              ExplicitHeight = 27
            end
            inherited btnFixedHead: TButton
              Left = 479
              OnClick = btnFormulaClick
              ExplicitLeft = 479
            end
          end
        end
        object jvspCfpRechargeFraction: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CFP_Conduit_Recharge_Pane'
          Caption = 'jvspCfpRechargeFraction'
          inline frameCfpRechargeFraction: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameCfpRechargeFractionseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameCfpRechargeFractiondgModflowBoundarySetEditText
                OnEndUpdate = frameCfpRechargeFractiondgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSWR_Rain: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Rain_in_SWR_Surface_Water_Rout'
          Caption = 'jvspSWR_Rain'
          inline frameSWR_Rain: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              DesignSize = (
                581
                46)
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameSWR_RainseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameSWR_RaindgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameSWR_RaindgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSWR_Evap: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Evaporation_in_SWR_Surface_Wat'
          Caption = 'jvspSWR_Evap'
          inline frameSWR_Evap: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              DesignSize = (
                581
                46)
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameSWR_EvapseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameSWR_EvapdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameSWR_EvapdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSwr_LatInfl: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Lateral_Inflow_in_SWR_Surface'
          Caption = 'jvspSwr_LatInfl'
          inline frameSWR_LatInfl: TframeScreenObjectSwr
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 392
              Width = 581
              ExplicitTop = 392
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblConductanceInterpretation: TLabel
                Width = 195
                Height = 19
                Caption = 'Lateral inflow interpretation'
                ExplicitWidth = 195
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameSWR_LatInflseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
              inherited comboFormulaInterp: TComboBox
                Height = 27
                OnChange = frameSWR_LatInflcomboFormulaInterpChange
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 367
              ExplicitWidth = 581
              ExplicitHeight = 367
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 315
                OnSetEditText = frameSWR_LatInfldgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameSWR_LatInfldgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 315
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSWR_Stage: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Stage_in_SWR_Surface_Water_Rou'
          Caption = 'jvspSWR_Stage'
          inline frameSWR_Stage: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameSWR_StageseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameSWR_StagedgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameSWR_StagedgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSWR_DirectRunoff: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Direct_Runoff_in_SWR_Surface_W'
          Caption = 'jvspSWR_DirectRunoff'
          inline frameSWR_DirectRunoff: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameSWR_DirectRunoffseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameSWR_DirectRunoffdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                OnEndUpdate = frameSWR_DirectRunoffdgModflowBoundaryEndUpdate
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSwrReaches: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Reaches_in_SWR_Surface_Water_R'
          Caption = 'jvspSwrReaches'
          inline frameSwrReach: TframeScreenObjectSwrReach
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pgcSwr: TPageControl
              Width = 581
              Height = 476
              ExplicitWidth = 581
              ExplicitHeight = 476
              inherited tabSteady: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 442
                inherited pnlSteady: TPanel
                  Width = 573
                  ExplicitWidth = 573
                  inherited lblGroupNumber: TLabel
                    Width = 185
                    Height = 19
                    ExplicitWidth = 185
                    ExplicitHeight = 19
                  end
                  inherited lblReachLength: TLabel
                    Width = 154
                    Height = 19
                    ExplicitWidth = 154
                    ExplicitHeight = 19
                  end
                  inherited lblRouteType: TLabel
                    Width = 227
                    Height = 19
                    ExplicitWidth = 227
                    ExplicitHeight = 19
                  end
                  inherited lblObservationType: TLabel
                    Width = 130
                    Height = 19
                    ExplicitWidth = 130
                    ExplicitHeight = 19
                  end
                  inherited edReachLength: TRbwEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnEditReachLength: TButton
                    OnClick = btnFormulaClick
                  end
                  inherited comboRouteType: TJvImageComboBox
                    Height = 29
                    ItemHeight = 23
                    ItemIndex = -1
                    ExplicitHeight = 29
                  end
                  inherited cbbObservationTypes: TJvCheckedComboBox
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited grpConnections: TGroupBox
                  Width = 573
                  Height = 265
                  ExplicitWidth = 573
                  ExplicitHeight = 265
                  inherited lblDescription: TLabel
                    Top = 24
                    Width = 563
                    Height = 57
                    ExplicitTop = 24
                    ExplicitWidth = 531
                    ExplicitHeight = 57
                  end
                  inherited frameConnections: TframeGrid
                    Top = 84
                    Width = 569
                    Height = 179
                    ExplicitTop = 84
                    ExplicitWidth = 569
                    ExplicitHeight = 179
                    inherited Panel: TPanel
                      Top = 138
                      Width = 569
                      ExplicitTop = 138
                      ExplicitWidth = 569
                      inherited lbNumber: TLabel
                        Width = 57
                        Height = 19
                        ExplicitWidth = 57
                        ExplicitHeight = 19
                      end
                      inherited sbAdd: TSpeedButton
                        Left = 297
                        ExplicitLeft = 294
                      end
                      inherited sbInsert: TSpeedButton
                        Left = 352
                        ExplicitLeft = 348
                      end
                      inherited sbDelete: TSpeedButton
                        Left = 407
                        ExplicitLeft = 402
                      end
                      inherited seNumber: TJvSpinEdit
                        Height = 27
                        ExplicitHeight = 27
                      end
                    end
                    inherited Grid: TRbwDataGrid4
                      Width = 569
                      Height = 138
                      ExplicitWidth = 569
                      ExplicitHeight = 138
                      ColWidths = (
                        172
                        64
                        64)
                      RowHeights = (
                        24
                        24)
                    end
                  end
                end
              end
              inherited tabTransient: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 567
                ExplicitHeight = 348
                inherited frameSwr: TframeScreenObjectNoParam
                  Height = 348
                  ExplicitHeight = 348
                  inherited pnlBottom: TPanel
                    Top = 302
                    ExplicitTop = 302
                    inherited lblNumTimes: TLabel
                      Width = 119
                      Height = 19
                      ExplicitWidth = 119
                      ExplicitHeight = 19
                    end
                    inherited seNumberOfTimes: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                    inherited btnDelete: TBitBtn
                      Left = 475
                      ExplicitLeft = 475
                    end
                    inherited btnInsert: TBitBtn
                      Left = 391
                      ExplicitLeft = 391
                    end
                  end
                  inherited pnlGrid: TPanel
                    Height = 277
                    ExplicitHeight = 277
                    inherited pnlEditGrid: TPanel
                      inherited lblFormula: TLabel
                        Width = 59
                        Height = 19
                        ExplicitWidth = 59
                        ExplicitHeight = 19
                      end
                    end
                    inherited rdgModflowBoundary: TRbwDataGrid4
                      Height = 225
                      OnSetEditText = frameSwrdgModflowBoundarySetEditText
                      OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                      Columns = <
                        item
                          AutoAdjustRowHeights = False
                          ButtonCaption = 'F()'
                          ButtonFont.Charset = DEFAULT_CHARSET
                          ButtonFont.Color = clWindowText
                          ButtonFont.Height = -11
                          ButtonFont.Name = 'Tahoma'
                          ButtonFont.Style = []
                          ButtonUsed = False
                          ButtonWidth = 35
                          CheckMax = False
                          CheckMin = False
                          ComboUsed = True
                          Format = rcf4String
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
                          AutoAdjustRowHeights = True
                          ButtonCaption = 'F()'
                          ButtonFont.Charset = DEFAULT_CHARSET
                          ButtonFont.Color = clWindowText
                          ButtonFont.Height = -11
                          ButtonFont.Name = 'Tahoma'
                          ButtonFont.Style = []
                          ButtonUsed = False
                          ButtonWidth = 35
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
                          AutoAdjustRowHeights = True
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
                          WordWrapCaptions = True
                          WordWrapCells = False
                          CaseSensitivePicklist = False
                          CheckStyle = csCheck
                          AutoAdjustColWidths = True
                        end
                        item
                          AutoAdjustRowHeights = True
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
                          WordWrapCaptions = True
                          WordWrapCells = False
                          CaseSensitivePicklist = False
                          CheckStyle = csCheck
                          AutoAdjustColWidths = True
                        end
                        item
                          AutoAdjustRowHeights = True
                          ButtonCaption = '...'
                          ButtonFont.Charset = DEFAULT_CHARSET
                          ButtonFont.Color = clWindowText
                          ButtonFont.Height = -13
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
                            'Active (>0)'
                            'Inactive (0)'
                            'Specified Stage (<0)')
                          WordWrapCaptions = True
                          WordWrapCells = False
                          CaseSensitivePicklist = False
                          CheckStyle = csCheck
                          AutoAdjustColWidths = True
                        end
                        item
                          AutoAdjustRowHeights = True
                          ButtonCaption = 'F()'
                          ButtonFont.Charset = DEFAULT_CHARSET
                          ButtonFont.Color = clWindowText
                          ButtonFont.Height = -13
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
                          PickList.Strings = (
                            'Active (>0)'
                            'Inactive (0)'
                            'Specified Stage (<0)')
                          WordWrapCaptions = True
                          WordWrapCells = False
                          CaseSensitivePicklist = False
                          CheckStyle = csCheck
                          AutoAdjustColWidths = True
                        end>
                      ExplicitLeft = 1
                      ExplicitHeight = 225
                      ColWidths = (
                        64
                        64
                        64
                        64
                        174
                        64)
                      RowHeights = (
                        24
                        24)
                    end
                  end
                end
              end
            end
          end
        end
        object jvspMNW1: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'MNW1_Multi_Node_Well_Package_2'
          Caption = 'jvspMNW1'
          inline frameMNW1: TframeScreenObjectMnw1
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 392
              Width = 581
              ExplicitTop = 392
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblSite: TLabel
                Width = 228
                Height = 19
                ExplicitWidth = 228
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
              inherited edSiteLabel: TEdit
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 367
              ExplicitWidth = 581
              ExplicitHeight = 367
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
                inherited comboConductance: TJvImageComboBox
                  Height = 29
                  ItemHeight = 23
                  ExplicitHeight = 29
                end
                inherited comboWaterLevelLimit: TJvImageComboBox
                  Height = 29
                  ItemHeight = 23
                  ExplicitHeight = 29
                end
                inherited comboPumpingLevelLimit: TJvImageComboBox
                  Height = 29
                  ItemHeight = 23
                  ExplicitHeight = 29
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 315
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 315
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspFarmID: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Farm_ID_in_FMP_Farm_Process_Pa'
          Caption = 'jvspFarmID'
          inline frameFarmID: TframeScreenObjectFarmID
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSWI_Obs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          Caption = 'jvspSWI_Obs'
          inline frameSwiObs: TframeSwiObsInterpolated
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited frameSwiObs: TframeGrid
              Width = 581
              Height = 371
              ExplicitWidth = 581
              ExplicitHeight = 371
              inherited Panel: TPanel
                Top = 330
                Width = 581
                ExplicitTop = 330
                ExplicitWidth = 581
                inherited lbNumber: TLabel
                  Width = 207
                  Height = 19
                  ExplicitWidth = 207
                  ExplicitHeight = 19
                end
                inherited sbAdd: TSpeedButton
                  Left = 302
                  ExplicitLeft = 301
                end
                inherited sbInsert: TSpeedButton
                  Left = 357
                  ExplicitLeft = 355
                end
                inherited sbDelete: TSpeedButton
                  Left = 413
                  ExplicitLeft = 411
                end
                inherited seNumber: TJvSpinEdit
                  Height = 27
                  ExplicitHeight = 27
                end
              end
              inherited Grid: TRbwDataGrid4
                Width = 581
                Height = 330
                OnSetEditText = frameSwiObsGridSetEditText
                ExplicitWidth = 581
                ExplicitHeight = 330
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
            inherited pnlMultiEdit: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited lblZetaSurfaceNumber: TLabel
                Width = 151
                Height = 19
                ExplicitWidth = 151
                ExplicitHeight = 19
              end
              inherited lblTreatment: TLabel
                Width = 71
                Height = 19
                ExplicitWidth = 71
                ExplicitHeight = 19
              end
              inherited comboMultiStatFlag: TJvImageComboBox
                Height = 29
                ItemHeight = 23
                ExplicitHeight = 29
              end
              inherited comboTreatment: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspRIP: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'RIP_Riparian_ET_Pane'
          Caption = 'jvspRIP'
          inline frameRIP: TframeScreenObjectRIP
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspMT3D_UZT_Rech: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Recharge_conc_in_UZT_Unsaturat'
          Caption = 'jvspMT3D_UZT_Rech'
          inline frameMt3d_UZT_Rech: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameMt3d_UZTdgModflowBoundarySetEditText
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspMT3D_UZT_Unsat: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Unsat_ET_conc_in_UZT_Unsaturat'
          Caption = 'jvspMT3D_UZT_Unsat'
          inline frameMt3d_UZT_Unsat: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameMt3d_UZT_UnsatdgModflowBoundarySetEditText
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspMT3D_UZT_Sat: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Sat_ET_conc_in_UZT_Unsaturated'
          Caption = 'jvspMT3D_UZT_Sat'
          inline frameMt3d_UZT_Sat: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameMt3d_UZT_SatdgModflowBoundarySetEditText
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspMT3D_Uzf_Ssm_Conc: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'UZF_sink_conc_in_SSM_Sink_and_'
          Caption = 'jvspMT3D_Uzf_Ssm_Conc'
          inline frameMT3D_Uzf_Ssm_Conc: TframeScreenObjectNoParam
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 491
                ExplicitLeft = 491
              end
              inherited btnInsert: TBitBtn
                Left = 407
                ExplicitLeft = 407
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 353
                OnSetEditText = frameMT3D_Uzf_SeepagedgModflowBoundarySetEditText
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 353
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
          end
        end
        object jvspSFR6: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SFR_MODFLOW_6_Streamflow_Routi'
          Caption = 'jvspSFR6'
          inline frameScreenObjectSfr6: TframeScreenObjectSfr6
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pgcSfr6: TPageControl
              Width = 581
              Height = 451
              ActivePage = frameScreenObjectSfr6.tabDownstreamSegments
              ExplicitWidth = 581
              ExplicitHeight = 451
              inherited tabConfiguration: TTabSheet
                ExplicitTop = 30
                ExplicitHeight = 213
                inherited lblSegmentNumber: TLabel
                  Width = 124
                  Height = 19
                  ExplicitWidth = 124
                  ExplicitHeight = 19
                end
                inherited rdgFormulas: TRbwDataGrid4
                  Height = 163
                  FixedCols = 0
                  OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                  ExplicitHeight = 163
                  ColWidths = (
                    64
                    64)
                  RowHeights = (
                    24
                    24
                    24
                    24
                    24
                    24
                    24)
                end
              end
              inherited tabRates: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 381
                ExplicitHeight = 213
                inherited pnlGrid: TPanel
                  Height = 167
                  ExplicitHeight = 167
                  inherited pnlEditGrid: TPanel
                    inherited lblFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgModflowBoundary: TRbwDataGrid4
                    Height = 115
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitHeight = 115
                    ColWidths = (
                      64
                      64
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                end
                inherited pnlBottom: TPanel
                  Top = 167
                  ExplicitTop = 167
                  inherited lblNumTimes: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimes: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnDelete: TBitBtn
                    Left = 485
                    ExplicitLeft = 485
                  end
                  inherited btnInsert: TBitBtn
                    Left = 401
                    ExplicitLeft = 401
                  end
                end
              end
              inherited tabDownstreamSegments: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 417
                inherited frmgrdDownstreamSegments: TframeGrid
                  Width = 573
                  Height = 417
                  ExplicitWidth = 573
                  ExplicitHeight = 417
                  inherited Panel: TPanel
                    Top = 376
                    Width = 573
                    ExplicitTop = 376
                    ExplicitWidth = 573
                    inherited lbNumber: TLabel
                      Width = 57
                      Height = 19
                      ExplicitWidth = 57
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      Left = 269
                      ExplicitLeft = 269
                    end
                    inherited sbInsert: TSpeedButton
                      Left = 306
                      ExplicitLeft = 306
                    end
                    inherited sbDelete: TSpeedButton
                      Left = 344
                      ExplicitLeft = 344
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Width = 573
                    Height = 376
                    OnButtonClick = frmgrdDownstreamSegmentsGridButtonClick
                    ExplicitWidth = 573
                    ExplicitHeight = 376
                    ColWidths = (
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                end
              end
              inherited tabDiversions: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 381
                ExplicitHeight = 213
                inherited frmgrdDiversions: TframeGrid
                  Height = 213
                  ExplicitHeight = 213
                  inherited Panel: TPanel
                    Top = 172
                    ExplicitTop = 172
                    inherited lbNumber: TLabel
                      Width = 57
                      Height = 19
                      ExplicitWidth = 57
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      Left = 299
                      ExplicitLeft = 296
                    end
                    inherited sbInsert: TSpeedButton
                      Left = 356
                      ExplicitLeft = 351
                    end
                    inherited sbDelete: TSpeedButton
                      Left = 410
                      ExplicitLeft = 406
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Height = 172
                    OnButtonClick = frmgrdDiversionsGridButtonClick
                    ExplicitHeight = 172
                    ColWidths = (
                      64
                      64)
                    RowHeights = (
                      24
                      24)
                  end
                end
              end
            end
          end
        end
        object jvspMAW: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'MAW_Multi_Aquifer_Well_Package'
          Caption = 'jvspMAW'
          inline frameMAW: TframeScreenObjectMAW
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 573
                ExplicitWidth = 573
              end
            end
            inherited pgcMain: TPageControl
              Width = 581
              Height = 443
              ExplicitWidth = 581
              ExplicitHeight = 443
              inherited tabWell: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 541
                ExplicitHeight = 226
                inherited lblRadius: TLabel
                  Width = 50
                  Height = 19
                  ExplicitWidth = 50
                  ExplicitHeight = 19
                end
                inherited lblBottom: TLabel
                  Width = 50
                  Height = 19
                  ExplicitWidth = 50
                  ExplicitHeight = 19
                end
                inherited lblStartingHead: TLabel
                  Width = 136
                  Height = 19
                  ExplicitWidth = 136
                  ExplicitHeight = 19
                end
                inherited lblConductanceEquation: TLabel
                  Width = 244
                  Height = 19
                  ExplicitWidth = 244
                  ExplicitHeight = 19
                end
                inherited edWellRadius: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edBottom: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edStartingHead: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited comboConductEq: TJvImageComboBox
                  Height = 29
                  ItemHeight = 23
                  ItemIndex = -1
                  ExplicitHeight = 29
                end
              end
              inherited tabWellScreens: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 541
                ExplicitHeight = 226
                inherited frameWellScreens: TframeGrid
                  Height = 226
                  ExplicitHeight = 226
                  inherited Panel: TPanel
                    Top = 185
                    ExplicitTop = 185
                    inherited lbNumber: TLabel
                      Width = 170
                      Height = 19
                      ExplicitWidth = 170
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      ExplicitLeft = 382
                    end
                    inherited sbInsert: TSpeedButton
                      ExplicitLeft = 436
                    end
                    inherited sbDelete: TSpeedButton
                      ExplicitLeft = 488
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Height = 185
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitHeight = 185
                  end
                end
              end
              inherited tabTransient: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 409
                inherited pnlBottom: TPanel
                  Top = 363
                  Width = 573
                  ExplicitTop = 363
                  ExplicitWidth = 573
                  inherited lblNumTimes: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimes: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnDelete: TBitBtn
                    Left = 471
                    ExplicitLeft = 471
                  end
                  inherited btnInsert: TBitBtn
                    Left = 383
                    Top = 5
                    ExplicitLeft = 383
                    ExplicitTop = 5
                  end
                end
                inherited pnlGrid: TPanel
                  Width = 573
                  Height = 363
                  ExplicitWidth = 573
                  ExplicitHeight = 363
                  inherited pnlEditGrid: TPanel
                    Width = 571
                    ExplicitWidth = 571
                    inherited lblFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                    inherited lblStatus: TLabel
                      Width = 45
                      Height = 19
                      ExplicitWidth = 45
                      ExplicitHeight = 19
                    end
                    inherited lblRateLimitation: TLabel
                      Width = 101
                      Height = 19
                      ExplicitWidth = 101
                      ExplicitHeight = 19
                    end
                    inherited comboStatus: TJvImageComboBox
                      Height = 29
                      ItemHeight = 23
                      ExplicitHeight = 29
                    end
                    inherited comboRateLimitation: TJvImageComboBox
                      Height = 29
                      ItemHeight = 23
                      ExplicitHeight = 29
                    end
                  end
                  inherited rdgModflowBoundary: TRbwDataGrid4
                    Width = 571
                    Height = 305
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitWidth = 571
                    ExplicitHeight = 305
                    ColWidths = (
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64
                      64)
                  end
                end
              end
            end
          end
        end
        object jvspMf6Obs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'OBS_Observation_Utility_Pane'
          Caption = 'jvspMf6Obs'
          inline frameObsMf6: TframeScreenObjectObsMf6
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
            inherited pgcMain: TPageControl
              Width = 581
              Height = 405
              ExplicitWidth = 581
              ExplicitHeight = 405
              inherited tabBasic: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited lblTypesOfFlowObservation: TLabel
                  Width = 183
                  Height = 19
                  ExplicitWidth = 183
                  ExplicitHeight = 19
                end
                inherited lblBoundaryFlowObservations: TLabel
                  Width = 200
                  Height = 19
                  ExplicitWidth = 200
                  ExplicitHeight = 19
                end
                inherited chklstFlowObs: TCheckListBox
                  ItemHeight = 19
                end
                inherited chklstBoundaryFlow: TCheckListBox
                  Columns = 2
                  ItemHeight = 19
                end
              end
              inherited tabMAW: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited chklstMAW: TCheckListBox
                  Height = 270
                  ItemHeight = 19
                  ExplicitHeight = 270
                end
              end
              inherited tabSFR: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited chklstSFR: TCheckListBox
                  Height = 278
                  ItemHeight = 19
                  ExplicitHeight = 278
                end
              end
              inherited tabLAK: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited chklstLAK: TCheckListBox
                  Height = 366
                  ItemHeight = 19
                  ExplicitHeight = 366
                end
              end
              inherited tabUZF: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited lblDepthFraction: TLabel
                  Width = 430
                  Height = 19
                  ExplicitWidth = 430
                  ExplicitHeight = 19
                end
                inherited chklstUZF: TCheckListBox
                  ItemHeight = 19
                end
              end
              inherited tabCSUB: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 482
                ExplicitHeight = 414
                inherited splCSub: TSplitter
                  Top = 309
                  ExplicitTop = 315
                  ExplicitWidth = 573
                end
                inherited chklstCSUB: TCheckListBox
                  Height = 309
                  ItemHeight = 19
                  ExplicitHeight = 309
                end
                inherited pnlDelayBeds: TPanel
                  Top = 314
                  ExplicitTop = 314
                  inherited lblDelayInterbedNumber: TLabel
                    Width = 357
                    Height = 19
                    ExplicitWidth = 357
                    ExplicitHeight = 19
                  end
                  inherited chklstDelayBeds: TCheckListBox
                    ItemHeight = 19
                  end
                end
              end
              inherited tabCalibration: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 371
                inherited framePestObs: TframePestObsMf6
                  Width = 573
                  Height = 371
                  ExplicitWidth = 573
                  ExplicitHeight = 371
                  inherited splObservations: TSplitter
                    Top = 193
                    Width = 573
                    ExplicitTop = 193
                    ExplicitWidth = 573
                  end
                  inherited grpDirectObs: TGroupBox
                    Width = 573
                    Height = 193
                    ExplicitWidth = 573
                    ExplicitHeight = 193
                    inherited frameObservations: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 170
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 170
                      inherited Panel: TPanel
                        Top = 129
                        Width = 569
                        ExplicitTop = 129
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited sbAdd: TSpeedButton
                          Left = 297
                          ExplicitLeft = 297
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 129
                        OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                        ExplicitWidth = 569
                        ExplicitHeight = 129
                      end
                    end
                  end
                  inherited grpObsComparisons: TGroupBox
                    Top = 198
                    Width = 573
                    ExplicitTop = 198
                    ExplicitWidth = 573
                    inherited frameObsComparisons: TframeGrid
                      Top = 21
                      Width = 569
                      Height = 150
                      ExplicitTop = 21
                      ExplicitWidth = 569
                      ExplicitHeight = 150
                      inherited Panel: TPanel
                        Top = 109
                        Width = 569
                        ExplicitTop = 109
                        ExplicitWidth = 569
                        inherited lbNumber: TLabel
                          Width = 57
                          Height = 19
                          ExplicitWidth = 57
                          ExplicitHeight = 19
                        end
                        inherited sbAdd: TSpeedButton
                          Left = 297
                          ExplicitLeft = 297
                        end
                        inherited sbInsert: TSpeedButton
                          Left = 352
                          ExplicitLeft = 352
                        end
                        inherited sbDelete: TSpeedButton
                          Left = 407
                          ExplicitLeft = 407
                        end
                        inherited seNumber: TJvSpinEdit
                          Height = 27
                          ExplicitHeight = 27
                        end
                      end
                      inherited Grid: TRbwDataGrid4
                        Width = 569
                        Height = 109
                        ExplicitWidth = 569
                        ExplicitHeight = 109
                      end
                    end
                  end
                end
              end
            end
            inherited pnlName: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited edObsName: TLabeledEdit
                Height = 27
                EditLabel.Width = 205
                EditLabel.Height = 19
                EditLabel.ExplicitLeft = 6
                EditLabel.ExplicitTop = -3
                EditLabel.ExplicitWidth = 205
                EditLabel.ExplicitHeight = 19
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspHFB_MF6: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'HFB_Horizontal_Flow_Barrier_Pane'
          Caption = 'jvspHFB_MF6'
          inline frameHfbMf6: TframeScreenObjectHfbMf6
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 304
              Width = 581
              ExplicitTop = 304
              ExplicitWidth = 581
              DesignSize = (
                581
                172)
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblParameterName: TLabel
                Width = 121
                Height = 19
                ExplicitWidth = 121
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameHfbMf6seNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 405
                ExplicitLeft = 405
              end
              inherited rgAngleAdjustment: TRadioGroup
                Width = 561
                OnClick = frameHfbMf6rgAngleAdjustmentClick
                ExplicitWidth = 561
              end
              inherited comboHfbParameters: TJvImageComboBox
                Left = 404
                Height = 29
                ItemHeight = 23
                ExplicitLeft = 404
                ExplicitHeight = 29
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 279
              ExplicitWidth = 581
              ExplicitHeight = 279
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 227
                OnSetEditText = frameHfbMf6rdgModflowBoundarySetEditText
                OnButtonClick = frameHfbMf6rdgModflowBoundaryButtonClick
                ExplicitLeft = 1
                ExplicitWidth = 579
                ExplicitHeight = 227
              end
            end
          end
        end
        object jvspLakMf6: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'LAK_Lake_package_for_MODFLOW_2'
          Caption = 'jvspLakMf6'
          inline frameLakMf6: TframeScreenObjectLakMf6
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 428
              Width = 581
              ExplicitTop = 428
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 485
                ExplicitLeft = 485
              end
              inherited btnInsert: TBitBtn
                Left = 401
                ExplicitLeft = 401
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Top = 284
              Width = 581
              ExplicitTop = 284
              ExplicitWidth = 581
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                OnButtonClick = frameResdgModflowBoundaryButtonClick
                ExplicitWidth = 579
              end
            end
            inherited pcLake: TPageControl
              Width = 581
              Height = 259
              ActivePage = frameLakMf6.tabLakeTable
              ExplicitWidth = 581
              ExplicitHeight = 259
              inherited tabLakeProperties: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 443
                ExplicitHeight = 301
                inherited lblOutletCount: TLabel
                  Width = 127
                  Height = 19
                  ExplicitWidth = 127
                  ExplicitHeight = 19
                end
                inherited lblBottomElev: TLabel
                  Width = 172
                  Height = 19
                  ExplicitWidth = 172
                  ExplicitHeight = 19
                end
                inherited lblTopElev: TLabel
                  Width = 142
                  Height = 19
                  ExplicitWidth = 142
                  ExplicitHeight = 19
                end
                inherited lblLakebedK: TLabel
                  Width = 151
                  Height = 19
                  ExplicitWidth = 151
                  ExplicitHeight = 19
                end
                inherited lblLakebedThickness: TLabel
                  Width = 208
                  Height = 19
                  ExplicitWidth = 208
                  ExplicitHeight = 19
                end
                inherited lblConnLength: TLabel
                  Width = 205
                  Height = 19
                  ExplicitWidth = 205
                  ExplicitHeight = 19
                end
                inherited lblStartingStage: TLabel
                  Width = 139
                  Height = 19
                  ExplicitWidth = 139
                  ExplicitHeight = 19
                end
                inherited seOutletCount: TJvSpinEdit
                  Height = 27
                  ExplicitHeight = 27
                end
                inherited edBottomElev: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = btnFormulaClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
                inherited edTopElev: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = btnFormulaClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
                inherited edLakebedK: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = btnFormulaClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
                inherited edLakebedThickness: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = btnFormulaClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
                inherited edConnLength: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = btnFormulaClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
                inherited edStartingStage: TJvComboEdit
                  Left = 219
                  Width = 334
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitLeft = 219
                  ExplicitWidth = 334
                  ExplicitHeight = 27
                end
              end
              inherited tabLakeTransientProperties: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 443
                ExplicitHeight = 301
              end
              inherited tabLakeTable: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 225
                inherited frameLakeTable: TframeFormulaGrid
                  Width = 573
                  Height = 225
                  ExplicitWidth = 573
                  ExplicitHeight = 225
                  inherited Panel: TPanel
                    Top = 184
                    Width = 573
                    ExplicitTop = 184
                    ExplicitWidth = 573
                    inherited lbNumber: TLabel
                      Width = 206
                      Height = 19
                      ExplicitWidth = 206
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      Left = 400
                      ExplicitLeft = 462
                    end
                    inherited sbInsert: TSpeedButton
                      Left = 430
                      ExplicitLeft = 492
                    end
                    inherited sbDelete: TSpeedButton
                      Left = 460
                      ExplicitLeft = 522
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Width = 573
                    Height = 127
                    OnButtonClick = frameResdgModflowBoundaryButtonClick
                    ExplicitWidth = 573
                    ExplicitHeight = 127
                  end
                  inherited pnlTop: TPanel
                    Width = 573
                    ExplicitWidth = 573
                    inherited edFormula: TLabeledEdit
                      Height = 27
                      EditLabel.Width = 59
                      EditLabel.Height = 19
                      EditLabel.ExplicitLeft = 128
                      EditLabel.ExplicitTop = 8
                      EditLabel.ExplicitWidth = 59
                      EditLabel.ExplicitHeight = 19
                      ExplicitHeight = 27
                    end
                  end
                end
              end
            end
          end
        end
        object jvspMVR: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'MVR_Water_Mover_Package_Pane'
          Caption = 'jvspMVR'
          inline frameMVR: TframeScreenObjectMvr
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Top = 341
              Width = 581
              ExplicitTop = 341
              ExplicitWidth = 581
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
                inherited lblMvrType: TLabel
                  Width = 80
                  Height = 19
                  ExplicitWidth = 80
                  ExplicitHeight = 19
                end
                inherited comboMvrType: TComboBox
                  Height = 27
                  ExplicitHeight = 27
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                OnButtonClick = frameMVRrdgModflowBoundaryButtonClick
                ExplicitWidth = 579
              end
            end
            inherited pcMain: TPageControl
              Width = 581
              Height = 276
              ExplicitWidth = 581
              ExplicitHeight = 276
              inherited tabConnections: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 242
                inherited lblSourcePackage: TLabel
                  Width = 120
                  Height = 19
                  ExplicitWidth = 120
                  ExplicitHeight = 19
                end
                inherited comboSourcePackage: TComboBox
                  Height = 27
                  ExplicitHeight = 27
                end
                inherited frameReceivers: TframeGrid
                  Width = 573
                  Height = 178
                  ExplicitWidth = 573
                  ExplicitHeight = 178
                  inherited Panel: TPanel
                    Top = 137
                    Width = 573
                    ExplicitTop = 137
                    ExplicitWidth = 573
                    inherited lbNumber: TLabel
                      Width = 148
                      Height = 19
                      ExplicitWidth = 148
                      ExplicitHeight = 19
                    end
                    inherited sbAdd: TSpeedButton
                      Left = 299
                      ExplicitLeft = 292
                    end
                    inherited sbInsert: TSpeedButton
                      Left = 354
                      ExplicitLeft = 346
                    end
                    inherited sbDelete: TSpeedButton
                      Left = 410
                      ExplicitLeft = 400
                    end
                    inherited seNumber: TJvSpinEdit
                      Height = 27
                      ExplicitHeight = 27
                    end
                  end
                  inherited Grid: TRbwDataGrid4
                    Width = 573
                    Height = 137
                    ExplicitWidth = 573
                    ExplicitHeight = 137
                  end
                end
              end
              inherited tabTime: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 312
                ExplicitHeight = 205
              end
            end
            inherited pnlBottom: TPanel
              Top = 301
              Width = 581
              ExplicitTop = 301
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                OnChange = frameMVRseNumberOfTimesChange
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
          end
        end
        object jvspUzfMf6: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'UZF6_Unsaturated_Zone_Flow_Pac'
          Caption = 'jvspUzfMf6'
          inline frameScreenObjectUzfMf6: TframeScreenObjectUzfMf6
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 493
                ExplicitLeft = 493
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitWidth = 579
              end
            end
            inherited pcUzf: TPageControl
              Width = 581
              Height = 253
              ExplicitWidth = 581
              ExplicitHeight = 253
              inherited tabSteadyProperties: TTabSheet
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 219
                inherited lblSurfaceDepressionDepth: TLabel
                  Width = 260
                  Height = 19
                  ExplicitWidth = 260
                  ExplicitHeight = 19
                end
                inherited lblVerticalSaturatedK: TLabel
                  Width = 134
                  Height = 19
                  ExplicitWidth = 134
                  ExplicitHeight = 19
                end
                inherited lblResidualWaterContent: TLabel
                  Width = 204
                  Height = 19
                  ExplicitWidth = 204
                  ExplicitHeight = 19
                end
                inherited lblSaturatedWaterContent: TLabel
                  Width = 214
                  Height = 19
                  ExplicitWidth = 214
                  ExplicitHeight = 19
                end
                inherited lblInitialWaterContent: TLabel
                  Width = 178
                  Height = 19
                  ExplicitWidth = 178
                  ExplicitHeight = 19
                end
                inherited lblBrooksCoreyEpsilon: TLabel
                  Width = 200
                  Height = 19
                  ExplicitWidth = 200
                  ExplicitHeight = 19
                end
                inherited edSurfaceDepressionDepth: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edVerticalSaturatedK: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edResidualWaterContent: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edSaturatedWaterContent: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edInitialWaterContent: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
                inherited edBrooksCoreyEpsilon: TJvComboEdit
                  Height = 27
                  OnButtonClick = frameScreenObjectSFRjceButtonClick
                  ExplicitHeight = 27
                end
              end
              inherited tabTime: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 446
                ExplicitHeight = 178
              end
            end
          end
        end
        object jvspMTD_Lkt: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'LKT_Lake_Transport_Package_Pa2'
          Caption = 'jvspMTD_Lkt'
          inline frameMT3D_LKT: TframeScreenObjectLkt
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 497
                ExplicitLeft = 497
              end
              inherited btnInsert: TBitBtn
                Left = 409
                ExplicitLeft = 409
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Top = 288
              Width = 581
              ExplicitTop = 288
              ExplicitWidth = 581
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                OnSetEditText = frameMT3D_LKTrdgModflowBoundarySetEditText
                OnButtonClick = frameResdgModflowBoundaryButtonClick
                ExplicitWidth = 579
              end
            end
            inherited pcLkt: TPageControl
              Width = 581
              Height = 263
              ActivePage = frameMT3D_LKT.tabRunoffConc
              ExplicitWidth = 581
              ExplicitHeight = 263
              inherited tabInitialConc: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 312
                ExplicitHeight = 117
                inherited lblInitialConcentration: TLabel
                  Width = 232
                  Height = 19
                  ExplicitWidth = 232
                  ExplicitHeight = 19
                end
                inherited rdgInitialConcentration: TRbwDataGrid4
                  Height = 84
                  FixedCols = 0
                  OnButtonClick = frameResdgModflowBoundaryButtonClick
                  ExplicitHeight = 84
                end
              end
              inherited tabPrecipConc: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 312
                ExplicitHeight = 117
              end
              inherited tabRunoffConc: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 229
                inherited pnlButtonsRunoff: TPanel
                  Top = 183
                  Width = 573
                  ExplicitTop = 183
                  ExplicitWidth = 573
                  inherited lbl1: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seRunoffTimes: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnDeleteRunoff: TBitBtn
                    Left = 481
                    ExplicitLeft = 481
                  end
                  inherited btnInsertRunoff: TBitBtn
                    Left = 393
                    Top = 6
                    ExplicitLeft = 393
                    ExplicitTop = 6
                  end
                end
                inherited pnlGridRunoff: TPanel
                  Width = 573
                  Height = 183
                  ExplicitWidth = 573
                  ExplicitHeight = 183
                  inherited pnl3: TPanel
                    Width = 571
                    ExplicitWidth = 571
                    inherited lblRunoffFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgRunoffConc: TRbwDataGrid4
                    Width = 571
                    Height = 131
                    OnSetEditText = frameMT3D_LKTrdgRunoffConcSetEditText
                    OnButtonClick = frameResdgModflowBoundaryButtonClick
                    ExplicitWidth = 571
                    ExplicitHeight = 131
                  end
                end
              end
            end
          end
        end
        object jvspMT3D_SFT: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SFT_Stream_Flow_Transport_Pac2'
          Caption = 'jvspMT3D_SFT'
          inline frameMT3D_SFT: TframeScreenObjectMt3dSft
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 581
              ExplicitTop = 430
              ExplicitWidth = 581
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 489
                ExplicitLeft = 489
              end
              inherited btnInsert: TBitBtn
                Left = 405
                ExplicitLeft = 405
              end
            end
            inherited pnlTop: TPanel
              Width = 581
              ExplicitWidth = 581
              inherited pnlCaption: TPanel
                Width = 579
                ExplicitWidth = 579
              end
            end
            inherited pnlGrid: TPanel
              Width = 581
              Height = 212
              ExplicitWidth = 581
              ExplicitHeight = 212
              inherited pnlEditGrid: TPanel
                Width = 579
                ExplicitWidth = 579
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
              inherited rdgModflowBoundary: TRbwDataGrid4
                Width = 579
                Height = 160
                OnSetEditText = frameMT3D_SFTrdgModflowBoundarySetEditText
                OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                ExplicitWidth = 579
                ExplicitHeight = 160
              end
            end
            inherited pgcSft: TPageControl
              Top = 237
              Width = 581
              ExplicitTop = 237
              ExplicitWidth = 581
              inherited tsSteady: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 159
                inherited lblObsLocation: TLabel
                  Width = 235
                  Height = 19
                  ExplicitWidth = 235
                  ExplicitHeight = 19
                end
                inherited rdgSftInitConcAndDisp: TRbwDataGrid4
                  Width = 573
                  Height = 124
                  FixedCols = 0
                  OnSetEditText = frameMT3D_SFTrdgSftInitConcAndDispSetEditText
                  OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                  ExplicitWidth = 573
                  ExplicitHeight = 124
                end
                inherited comboObsLocation: TComboBox
                  Height = 27
                  ExplicitHeight = 27
                end
              end
              inherited tsHeadWaters: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 474
                ExplicitHeight = 159
              end
              inherited tsPrecipitation: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 474
                ExplicitHeight = 159
                inherited pnlBottomPrecip: TPanel
                  Top = 113
                  ExplicitTop = 113
                  inherited lblNumberOfTimesPrecip: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimesPrecip: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited pnlPrecip: TPanel
                  Height = 113
                  ExplicitHeight = 113
                  inherited pnlPrecipFormula: TPanel
                    inherited lblPrecipFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgPrecip: TRbwDataGrid4
                    Height = 61
                    OnSetEditText = frameMT3D_SFTrdgPrecipSetEditText
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitHeight = 61
                  end
                end
              end
              inherited tsRunoff: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 474
                ExplicitHeight = 159
                inherited pnlBottomRunoff: TPanel
                  Top = 113
                  ExplicitTop = 113
                  inherited lblNumberOfTimesRunoff: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimesRunoff: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited pnlRunoff: TPanel
                  Height = 113
                  ExplicitHeight = 113
                  inherited pnlFormulaRunoff: TPanel
                    inherited lblFormulaRunoff: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgRunoff: TRbwDataGrid4
                    Height = 61
                    OnSetEditText = frameMT3D_SFTrdgRunoffSetEditText
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitHeight = 61
                  end
                end
              end
              inherited tsConstantConcentration: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 474
                ExplicitHeight = 159
                inherited pnlBottomConstConc: TPanel
                  Top = 113
                  ExplicitTop = 113
                  inherited lblNumberOfTimesConstConc: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimesConstConc: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited pnlGridConstConc: TPanel
                  Height = 113
                  ExplicitHeight = 113
                  inherited pnlFormulaConstConc: TPanel
                    inherited lblFormulaConstConc: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgConstConc: TRbwDataGrid4
                    Height = 61
                    OnSetEditText = frameMT3D_SFTrdgConstConcSetEditText
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitHeight = 61
                    ColWidths = (
                      64
                      64
                      64)
                  end
                end
              end
            end
          end
        end
        object jvspCSUB: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'CSUB_Skeletal_Storage__Compac2'
          Caption = 'jvspCSUB'
          inline frameCSUB: TframeScreenObjectCSub
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited pcMain: TPageControl
              Width = 581
              Height = 435
              ActivePage = frameCSUB.tabTransient
              ExplicitWidth = 581
              ExplicitHeight = 435
              inherited tabInterbedSystems: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 30
                ExplicitWidth = 388
                ExplicitHeight = 257
                inherited rdgSubGroups: TRbwDataGrid4
                  Height = 201
                  FixedCols = 0
                  OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                  ExplicitHeight = 201
                end
                inherited pnlEditPkgProp: TPanel
                  inherited lblFormulaPkgProp: TLabel
                    Width = 59
                    Height = 19
                    ExplicitWidth = 59
                    ExplicitHeight = 19
                  end
                end
              end
              inherited tabTransient: TTabSheet
                ExplicitTop = 30
                ExplicitWidth = 573
                ExplicitHeight = 401
                inherited pnlBottom: TPanel
                  Top = 355
                  Width = 573
                  ExplicitTop = 355
                  ExplicitWidth = 573
                  inherited lblNumTimes: TLabel
                    Width = 119
                    Height = 19
                    ExplicitWidth = 119
                    ExplicitHeight = 19
                  end
                  inherited seNumberOfTimes: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                  inherited btnDelete: TBitBtn
                    Left = 487
                    ExplicitLeft = 487
                  end
                  inherited btnInsert: TBitBtn
                    Left = 399
                    ExplicitLeft = 399
                  end
                end
                inherited pnlGrid: TPanel
                  Width = 573
                  Height = 355
                  ExplicitWidth = 573
                  ExplicitHeight = 355
                  inherited pnlEditGrid: TPanel
                    Width = 571
                    ExplicitWidth = 571
                    inherited lblFormula: TLabel
                      Width = 59
                      Height = 19
                      ExplicitWidth = 59
                      ExplicitHeight = 19
                    end
                  end
                  inherited rdgModflowBoundary: TRbwDataGrid4
                    Width = 571
                    Height = 297
                    OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
                    ExplicitWidth = 571
                    ExplicitHeight = 297
                  end
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 581
            end
          end
        end
        object jvspSubPestObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          Caption = 'jvspSubPestObs'
          inline framePestObsSub: TframeSubPestObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splObservations: TSplitter
              Top = 298
              Width = 581
              ExplicitTop = 298
              ExplicitWidth = 581
            end
            inherited grpDirectObs: TGroupBox
              Width = 581
              Height = 274
              ExplicitWidth = 581
              ExplicitHeight = 274
              inherited frameObservations: TframeGrid
                Top = 21
                Width = 577
                Height = 251
                ExplicitTop = 21
                ExplicitWidth = 577
                ExplicitHeight = 251
                inherited Panel: TPanel
                  Top = 210
                  Width = 577
                  ExplicitTop = 210
                  ExplicitWidth = 577
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 302
                    ExplicitLeft = 302
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 357
                    ExplicitLeft = 357
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 413
                    ExplicitLeft = 413
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 577
                  Height = 210
                  ExplicitWidth = 577
                  ExplicitHeight = 210
                end
              end
            end
            inherited grpObsComparisons: TGroupBox
              Top = 303
              Width = 581
              ExplicitTop = 303
              ExplicitWidth = 581
              inherited frameObsComparisons: TframeGrid
                Top = 21
                Width = 577
                Height = 150
                ExplicitTop = 21
                ExplicitWidth = 577
                ExplicitHeight = 150
                inherited Panel: TPanel
                  Top = 109
                  Width = 577
                  ExplicitTop = 109
                  ExplicitWidth = 577
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 302
                    ExplicitLeft = 302
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 357
                    ExplicitLeft = 357
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 413
                    ExplicitLeft = 413
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 577
                  Height = 109
                  ExplicitWidth = 577
                  ExplicitHeight = 109
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
          end
        end
        object jvspSwtPestObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 581
          Height = 476
          Caption = 'jvspSwtPestObs'
          inline framePestObsSwt: TframeSubPestObs
            Left = 0
            Top = 0
            Width = 581
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 581
            ExplicitHeight = 476
            inherited splObservations: TSplitter
              Top = 298
              Width = 581
              ExplicitTop = 298
              ExplicitWidth = 581
            end
            inherited grpDirectObs: TGroupBox
              Width = 581
              Height = 274
              ExplicitWidth = 581
              ExplicitHeight = 274
              inherited frameObservations: TframeGrid
                Top = 21
                Width = 577
                Height = 251
                ExplicitTop = 21
                ExplicitWidth = 577
                ExplicitHeight = 251
                inherited Panel: TPanel
                  Top = 210
                  Width = 577
                  ExplicitTop = 210
                  ExplicitWidth = 577
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 302
                    ExplicitLeft = 302
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 357
                    ExplicitLeft = 357
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 413
                    ExplicitLeft = 413
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 577
                  Height = 210
                  ExplicitWidth = 577
                  ExplicitHeight = 210
                end
              end
            end
            inherited grpObsComparisons: TGroupBox
              Top = 303
              Width = 581
              ExplicitTop = 303
              ExplicitWidth = 581
              inherited frameObsComparisons: TframeGrid
                Top = 21
                Width = 577
                Height = 150
                ExplicitTop = 21
                ExplicitWidth = 577
                ExplicitHeight = 150
                inherited Panel: TPanel
                  Top = 109
                  Width = 577
                  ExplicitTop = 109
                  ExplicitWidth = 577
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 302
                    ExplicitLeft = 302
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 357
                    ExplicitLeft = 357
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 413
                    ExplicitLeft = 413
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 577
                  Height = 109
                  ExplicitWidth = 577
                  ExplicitHeight = 109
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 581
              ExplicitWidth = 581
            end
          end
        end
      end
    end
    object tabSutraFeatures: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'SUTRA_Features_Tab'
      Caption = 'SUTRA Features'
      ImageIndex = 9
      object splttrSutraFeatures: TJvNetscapeSplitter
        Left = 161
        Top = 0
        Height = 476
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
        ExplicitLeft = 240
        ExplicitTop = 208
        ExplicitHeight = 100
      end
      object jvplSutraFeatures: TJvPageList
        Left = 171
        Top = 0
        Width = 605
        Height = 476
        ActivePage = jvspGeneralizedTransport
        PropagateEnable = False
        Align = alClient
        OnChange = jvplSutraFeaturesChange
        object jvspSutraObservations: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SutraObservations'
          Caption = 'jvspSutraObservations'
          inline frameSutraObservations: TframeSutraObservations
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 430
              Width = 605
              ExplicitTop = 430
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 515
                OnClick = frameSutraObservationsbtnDeleteClick
                ExplicitLeft = 515
              end
              inherited btnInsert: TBitBtn
                Left = 431
                OnClick = frameSutraObservationsbtnInsertClick
                ExplicitLeft = 431
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 237
              ExplicitWidth = 605
              ExplicitHeight = 237
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 235
                ExplicitWidth = 603
                ExplicitHeight = 235
                RowHeights = (
                  24
                  24)
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited lblObservationFormat: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited lblName: TLabel
                Width = 128
                Height = 19
                ExplicitWidth = 128
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Width = 589
                Height = 27
                ExplicitWidth = 589
                ExplicitHeight = 27
              end
              inherited comboObservationFormat: TComboBox
                Width = 589
                Height = 27
                ExplicitWidth = 589
                ExplicitHeight = 27
              end
              inherited edName: TEdit
                Width = 586
                Height = 27
                ExplicitWidth = 586
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspSutraSpecifiedPressure: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SUTRA_Boundary_Condition_Panes'
          Caption = 'jvspSutraSpecifiedPressure'
          inline frameSutraSpecifiedPressure: TframeSutraBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 348
              Width = 605
              ExplicitTop = 348
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblFluidSourceInLakesPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 515
                ExplicitLeft = 515
              end
              inherited btnInsert: TBitBtn
                Left = 431
                ExplicitLeft = 431
              end
              inherited comboFluidSourceInLakesPresent: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 267
              ExplicitWidth = 605
              ExplicitHeight = 267
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 215
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 215
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
              inherited pnlEditGrid: TPanel
                Width = 603
                ExplicitWidth = 603
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Left = 6
                Width = 589
                Height = 27
                ExplicitLeft = 6
                ExplicitWidth = 589
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspSutraSpecTempConc: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SUTRA_Boundary_Condition_Panes'
          Caption = 'jvspSutraSpecTempConc'
          inline frameSutraSpecTempConc: TframeSutraBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 348
              Width = 605
              ExplicitTop = 348
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblFluidSourceInLakesPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 517
                ExplicitLeft = 517
              end
              inherited btnInsert: TBitBtn
                Left = 433
                ExplicitLeft = 433
              end
              inherited comboFluidSourceInLakesPresent: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 267
              ExplicitWidth = 605
              ExplicitHeight = 267
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 215
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 215
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
              inherited pnlEditGrid: TPanel
                Width = 603
                ExplicitWidth = 603
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Width = 591
                Height = 27
                ExplicitWidth = 591
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspSutraFluidFlux: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SUTRA_Boundary_Condition_Panes'
          Caption = 'jvspSutraFluidFlux'
          inline frameSutraFluidFlux: TframeSutraBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            HelpType = htKeyword
            HelpKeyword = 'SUTRA_Boundary_Condition_Panes'
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 348
              Width = 605
              ExplicitTop = 348
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblFluidSourceInLakesPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 517
                ExplicitLeft = 517
              end
              inherited btnInsert: TBitBtn
                Left = 433
                ExplicitLeft = 433
              end
              inherited comboFluidSourceInLakesPresent: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 267
              ExplicitWidth = 605
              ExplicitHeight = 267
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 215
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 215
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
              inherited pnlEditGrid: TPanel
                Width = 603
                ExplicitWidth = 603
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Width = 591
                Height = 27
                ExplicitWidth = 591
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspSutraMassEnergyFlux: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'SUTRA_Boundary_Condition_Panes'
          Caption = 'jvspSutraMassEnergyFlux'
          inline frameSutraMassEnergyFlux: TframeSutraBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 348
              Width = 605
              ExplicitTop = 348
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblFluidSourceInLakesPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 517
                ExplicitLeft = 517
              end
              inherited btnInsert: TBitBtn
                Left = 433
                ExplicitLeft = 433
              end
              inherited comboFluidSourceInLakesPresent: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 267
              ExplicitWidth = 605
              ExplicitHeight = 267
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 215
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 215
                ColWidths = (
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
              inherited pnlEditGrid: TPanel
                Width = 603
                ExplicitWidth = 603
                inherited lblFormula: TLabel
                  Width = 59
                  Height = 19
                  ExplicitWidth = 59
                  ExplicitHeight = 19
                end
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Width = 591
                Height = 27
                ExplicitWidth = 591
                ExplicitHeight = 27
              end
            end
          end
        end
        object jvspSutraBlank: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraBlank'
        end
        object jvspSutraLake: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Lake'
          Caption = 'jvspSutraLake'
          inline frameSutraLake: TframeSutraLake
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            inherited lblInitialStage: TLabel
              Width = 136
              Height = 19
              ExplicitWidth = 136
              ExplicitHeight = 19
            end
            inherited lblInitialU: TLabel
              Width = 304
              Height = 19
              ExplicitWidth = 304
              ExplicitHeight = 19
            end
            inherited lblFractionRechargeDiverted: TLabel
              Width = 273
              Height = 19
              ExplicitWidth = 273
              ExplicitHeight = 19
            end
            inherited lblFractionDischargeDiverted: TLabel
              Width = 280
              Height = 19
              ExplicitWidth = 280
              ExplicitHeight = 19
            end
            inherited pnlCaption: TPanel
              Width = 599
              ExplicitWidth = 599
            end
            inherited btnedInitialStage: TButtonedEdit
              Width = 583
              Height = 27
              OnRightButtonClick = btnFormulaClick
              ExplicitWidth = 583
              ExplicitHeight = 27
            end
            inherited btnedInitialU: TButtonedEdit
              Width = 583
              Height = 27
              OnRightButtonClick = btnFormulaClick
              ExplicitWidth = 583
              ExplicitHeight = 27
            end
            inherited btnedFractionRechargeDiverted: TButtonedEdit
              Width = 583
              Height = 27
              OnRightButtonClick = btnFormulaClick
              ExplicitWidth = 583
              ExplicitHeight = 27
            end
            inherited btnedFractionDischargeDiverted: TButtonedEdit
              Width = 583
              Height = 27
              OnRightButtonClick = btnFormulaClick
              ExplicitWidth = 583
              ExplicitHeight = 27
            end
          end
        end
        object jvspGeneralizedFlow: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Generalized_Flow_Pane'
          Caption = 'jvspGeneralizedFlow'
          inline frameSutraGeneralizedFlowBoundary: TframeSutraGeneralizedFlowBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 349
              Width = 605
              ExplicitTop = 349
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblGeneralizedFlowPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited lblLakeGeneralizedFlowType: TLabel
                Width = 113
                Height = 19
                ExplicitWidth = 113
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 517
                ExplicitLeft = 517
              end
              inherited btnInsert: TBitBtn
                Left = 433
                ExplicitLeft = 433
              end
              inherited comboGeneralizedFlowPresent: TComboBox
                Top = 44
                Height = 27
                ExplicitTop = 44
                ExplicitHeight = 27
              end
              inherited comboLakeGeneralizedFlowType: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Top = 139
              Width = 605
              Height = 210
              ExplicitTop = 139
              ExplicitWidth = 605
              ExplicitHeight = 210
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 208
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 208
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              Height = 89
              ExplicitLeft = -4
              ExplicitTop = -1
              ExplicitWidth = 605
              ExplicitHeight = 89
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Left = 6
                Top = 49
                Width = 576
                Height = 27
                ExplicitLeft = 6
                ExplicitTop = 49
                ExplicitWidth = 576
                ExplicitHeight = 27
              end
            end
            inherited pnlEditGrid: TPanel
              Top = 89
              Width = 605
              ExplicitTop = 89
              ExplicitWidth = 605
              inherited lblFormula: TLabel
                Width = 59
                Height = 19
                ExplicitWidth = 59
                ExplicitHeight = 19
              end
              inherited comboLimit: TJvImageComboBox
                Height = 29
                ItemHeight = 23
                ExplicitHeight = 29
              end
              inherited comboExit: TJvImageComboBox
                Height = 29
                ItemHeight = 23
                ExplicitHeight = 29
              end
            end
          end
        end
        object jvspGeneralizedTransport: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          HelpType = htKeyword
          HelpKeyword = 'Generalized_Transport_Pane'
          Caption = 'jvspGeneralizedTransport'
          inline frameSutraGeneralizeTransBoundary: TframeSutraGeneralizeTransBoundary
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited pnlBottom: TPanel
              Top = 355
              Width = 605
              ExplicitLeft = 0
              ExplicitTop = 355
              ExplicitWidth = 605
              inherited lblNumTimes: TLabel
                Width = 119
                Height = 19
                ExplicitWidth = 119
                ExplicitHeight = 19
              end
              inherited lblGeneralizedTransportPresent: TLabel
                Width = 220
                Height = 19
                ExplicitWidth = 220
                ExplicitHeight = 19
              end
              inherited lbl1: TLabel
                Width = 113
                Height = 19
                ExplicitWidth = 113
                ExplicitHeight = 19
              end
              inherited seNumberOfTimes: TJvSpinEdit
                Height = 27
                ExplicitHeight = 27
              end
              inherited btnDelete: TBitBtn
                Left = 515
                ExplicitLeft = 515
              end
              inherited btnInsert: TBitBtn
                Left = 431
                ExplicitLeft = 431
              end
              inherited comboGeneralizedTransportPresent: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
              inherited comboLakeGeneralizedTransportType: TComboBox
                Height = 27
                ExplicitHeight = 27
              end
            end
            inherited pnlGrid: TPanel
              Width = 605
              Height = 224
              ExplicitWidth = 605
              ExplicitHeight = 224
              inherited rdgSutraFeature: TRbwDataGrid4
                Width = 603
                Height = 222
                OnButtonClick = SutraBoundaryButtonClick
                ExplicitWidth = 603
                ExplicitHeight = 222
                ColWidths = (
                  64
                  64
                  64
                  64
                  64
                  64)
                RowHeights = (
                  24
                  24)
              end
            end
            inherited pnlTop: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblSchedule: TLabel
                Width = 153
                Height = 19
                ExplicitWidth = 153
                ExplicitHeight = 19
              end
              inherited pnlCaption: TPanel
                Width = 603
                ExplicitWidth = 603
              end
              inherited comboSchedule: TComboBox
                Width = 589
                Height = 27
                ExplicitWidth = 589
                ExplicitHeight = 27
              end
            end
            inherited pnlEditGrid: TPanel
              Width = 605
              ExplicitWidth = 605
              inherited lblFormula: TLabel
                Width = 59
                Height = 19
                ExplicitWidth = 59
                ExplicitHeight = 19
              end
            end
          end
        end
        object jvspSutraStateObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraStateObs'
          inline frameSutraPestObsState: TframePestObsCaptioned
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited splObservations: TSplitter
              Top = 298
              Width = 605
              ExplicitTop = 298
              ExplicitWidth = 605
            end
            inherited grpDirectObs: TGroupBox
              Width = 605
              Height = 257
              ExplicitTop = 41
              ExplicitWidth = 605
              ExplicitHeight = 257
              inherited frameObservations: TframeGrid
                Top = 21
                Width = 601
                Height = 234
                ExplicitTop = 21
                ExplicitWidth = 601
                ExplicitHeight = 234
                inherited Panel: TPanel
                  Top = 193
                  Width = 601
                  ExplicitTop = 193
                  ExplicitWidth = 601
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 315
                    ExplicitLeft = 315
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 372
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 431
                    ExplicitLeft = 431
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 601
                  Height = 193
                  ExplicitWidth = 601
                  ExplicitHeight = 193
                end
              end
            end
            inherited grpObsComparisons: TGroupBox
              Top = 303
              Width = 605
              ExplicitTop = 303
              ExplicitWidth = 605
              inherited frameObsComparisons: TframeGrid
                Top = 21
                Width = 601
                Height = 150
                ExplicitTop = 21
                ExplicitWidth = 601
                ExplicitHeight = 150
                inherited Panel: TPanel
                  Top = 109
                  Width = 601
                  ExplicitTop = 109
                  ExplicitWidth = 601
                  inherited lbNumber: TLabel
                    Width = 57
                    Height = 19
                    ExplicitWidth = 57
                    ExplicitHeight = 19
                  end
                  inherited sbAdd: TSpeedButton
                    Left = 315
                    ExplicitLeft = 315
                  end
                  inherited sbInsert: TSpeedButton
                    Left = 372
                    ExplicitLeft = 372
                  end
                  inherited sbDelete: TSpeedButton
                    Left = 431
                    ExplicitLeft = 431
                  end
                  inherited seNumber: TJvSpinEdit
                    Height = 27
                    ExplicitHeight = 27
                  end
                end
                inherited Grid: TRbwDataGrid4
                  Width = 601
                  Height = 109
                  ExplicitWidth = 601
                  ExplicitHeight = 109
                end
              end
            end
            inherited pnlCaption: TPanel
              Width = 605
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 605
            end
          end
        end
        object jvspSutraSpecPresObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraSpecPresObs'
          inline frameSutraSpecPresObs: TframeFluxObs
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 599
              Height = 441
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameSutraSpecPresObsrdgObservationGroupsStateChange
              ExplicitWidth = 599
              ExplicitHeight = 441
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              OnClick = frameSutraUObsbtnAddOrRemoveFluxObservationsClick
            end
          end
        end
        object jvspSutraSpecFlowObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraSpecFlowObs'
          inline frameSutraSpecifiedFluidFlowObs: TframeFluxObs
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 599
              Height = 441
              OnButtonClick = frameChdParamdgModflowBoundaryButtonClick
              OnStateChange = frameSutraSpecifiedFluidFlowObsrdgObservationGroupsStateChange
              ExplicitWidth = 599
              ExplicitHeight = 441
            end
            inherited btnAddOrRemoveFluxObservations: TButton
              OnClick = frameSutraUObsbtnAddOrRemoveFluxObservationsClick
            end
          end
        end
        object jvspSutraSpecUObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraSpecUObs'
          inline frameSutraSpecUObs: TframeFluxObs
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 599
              Height = 441
              OnStateChange = frameSutraSpecUObsrdgObservationGroupsStateChange
              ExplicitWidth = 599
              ExplicitHeight = 441
            end
          end
        end
        object jvspSutraGenFlowObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraGenFlowObs'
          inline frameSutraGenFlowObs: TframeFluxObs
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 599
              Height = 441
              OnStateChange = frameSutraGenFlowObsrdgObservationGroupsStateChange
              ExplicitWidth = 599
              ExplicitHeight = 441
            end
          end
        end
        object jvspSutraGenTransObs: TJvStandardPage
          Left = 0
          Top = 0
          Width = 605
          Height = 476
          Caption = 'jvspSutraGenTransObs'
          inline frameSutraGenTransObs: TframeFluxObs
            Left = 0
            Top = 0
            Width = 605
            Height = 476
            Align = alClient
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 605
            ExplicitHeight = 476
            inherited lblFluxObservations: TLabel
              Width = 125
              Height = 19
              ExplicitWidth = 125
              ExplicitHeight = 19
            end
            inherited rdgObservationGroups: TRbwDataGrid4
              Width = 599
              Height = 441
              OnStateChange = frameSutraGenTransObsrdgObservationGroupsStateChange
              ExplicitWidth = 599
              ExplicitHeight = 441
            end
          end
        end
      end
      object jvpltvSutraFeatures: TJvPageListTreeView
        Left = 0
        Top = 0
        Width = 161
        Height = 476
        AutoExpand = False
        ShowLines = True
        PageDefault = 0
        PageList = jvplSutraFeatures
        Align = alLeft
        HideSelection = False
        StateImages = ilCheckImages
        Indent = 19
        TabOrder = 0
        OnCustomDrawItem = jvpltvSutraFeaturesCustomDrawItem
        OnMouseDown = jvpltvSutraFeaturesMouseDown
        Items.NodeData = {
          030100000042000000000000000000000001000000FFFFFFFF00000000000000
          000000000001125300750074007200610020004F006200730065007200760061
          00740069006F006E007300}
        Items.Links = {0100000000000000}
      end
    end
    object tabFootprintFeatures: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Footprint_Well_Tab'
      Caption = 'Footprint Well'
      ImageIndex = 10
      inline frameScreenObjectFootprintWell: TframeScreenObjectFootprintWell
        Left = 0
        Top = 0
        Width = 776
        Height = 476
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 776
        ExplicitHeight = 476
        inherited lblPumpingRate: TLabel
          Width = 170
          Height = 19
          ExplicitWidth = 170
          ExplicitHeight = 19
        end
        inherited edPumpingRate: TRbwEdit
          Left = 192
          Width = 486
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          ExplicitLeft = 192
          ExplicitWidth = 486
          ExplicitHeight = 27
        end
        inherited btnPumpingRate: TButton
          Left = 684
          Width = 89
          Height = 31
          Anchors = [akTop, akRight]
          OnClick = btnFormulaClick
          ExplicitLeft = 684
          ExplicitWidth = 89
          ExplicitHeight = 31
        end
      end
    end
    object tabNodes: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Vertices_Tab'
      Caption = 'Vertices'
      ImageIndex = 1
      object dgVerticies: TRbwDataGrid4
        Left = 0
        Top = 0
        Width = 776
        Height = 476
        Align = alClient
        DefaultColWidth = 25
        FixedCols = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 19
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
        ParentFont = False
        TabOrder = 0
        OnEnter = dgVerticiesEnter
        ExtendedAutoDistributeText = False
        AutoMultiEdit = True
        AutoDistributeText = True
        AutoIncreaseColCount = False
        AutoIncreaseRowCount = True
        SelectedRowOrColumnColor = clAqua
        UnselectableColor = clBtnFace
        OnBeforeDrawCell = dgVerticiesBeforeDrawCell
        OnStateChange = dgVerticiesStateChange
        ColorRangeSelection = False
        Columns = <
          item
            AutoAdjustRowHeights = False
            ButtonCaption = 'F()'
            ButtonFont.Charset = DEFAULT_CHARSET
            ButtonFont.Color = clWindowText
            ButtonFont.Height = -11
            ButtonFont.Name = 'MS Sans Serif'
            ButtonFont.Pitch = fpVariable
            ButtonFont.Style = []
            ButtonUsed = False
            ButtonWidth = 25
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
            AutoAdjustColWidths = True
          end
          item
            AutoAdjustRowHeights = True
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
            ComboUsed = False
            Format = rcf4String
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
            ButtonCaption = 'F()'
            ButtonFont.Charset = DEFAULT_CHARSET
            ButtonFont.Color = clWindowText
            ButtonFont.Height = -11
            ButtonFont.Name = 'MS Sans Serif'
            ButtonFont.Pitch = fpVariable
            ButtonFont.Style = []
            ButtonUsed = False
            ButtonWidth = 25
            CheckMax = False
            CheckMin = False
            ComboUsed = False
            Format = rcf4Real
            LimitToList = False
            MaxLength = 40
            ParentButtonFont = False
            WordWrapCaptions = False
            WordWrapCells = False
            CaseSensitivePicklist = False
            CheckStyle = csCheck
            AutoAdjustColWidths = True
          end
          item
            AutoAdjustRowHeights = False
            ButtonCaption = 'F()'
            ButtonFont.Charset = DEFAULT_CHARSET
            ButtonFont.Color = clWindowText
            ButtonFont.Height = -11
            ButtonFont.Name = 'MS Sans Serif'
            ButtonFont.Pitch = fpVariable
            ButtonFont.Style = []
            ButtonUsed = False
            ButtonWidth = 25
            CheckMax = False
            CheckMin = False
            ComboUsed = False
            Format = rcf4Real
            LimitToList = False
            MaxLength = 0
            ParentButtonFont = False
            WordWrapCaptions = False
            WordWrapCells = False
            CaseSensitivePicklist = False
            CheckStyle = csCheck
            AutoAdjustColWidths = True
          end
          item
            AutoAdjustRowHeights = True
            ButtonCaption = 'F()'
            ButtonFont.Charset = DEFAULT_CHARSET
            ButtonFont.Color = clWindowText
            ButtonFont.Height = -11
            ButtonFont.Name = 'Tahoma'
            ButtonFont.Pitch = fpVariable
            ButtonFont.Style = []
            ButtonUsed = False
            ButtonWidth = 35
            CheckMax = False
            CheckMin = False
            ComboUsed = False
            Format = rcf4Boolean
            LimitToList = False
            MaxLength = 0
            ParentButtonFont = False
            WordWrapCaptions = True
            WordWrapCells = False
            CaseSensitivePicklist = False
            CheckStyle = csCheck
            AutoAdjustColWidths = True
          end>
        OnEndUpdate = dgVerticiesEndUpdate
        WordWrapRowCaptions = False
        ColWidths = (
          25
          25
          25
          25
          25)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
    object tabVertexValues: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Vertex_Values_Tab'
      Caption = 'Vertex Values'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = False
      object rdgVertexValues: TRbwDataGrid4
        Left = 0
        Top = 0
        Width = 776
        Height = 476
        Align = alClient
        FixedCols = 1
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor]
        TabOrder = 0
        ExtendedAutoDistributeText = False
        AutoMultiEdit = True
        AutoDistributeText = True
        AutoIncreaseColCount = False
        AutoIncreaseRowCount = False
        SelectedRowOrColumnColor = clAqua
        UnselectableColor = clBtnFace
        ColorRangeSelection = False
        Columns = <
          item
            AutoAdjustRowHeights = True
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
            ComboUsed = False
            Format = rcf4String
            LimitToList = False
            MaxLength = 0
            ParentButtonFont = False
            WordWrapCaptions = True
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
        WordWrapRowCaptions = False
        ColWidths = (
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
    object tabImportedData: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Imported_Data_Tab'
      Caption = 'Imported Data'
      ImageIndex = 5
      DesignSize = (
        776
        476)
      object rdgImportedData: TRbwDataGrid4
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 776
        Height = 436
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 40
        Align = alClient
        ColCount = 2
        FixedCols = 1
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
        TabOrder = 0
        OnSetEditText = rdgImportedDataSetEditText
        ExtendedAutoDistributeText = False
        AutoMultiEdit = True
        AutoDistributeText = True
        AutoIncreaseColCount = False
        AutoIncreaseRowCount = False
        SelectedRowOrColumnColor = clAqua
        UnselectableColor = clBtnFace
        ColorRangeSelection = False
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
            ComboUsed = False
            Format = rcf4String
            LimitToList = False
            MaxLength = 0
            ParentButtonFont = False
            WordWrapCaptions = False
            WordWrapCells = False
            CaseSensitivePicklist = False
            CheckStyle = csCheck
            AutoAdjustColWidths = True
          end
          item
            AutoAdjustRowHeights = True
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
            ComboUsed = False
            Format = rcf4String
            LimitToList = False
            MaxLength = 0
            ParentButtonFont = False
            WordWrapCaptions = True
            WordWrapCells = False
            CaseSensitivePicklist = False
            CheckStyle = csCheck
            AutoAdjustColWidths = True
          end>
        WordWrapRowCaptions = False
        ColWidths = (
          64
          64)
        RowHeights = (
          24
          24)
      end
      object btnCopyImportedData: TButton
        Left = 3
        Top = 441
        Width = 75
        Height = 33
        Anchors = [akLeft, akBottom]
        Caption = 'Copy'
        TabOrder = 1
        OnClick = btnCopyImportedDataClick
      end
    end
    object tabComments: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'Comments_Tab'
      Caption = 'Comments/Captions'
      ImageIndex = 6
      object splComment: TSplitter
        Left = 0
        Top = 273
        Width = 776
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 105
        ExplicitWidth = 47
      end
      object grpComment: TGroupBox
        Left = 0
        Top = 276
        Width = 776
        Height = 200
        Align = alClient
        Caption = 'Comment'
        TabOrder = 1
        DesignSize = (
          776
          200)
        object lblComments: TLabel
          AlignWithMargins = True
          Left = 16
          Top = 19
          Width = 647
          Height = 38
          Margins.Top = 10
          Anchors = [akLeft, akTop, akRight]
          Caption = 
            'If there is anything unusual or complicated about this object, y' +
            'ou can describe it here so you will understand how it works late' +
            'r.'
          WordWrap = True
        end
        object memoComments: TMemo
          Left = 2
          Top = 64
          Width = 772
          Height = 134
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object pnlText: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 273
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object grpCaption: TGroupBox
          Left = 0
          Top = 0
          Width = 776
          Height = 137
          Align = alTop
          Caption = 'Caption to appear near object'
          TabOrder = 0
          DesignSize = (
            776
            137)
          object lblCaptionX: TLabel
            Left = 16
            Top = 50
            Width = 56
            Height = 19
            Caption = 'X offset'
          end
          object lblCaptionY: TLabel
            Left = 16
            Top = 78
            Width = 56
            Height = 19
            Caption = 'Y offset'
          end
          object btnCaptionFont: TButton
            Left = 16
            Top = 106
            Width = 75
            Height = 25
            Caption = 'Font'
            TabOrder = 4
            OnClick = btnCaptionFontClick
          end
          object memoCaption: TMemo
            Left = 176
            Top = 24
            Width = 583
            Height = 107
            Anchors = [akLeft, akTop, akRight, akBottom]
            Lines.Strings = (
              'Caption')
            ScrollBars = ssBoth
            TabOrder = 1
            WordWrap = False
            OnChange = memoCaptionChange
          end
          object rdeCaptionX: TRbwDataEntry
            Left = 78
            Top = 47
            Width = 83
            Height = 22
            TabOrder = 2
            Text = '0'
            DataType = dtInteger
            Max = 1.000000000000000000
            ChangeDisabledColor = True
          end
          object rdeCaptionY: TRbwDataEntry
            Left = 78
            Top = 75
            Width = 83
            Height = 22
            TabOrder = 3
            Text = '0'
            DataType = dtInteger
            Max = 1.000000000000000000
            ChangeDisabledColor = True
          end
          object cbCaptionVisible: TCheckBox
            Left = 16
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Visible'
            TabOrder = 0
            OnClick = cbCaptionVisibleClick
          end
        end
        object grpLabelVertices: TGroupBox
          Left = 0
          Top = 137
          Width = 776
          Height = 120
          Align = alTop
          Caption = 'Vertex labels'
          TabOrder = 1
          object lblVertexXOffset: TLabel
            Left = 344
            Top = 26
            Width = 56
            Height = 19
            Caption = 'X offset'
          end
          object lblVertexYOffset: TLabel
            Left = 536
            Top = 26
            Width = 56
            Height = 19
            Caption = 'Y offset'
          end
          object lblVertexValueLabels: TLabel
            Left = 16
            Top = 56
            Width = 133
            Height = 19
            Caption = 'Vertex value labels'
          end
          object btnVertexFont: TButton
            Left = 304
            Top = 76
            Width = 75
            Height = 27
            Caption = 'Font'
            TabOrder = 4
            OnClick = btnVertexFontClick
          end
          object rdeVertexXOffset: TRbwDataEntry
            Left = 406
            Top = 23
            Width = 83
            Height = 22
            TabOrder = 0
            Text = '0'
            DataType = dtInteger
            Max = 1.000000000000000000
            ChangeDisabledColor = True
          end
          object rdeVertexYOffset: TRbwDataEntry
            Left = 598
            Top = 23
            Width = 83
            Height = 22
            TabOrder = 1
            Text = '0'
            DataType = dtInteger
            Max = 1.000000000000000000
            ChangeDisabledColor = True
          end
          object cbVertexLabelVisible: TCheckBox
            Left = 16
            Top = 28
            Width = 281
            Height = 17
            Caption = 'Vertex numbes visible'
            TabOrder = 2
            OnClick = cbVertexLabelVisibleClick
          end
          object comboVertexValueLabels: TComboBox
            Left = 16
            Top = 76
            Width = 268
            Height = 27
            Style = csDropDownList
            TabOrder = 3
            Items.Strings = (
              'None')
          end
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 514
    Width = 784
    Height = 41
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      784
      41)
    object btnOK: TBitBtn
      Left = 591
      Top = 6
      Width = 89
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000120B0000120B00001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 686
      Top = 6
      Width = 91
      Height = 33
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 5
      OnClick = btnCancelClick
    end
    object btnHelp: TBitBtn
      Left = 496
      Top = 6
      Width = 89
      Height = 33
      Anchors = [akTop, akRight]
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btnHelpClick
    end
    object btnCopyVertices: TButton
      Left = 4
      Top = 6
      Width = 117
      Height = 33
      Caption = 'Copy vertices'
      TabOrder = 0
      Visible = False
      OnClick = btnCopyVerticesClick
    end
    object btnConvertTimeUnits: TButton
      Left = 127
      Top = 6
      Width = 161
      Height = 33
      Caption = 'Convert time units'
      TabOrder = 1
      Visible = False
      OnClick = btnConvertTimeUnitsClick
    end
    object btnEditFeatureFormulas: TButton
      Left = 294
      Top = 6
      Width = 177
      Height = 33
      Caption = 'Edit feature formulas'
      TabOrder = 2
      Visible = False
      OnClick = btnEditFeatureFormulasClick
    end
  end
  object coldlgColors: TColorDialog
    Left = 640
    Top = 328
  end
  object rparserTopFormulaElements: TRbwParser
    Left = 424
    Top = 376
  end
  object rparserFrontFormulaElements: TRbwParser
    Left = 424
    Top = 328
  end
  object rparserSideFormulaElements: TRbwParser
    Left = 424
    Top = 280
  end
  object rparserThreeDFormulaElements: TRbwParser
    Left = 424
    Top = 232
  end
  object rparserTopFormulaNodes: TRbwParser
    Left = 264
    Top = 376
  end
  object rparserFrontFormulaNodes: TRbwParser
    Left = 264
    Top = 328
  end
  object rparserSideFormulaNodes: TRbwParser
    Left = 264
    Top = 280
  end
  object rparserThreeDFormulaNodes: TRbwParser
    Left = 264
    Top = 232
  end
  object ilCheckImages: TImageList
    Left = 648
    Top = 296
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC00E2EFF100E2EF
      F100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EF
      F100E2EFF1000000000000000000000000000000000099A8AC00E2EFF100E2EF
      F100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EF
      F100E2EFF1000000000000000000000000000000000099A8AC00E2EFF100E2EF
      F100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EF
      F100E2EFF1000000000000000000000000000000000099A8AC00E2EFF100E2EF
      F100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EFF100E2EF
      F100E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000D8E9EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F7100D8E9
      EC0000000000D8E9EC0099A8AC00D8E9EC0000000000D8E9EC0000000000D8E9
      EC00E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000D8E9EC0099A8AC0099A8AC0099A8AC00D8E9EC0000000000D8E9EC000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F7100D8E9
      EC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC00D8E9EC0000000000D8E9
      EC00E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      000099A8AC0099A8AC00D8E9EC0099A8AC0099A8AC0099A8AC00D8E9EC000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F7100D8E9
      EC0099A8AC00D8E9EC0000000000D8E9EC0099A8AC0099A8AC0099A8AC00D8E9
      EC00E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000D8E9EC0000000000D8E9EC0000000000D8E9EC0099A8AC0099A8AC000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F7100D8E9
      EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC0099A8AC00D8E9
      EC00E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F71000000
      0000D8E9EC0000000000D8E9EC0000000000D8E9EC0000000000D8E9EC000000
      0000E2EFF1000000000000000000000000000000000099A8AC00646F7100646F
      7100646F7100646F7100646F7100646F7100646F7100646F7100646F7100646F
      7100E2EFF1000000000000000000000000000000000099A8AC00646F7100646F
      7100646F7100646F7100646F7100646F7100646F7100646F7100646F7100646F
      7100E2EFF1000000000000000000000000000000000099A8AC00646F7100646F
      7100646F7100646F7100646F7100646F7100646F7100646F7100646F7100646F
      7100E2EFF1000000000000000000000000000000000099A8AC00646F7100646F
      7100646F7100646F7100646F7100646F7100646F7100646F7100646F7100646F
      7100E2EFF1000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF80078007800780079FF79FF79FF795579FF79FF79DF788A7
      9FF79FF798F790579FF79FF7907780279FF79FF7923790179FF79FF797178207
      9FF79FF79F9795179FF79FF79FD78A879FF79FF79FF795578007800780078007
      8007800780078007FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dlgFontCaption: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 56
    Top = 40
  end
end
