unit Mt3dSftWriterUnit;

interface

uses
  CustomModflowWriterUnit, PhastModelUnit, ScreenObjectUnit, System.Classes,
  System.SysUtils, ModflowPackageSelectionUnit, ModflowCellUnit,
  System.Generics.Collections, Mt3dSftUnit, GoPhastTypes, Vcl.Forms,
  ModflowBoundaryUnit, OrderedCollectionUnit;

type
  TMt3dmsSftWriter = class(TCustomParameterTransientWriter)
  private
    FStreamObjects: TList;
    FSftPackage: TMt3dSftPackageSelection;
    NSFINIT: Integer;
    FSftSteadyList: TSftSteadyObjectList;
    NCOMP: Integer;
    NOBSSF: Integer;
    FNameOfFile: string;
    procedure WriteDataSet1;
    procedure WriteDataSet2;
    procedure WriteDataSet3;
    procedure WriteDataSet4;
    procedure WriteDataSet5;
    procedure WriteDataSet6;
    procedure WriteDataSets7and8;
    procedure EvaluateSteadyData;
  protected
    procedure Evaluate; override;
    function Package: TModflowPackageSelection; override;
    class function Extension: string; override;
    function CellType: TValueCellType; override;
    function GetBoundary(ScreenObject: TScreenObject): TModflowBoundary;
      override;
    procedure WriteStressPeriods(const VariableIdentifiers, DataSetIdentifier,
      DS5, D7PNameIname, D7PName: string); override;
    function ParameterType: TParameterType; override;
    procedure WriteParameterCells(CellList: TValueCellList; NLST: Integer;
      const VariableIdentifiers, DataSetIdentifier: string;
      AssignmentMethod: TUpdateMethod;
      MultiplierArrayNames: TTransientMultCollection;
      ZoneArrayNames: TTransientZoneCollection); override;
    procedure WriteParameterDefinitions(const DS3, DS3Instances, DS4A,
      DataSetIdentifier, VariableIdentifiers, ErrorRoot: string;
      AssignmentMethod: TUpdateMethod;
      MultiplierArrayNames: TTransientMultCollection;
      ZoneArrayNames: TTransientZoneCollection); override;
  public
    Constructor Create(AModel: TCustomModel; EvaluationType: TEvaluationType); override;
    destructor Destroy; override;
    procedure WriteFile(const AFileName: string);
    procedure UpdateSteadyData;
  end;

implementation

uses
  frmProgressUnit, ModflowSfrUnit, Access2000, frmErrorsAndWarningsUnit,
  ModflowUnitNumbers, Mt3dmsChemUnit, ModflowBoundaryDisplayUnit;

resourcestring
  StrTheFollowingObjectSft = 'The following objects define SFT boundaries bu' +
  't do not define SFR boundaries. They will be skipped.';
  StrDefaultValueOfZer = 'Default value of zero assigned to SFR reach in whi' +
  'ch SFT is not defined.';
  StrInitialConcentratio = 'Data Set 3, Initial Concentration Component %d';
  StrDispersionComponent = 'Data Set 4, Dispersion Component %d';

function CompareBySegmentNumber(Item1, Item2: Pointer): Integer;
var
  Stream1, Stream2: TScreenObject;
begin
  Stream1 := Item1;
  Stream2 := Item2;
  result := Stream1.ModflowSfrBoundary.SegmentNumber - Stream2.ModflowSfrBoundary.SegmentNumber;
end;


{ TMt3dmsTobWriter }

function TMt3dmsSftWriter.CellType: TValueCellType;
begin
  result := TMt3dmsSftConc_Cell;
end;

constructor TMt3dmsSftWriter.Create(AModel: TCustomModel;
  EvaluationType: TEvaluationType);
begin
  inherited;
  FStreamObjects := TList.Create;
  FSftPackage := AModel.ModflowPackages.Mt3dSft;
  FSftSteadyList := TSftSteadyObjectList.Create;
  NCOMP := Model.NumberOfMt3dChemComponents;
end;

destructor TMt3dmsSftWriter.Destroy;
begin
  FSftSteadyList.Free;
  FStreamObjects.Free;
  inherited;
end;

procedure TMt3dmsSftWriter.Evaluate;
var
  ReachIndex: Integer;
  AReach: TSftSteady;
begin
  EvaluateSteadyData;

  if not frmProgressMM.ShouldContinue then
  begin
    Exit;
  end;

  inherited Evaluate;

  if not frmProgressMM.ShouldContinue then
  begin
    Exit;
  end;

  NOBSSF := 0;
  for ReachIndex := 0 to FSftSteadyList.Count - 1 do
  begin
    AReach := FSftSteadyList[ReachIndex];
    if AReach.IsObservation then
    begin
      Inc(NOBSSF);
    end;
  end;

end;

class function TMt3dmsSftWriter.Extension: string;
begin
  result := '.sft';
end;

function TMt3dmsSftWriter.GetBoundary(
  ScreenObject: TScreenObject): TModflowBoundary;
begin
  result := ScreenObject.Mt3dSftConcBoundary;
end;

function TMt3dmsSftWriter.Package: TModflowPackageSelection;
begin
  Result := Model.ModflowPackages.Mt3dSft;
end;

function TMt3dmsSftWriter.ParameterType: TParameterType;
begin
  result := ptUndefined
end;

procedure TMt3dmsSftWriter.UpdateSteadyData;
var
  ComponentIndex: Integer;
  DataSetName: string;
  DataArray: TModflowBoundaryDisplayDataArray;
  ReachIndex: Integer;
  AReach: TSftSteady;
  Index: Integer;
  StressPeriod: TCollectionItem;
begin
  if not frmProgressMM.ShouldContinue then
  begin
    Exit;
  end;

//  Model.UpdateModflowFullStressPeriods;
  Model.ModflowFullStressPeriods.BeginUpdate;
  try
    Model.ModflowFullStressPeriods.Clear;
    StressPeriod := Model.ModflowFullStressPeriods.Add;
    StressPeriod.Assign(Model.ModflowStressPeriods.First);
  finally
    Model.ModflowFullStressPeriods.EndUpdate;
  end;


  EvaluateSteadyData;
  for ComponentIndex := 1 to Model.NumberOfMt3dChemComponents do
  begin
    DataSetName := KSFTInitialConcentra + IntToStr(ComponentIndex);
    DataArray := Model.DataArrayManager.GetDataSetByName(DataSetName) 
      as TModflowBoundaryDisplayDataArray;
    if DataArray <> nil then
    begin
      DataArray.Clear;
      for ReachIndex := 0 to FSftSteadyList.Count - 1 do
      begin
        AReach := FSftSteadyList[ReachIndex];
        DataArray.AddDataValue(AReach.InitConcentrationsAnnotations[ComponentIndex-1],
          AReach.InitConcentrations[ComponentIndex-1], AReach.Cell.Column,
          AReach.Cell.Row, AReach.Cell.Layer);
      end;
      DataArray.ComputeAverage;
      DataArray.UpToDate := True;
    end;
    
    DataSetName := KSFTDispersion + IntToStr(ComponentIndex);
    DataArray := Model.DataArrayManager.GetDataSetByName(DataSetName) 
      as TModflowBoundaryDisplayDataArray;
    if DataArray <> nil then
    begin
      DataArray.Clear;
      for ReachIndex := 0 to FSftSteadyList.Count - 1 do
      begin
        AReach := FSftSteadyList[ReachIndex];
        DataArray.AddDataValue(AReach.DispersionsAnnotations[ComponentIndex-1],
          AReach.Dispersions[ComponentIndex-1], AReach.Cell.Column,
          AReach.Cell.Row, AReach.Cell.Layer);
      end;
      DataArray.ComputeAverage;
      DataArray.UpToDate := True;
    end;
  end;
end;

procedure TMt3dmsSftWriter.EvaluateSteadyData;
var
  StartingReach: Integer;
  ScreenObjectIndex: Integer;
  ScreenObject: TScreenObject;
  Boundary: TSfrBoundary;
  CellList: TCellAssignmentList;
  CellIndex: Integer;
  ACell: TCellAssignment;
  SteadyProp: TSftSteady;
  CompIndex: Integer;
begin
  frmErrorsAndWarnings.RemoveWarningGroup(Model, StrTheFollowingObjectSft);
  StartingReach := 0;
  for ScreenObjectIndex := 0 to Model.ScreenObjectCount - 1 do
  begin
    if not frmProgressMM.ShouldContinue then
    begin
      Exit;
    end;
    ScreenObject := Model.ScreenObjects[ScreenObjectIndex];
    if ScreenObject.Deleted then
    begin
      Continue;
    end;
    if not ScreenObject.UsedModels.UsesModel(Model) then
    begin
      Continue;
    end;
    Boundary := ScreenObject.ModflowSfrBoundary;
    if (Boundary = nil) or not Boundary.Used then
    begin
      if (ScreenObject.Mt3dSftConcBoundary <> nil) 
        and ScreenObject.Mt3dSftConcBoundary.Used then
      begin
        frmErrorsAndWarnings.AddWarning(Model, StrTheFollowingObjectSft, 
          ScreenObject.Name, ScreenObject);
      end;
      Continue;
    end;
    FStreamObjects.Add(ScreenObject);
  end;
  FStreamObjects.Sort(CompareBySegmentNumber);
  NSFINIT := 0;
  CellList := TCellAssignmentList.Create;
  try
    for ScreenObjectIndex := 0 to FStreamObjects.Count - 1 do
    begin
      CellList.Clear;
      ScreenObject := FStreamObjects[ScreenObjectIndex];
      ScreenObject.GetCellsToAssign('0', nil, nil, CellList, alAll, Model);
      NSFINIT := NSFINIT + CellList.Count;
      if (ScreenObject.Mt3dSftConcBoundary <> nil) 
        and ScreenObject.Mt3dSftConcBoundary.Used then
      begin
        ScreenObject.Mt3dSftConcBoundary.StartingReachNumber := StartingReach;
        ScreenObject.Mt3dSftConcBoundary.GetCellValues(Values, nil, Model);
        // Evaluate initial concentration and dispersion
        ScreenObject.Mt3dSftConcBoundary.
          AssignInitConcAndDisp(Model, FSftSteadyList);
      end
      else
      begin
        // set initial concentration and dispersion to 0 for these cells.
        for CellIndex := 0 to CellList.Count - 1 do
        begin
          ACell := CellList[CellIndex];
          SteadyProp := TSftSteady.Create;
          FSftSteadyList.Add(SteadyProp);
          SteadyProp.Cell := ACell.Cell;
          SteadyProp.InitConcentrations.Capacity := NCOMP;
          SteadyProp.InitConcentrationsAnnotations.Capacity := NCOMP;
          SteadyProp.Dispersions.Capacity := NCOMP;
          SteadyProp.DispersionsAnnotations.Capacity := NCOMP;
          for CompIndex := 0 to NCOMP - 1 do
          begin
            SteadyProp.InitConcentrations.Add(0);
            SteadyProp.InitConcentrationsAnnotations.Add(StrDefaultValueOfZer);
            SteadyProp.Dispersions.Add(0);
            SteadyProp.DispersionsAnnotations.Add(StrDefaultValueOfZer);
          end;
        end;
      end;
      StartingReach := StartingReach + CellList.Count;
    end;
  finally
    CellList.Free;
  end;
end;

procedure TMt3dmsSftWriter.WriteDataSet1;
var
  MXSFBC, ICBCSF, IOUTOBS, IETSFR: Integer;
  ScreenObjectIndex: Integer;
  ScreenObject: TScreenObject;
  CellList: TCellAssignmentList;
  SftObsOutputFileName: string;
begin
  NSFINIT := 0;
  MXSFBC := 0;
  CellList := TCellAssignmentList.Create;
  try
    for ScreenObjectIndex := 0 to FStreamObjects.Count - 1 do
    begin
      CellList.Clear;
      ScreenObject := FStreamObjects[ScreenObjectIndex];
      ScreenObject.GetCellsToAssign('0', nil, nil, CellList, alAll, Model);
      NSFINIT := NSFINIT + CellList.Count;
      if (ScreenObject.Mt3dSftConcBoundary <> nil)
        and ScreenObject.Mt3dSftConcBoundary.Used then
      begin
        if ScreenObject.Mt3dSftConcBoundary.Values.Count > 0 then
        begin
          MXSFBC := MXSFBC + CellList.Count;
        end;
        if ScreenObject.Mt3dSftConcBoundary.Precipitation.Count > 0 then
        begin
          MXSFBC := MXSFBC + CellList.Count;
        end;
        if ScreenObject.Mt3dSftConcBoundary.RunOff.Count > 0 then
        begin
          MXSFBC := MXSFBC + CellList.Count;
        end;
        if ScreenObject.Mt3dSftConcBoundary.ConstConc.Count > 0 then
        begin
          MXSFBC := MXSFBC + CellList.Count;
        end;
      end;
    end;
  finally
    CellList.Free;
  end;
  ICBCSF := 0;

  if NOBSSF > 0 then
  begin
    IOUTOBS := mt3dSftObs;
    SftObsOutputFileName := ChangeFileExt(FNameOfFile, '.obs_sft');
    WriteToMt3dMsNameFile(StrDATA, mt3dSftObs,
      SftObsOutputFileName, foOutput, Model);
  end
  else
  begin
    IOUTOBS := 0;
  end;

  IETSFR := Ord(FSftPackage.EvaporateMass);

  WriteInteger(NSFINIT);
  WriteInteger(MXSFBC);
  WriteInteger(ICBCSF);
  WriteInteger(IOUTOBS);
  WriteInteger(IETSFR);
  WriteString(' # Data set 1: NSFINIT, MXSFBC, ICBCSF, IOUTOBS, IETSFR');
  NewLine;
end;

procedure TMt3dmsSftWriter.WriteDataSet2;
var
  ISFSOLV: Integer;
  WIMP: double;
  WUPS: double;
  CCLOSESF: double;
  MXITERSF: Integer;
  CRNTSF: double;
  IPRTXMD: Integer;
begin
  ISFSOLV := 1;
  WIMP := FSftPackage.TimeWeightingFactor;
  WUPS := FSftPackage.SpaceWeightingFactor;
  CCLOSESF := FSftPackage.ClosureCriterion;
  MXITERSF := FSftPackage.MaxSftIterations;
  CRNTSF := 1;
  IPRTXMD := Ord(FSftPackage.SolverPrintChoice);

  WriteInteger(ISFSOLV);
  WriteFloat(WIMP);
  WriteFloat(WUPS);
  WriteFloat(CCLOSESF);
  WriteInteger(MXITERSF);
  WriteFloat(CRNTSF);
  WriteInteger(IPRTXMD);
  WriteString(' # Data Set 2: ISFSOLV, WIMP, WUPS, CCLOSESF, MXITERSF, CRNTSF, IPRTXMD');
  NewLine;
end;

procedure TMt3dmsSftWriter.WriteDataSet3;
var
  CompIndex: Integer;
  ReachIndex: Integer;
  AReach: TSftSteady;
  NewLineNeeded: Boolean;
begin
  for CompIndex := 0 to NCOMP - 1 do
  begin
    WriteU2DRELHeader(Format(StrInitialConcentratio, [CompIndex+1]), matStructured, '');

    NewLineNeeded := True;
    for ReachIndex := 0 to FSftSteadyList.Count - 1 do
    begin
      NewLineNeeded := True;
      AReach := FSftSteadyList[ReachIndex];
      WriteFloat(AReach.InitConcentrations[CompIndex]);
      if ((ReachIndex +1) mod 10) = 0 then
      begin
        NewLine;
        NewLineNeeded := False;
      end;
    end;
    if NewLineNeeded then
    begin
      NewLine;
    end;
  end;
end;

procedure TMt3dmsSftWriter.WriteDataSet4;
var
  CompIndex: Integer;
  ReachIndex: Integer;
  AReach: TSftSteady;
  NewLineNeeded: Boolean;
begin
  for CompIndex := 0 to NCOMP - 1 do
  begin
    WriteU2DRELHeader(Format(StrDispersionComponent, [CompIndex+1]), matStructured, '');

    NewLineNeeded := True;
    for ReachIndex := 0 to FSftSteadyList.Count - 1 do
    begin
      NewLineNeeded := True;
      AReach := FSftSteadyList[ReachIndex];
      WriteFloat(AReach.Dispersions[CompIndex]);
      if ((ReachIndex +1) mod 10) = 0 then
      begin
        NewLine;
        NewLineNeeded := False;
      end;
    end;
    if NewLineNeeded then
    begin
      NewLine;
    end;
  end;
end;

procedure TMt3dmsSftWriter.WriteDataSet5;
begin
  WriteI10Integer(NOBSSF, 'NOBSSF, SFT data set 5');
  WriteString(' # Data Set 5, NOBSSF');
  NewLine;
end;

procedure TMt3dmsSftWriter.WriteDataSet6;
var
  ReachIndex: Integer;
  AReach: TSftSteady;
  NewLineNeeded: Boolean;
  ObCount: Integer;
begin
  if NOBSSF > 0 then
  begin
//    WriteU2DINTHeader('Observation Reaches', matStructured, '');

    ObCount := 0;
    NewLineNeeded := True;
    for ReachIndex := 0 to FSftSteadyList.Count - 1 do
    begin
      NewLineNeeded := True;
      AReach := FSftSteadyList[ReachIndex];
      if AReach.IsObservation then
      begin
        WriteInteger(ReachIndex+1);
        Inc(ObCount);
        if (ObCount mod 10) = 0 then
        begin
          NewLine;
          NewLineNeeded := False;
        end;
      end;
    end;
    if NewLineNeeded then
    begin
      NewLine;
    end;
  end;
end;

procedure TMt3dmsSftWriter.WriteDataSets7and8;
var
  TimeIndex: Integer;
  SftRateList: TValueCellList;
  CellIndex: Integer;
  SftConcCell: TMt3dmsSftConc_Cell;
  NTMP: Integer;
  ISFNBC: Integer;
  ISFBCTYP: Integer;
  CompIndex: Integer;
begin
  for TimeIndex := 0 to Values.Count - 1 do
  begin
//    FTimeIndex := TimeIndex;
    Application.ProcessMessages;
    if not frmProgressMM.ShouldContinue then
    begin
      Exit;
    end;
    SftRateList := Values[TimeIndex];

    // Data Set 7
    NTMP := SftRateList.Count;
    WriteI10Integer(NTMP, 'NTMP, Data set 7 MT3D-USGS, SFT package');
    WriteString(' # NTMP, Stress Period');
    WriteInteger(TimeIndex+1);
    NewLine;

    // Data Set 8;
    for CellIndex := 0 to SftRateList.Count - 1 do
    begin
      SftConcCell := SftRateList[CellIndex] as TMt3dmsSftConc_Cell;
      ISFNBC := SftConcCell.ReachNumber + 1;
      ISFBCTYP := Ord(SftConcCell.BoundaryType);
      WriteInteger(ISFNBC);
      WriteInteger(ISFBCTYP);
      for CompIndex := 0 to NCOMP - 1 do
      begin
        WriteFloat(SftConcCell.Concentration[CompIndex]);
      end;
      WriteString(' # Data Set 8: ISFNBC, ISFBCTYP, (CBCSF(n), n=1, NCOMP)');
      NewLine;
    end;
  end;

end;

procedure TMt3dmsSftWriter.WriteFile(const AFileName: string);
begin
  if not Package.IsSelected then
  begin
    Exit
  end;
  if Model.PackageGeneratedExternally(StrSFT) then
  begin
    Exit;
  end;

  frmErrorsAndWarnings.BeginUpdate;
  try
    FNameOfFile := FileName(AFileName);
    WriteToMt3dMsNameFile(StrSFT, mt3dSFT,
      FNameOfFile, foInput, Model);

    Evaluate;

    OpenFile(FNameOfFile);
    try
      frmProgressMM.AddMessage('Writing SFT Package input.');
      frmProgressMM.AddMessage(StrWritingDataSet0);
      WriteDataSet0;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet1);
      WriteDataSet1;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet2);
      WriteDataSet2;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet3);
      WriteDataSet3;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet4);
      WriteDataSet4;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet5);
      WriteDataSet5;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage(StrWritingDataSet6);
      WriteDataSet6;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

      frmProgressMM.AddMessage('  Writing Data Sets 7 and 8.');
      WriteDataSets7and8;
      Application.ProcessMessages;
      if not frmProgressMM.ShouldContinue then
      begin
        Exit;
      end;

    finally
      CloseFile;
    end;

  finally
    frmErrorsAndWarnings.EndUpdate;
  end;

end;

procedure TMt3dmsSftWriter.WriteParameterCells(CellList: TValueCellList;
  NLST: Integer; const VariableIdentifiers, DataSetIdentifier: string;
  AssignmentMethod: TUpdateMethod;
  MultiplierArrayNames: TTransientMultCollection;
  ZoneArrayNames: TTransientZoneCollection);
begin
  Assert(False);

end;

procedure TMt3dmsSftWriter.WriteParameterDefinitions(const DS3, DS3Instances,
  DS4A, DataSetIdentifier, VariableIdentifiers, ErrorRoot: string;
  AssignmentMethod: TUpdateMethod;
  MultiplierArrayNames: TTransientMultCollection;
  ZoneArrayNames: TTransientZoneCollection);
begin
  Assert(False);

end;

procedure TMt3dmsSftWriter.WriteStressPeriods(const VariableIdentifiers,
  DataSetIdentifier, DS5, D7PNameIname, D7PName: string);
begin
  Assert(False);

end;

end.