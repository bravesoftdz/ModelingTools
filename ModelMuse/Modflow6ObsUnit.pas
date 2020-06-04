unit Modflow6ObsUnit;

interface

uses
  System.Classes, GoPhastTypes, System.SysUtils, ModflowMawUnit,
  ModflowSfr6Unit, ModflowLakMf6Unit, ModflowUzfMf6Unit,
  ModflowCsubUnit, PestObsUnit;

type
  TGwFlowOb = (gfoNearestNeighbor, gfoAllNeighbors, gfoAbove, gfoBelow);
  TGwFlowObs = set of TGwFlowOb;

  TObGeneral = (ogHead, ogDrawdown, ogCHD, ogDrain, ogWell, ogGHB, ogRiv,
    ogRch, ogEVT, ogMvr);

  TObSeries = (osGeneral, osMaw, osSfr, osLak, osUzf, osCSub);

  TMf6CalibrationObs = class(TCustomTimeObservationItem)
  private
    FUzfOb: TUzfOb;
    FSfrOb: TSfrOb;
    FCSubOb: TCSubOb;
    FObSeries: TObSeries;
    FMawOb: TMawOb;
    FLakOb: TLakOb;
    FObGeneral: TObGeneral;
    procedure SetCSubOb(const Value: TCSubOb);
    procedure SetLakOb(const Value: TLakOb);
    procedure SetMawOb(const Value: TMawOb);
    procedure SetObGeneral(const Value: TObGeneral);
    procedure SetObSeries(const Value: TObSeries);
    procedure SetSfrOb(const Value: TSfrOb);
    procedure SetUzfOb(const Value: TUzfOb);
    function StoreCSubOb: Boolean;
    function StoreLakOb: Boolean;
    function StoreMawOb: Boolean;
    function StoreObGeneral: Boolean;
    function StoreSfrOb: Boolean;
    function StoreUzfOb: Boolean;
  protected
    function GetObsTypeIndex: Integer; override;
    procedure SetObsTypeIndex(Value: Integer); override;
    function GetObsTypeString: string; override;
    procedure SetObsTypeString(const Value: string); override;
  published
    property ObSeries: TObSeries read FObSeries write SetObSeries;
    property ObGeneral: TObGeneral read FObGeneral write SetObGeneral stored StoreObGeneral;
    property MawOb: TMawOb read FMawOb write SetMawOb stored StoreMawOb;
    property SfrOb: TSfrOb read FSfrOb write SetSfrOb stored StoreSfrOb;
    property LakOb: TLakOb read FLakOb write SetLakOb stored StoreLakOb;
    property UzfOb: TUzfOb read FUzfOb write SetUzfOb stored StoreUzfOb;
    property CSubOb: TCSubOb read FCSubOb write SetCSubOb stored StoreCSubOb;
  end;

  TMf6CalibrationObservations = class(TCustomComparisonCollection)
    constructor Create(InvalidateModelEvent: TNotifyEvent;
      ScreenObject: TObject);
  end;

  TModflow6Obs = class(TGoPhastPersistent)
  private
    FHeadObs: Boolean;
    FGroundwaterFlowObs: Boolean;
    FGwFlowObsChoices: TGwFlowObs;
    FDrawdownObs: Boolean;
    FUsed: Boolean;
    FName: string;
    FChdFlowObs: Boolean;
    FDrnFlowObs: Boolean;
    FWelFlowObs: Boolean;
    FGhbFlowObs: Boolean;
    FRivFlowObs: Boolean;
    FRchFlowObs: Boolean;
    FEvtFlowObs: Boolean;
    FMawObs: TMawObs;
    FSfrObs: TSfrObs;
    FLakObs: TLakObs;
    FSfrObsLocation: TSfrObsLocation;
    FToMvrFlowObs: Boolean;
    FStoredUzfObsDepthFraction: TRealStorage;
    FUzfObs: TUzfObs;
    FCSubObs: TCSubObs;
    FCSubDelayCells: TIntegerCollection;
    FCalibrationObservations: TMf6CalibrationObservations;
    procedure SetDrawdownObs(const Value: Boolean);
    procedure SetGroundwaterFlowObs(const Value: Boolean);
    procedure SetGwFlowObsChoices(const Value: TGwFlowObs);
    procedure SetHeadObs(const Value: Boolean);
    procedure SetUsed(const Value: Boolean);
    procedure SetName(Value: string);
    procedure SetChdFlowObs(const Value: Boolean);
    procedure SetDrnFlowObs(const Value: Boolean);
    procedure SetGhbFlowObs(const Value: Boolean);
    procedure SetRivFlowObs(const Value: Boolean);
    procedure SetWelFlowObs(const Value: Boolean);
    procedure SetRchFlowObs(const Value: Boolean);
    procedure SetEvtFlowObs(const Value: Boolean);
    procedure SetMawObs(const Value: TMawObs);
    procedure SetSfrObs(const Value: TSfrObs);
    procedure SetLakObs(const Value: TLakObs);
    procedure SetSfrObsLocation(const Value: TSfrObsLocation);
    procedure SetToMvrFlowObs(const Value: Boolean);
    function GetUzfObsDepthFraction: double;
    procedure SetStoredUzfObsDepthFraction(const Value: TRealStorage);
    procedure SetUzfObs(const Value: TUzfObs);
    procedure SetUzfObsDepthFraction(const Value: double);
    procedure SetCSubObs(const Value: TCSubObs);
    procedure SetCSubDelayCells(const Value: TIntegerCollection);
    procedure SetCalibrationObservations(
      const Value: TMf6CalibrationObservations);
  public
    Constructor Create(InvalidateModelEvent: TNotifyEvent; ScreenObject: TObject);
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    property UzfObsDepthFraction: double read GetUzfObsDepthFraction
      write SetUzfObsDepthFraction;
  published
    property Name: string read FName write SetName;
    property Used: Boolean read FUsed write SetUsed;
    property HeadObs: Boolean read FHeadObs write SetHeadObs;
    property DrawdownObs: Boolean read FDrawdownObs write SetDrawdownObs;
    property GroundwaterFlowObs: Boolean read FGroundwaterFlowObs
      write SetGroundwaterFlowObs;
    property GwFlowObsChoices: TGwFlowObs read FGwFlowObsChoices
      write SetGwFlowObsChoices;
    property ChdFlowObs: Boolean read FChdFlowObs write SetChdFlowObs;
    property DrnFlowObs: Boolean read FDrnFlowObs write SetDrnFlowObs;
    property GhbFlowObs: Boolean read FGhbFlowObs write SetGhbFlowObs;
    property RivFlowObs: Boolean read FRivFlowObs write SetRivFlowObs;
    property WelFlowObs: Boolean read FWelFlowObs write SetWelFlowObs;
    property RchFlowObs: Boolean read FRchFlowObs write SetRchFlowObs;
    property EvtFlowObs: Boolean read FEvtFlowObs write SetEvtFlowObs;
    property ToMvrFlowObs: Boolean read FToMvrFlowObs write SetToMvrFlowObs;
    property MawObs: TMawObs read FMawObs write SetMawObs;
    property SfrObs: TSfrObs read FSfrObs write SetSfrObs;
    property LakObs: TLakObs read FLakObs write SetLakObs;
    property SfrObsLocation: TSfrObsLocation read FSfrObsLocation write SetSfrObsLocation;
    property UzfObs: TUzfObs read FUzfObs write SetUzfObs;
    property CSubObs: TCSubObs read FCSubObs write SetCSubObs
  {$IFNDEF CSUB}
    stored False
  {$ENDIF}
    ;
    property CSubDelayCells: TIntegerCollection read FCSubDelayCells
      write SetCSubDelayCells
  {$IFNDEF CSUB}
    stored False
  {$ENDIF}
    ;
    property StoredUzfObsDepthFraction: TRealStorage
      read FStoredUzfObsDepthFraction write SetStoredUzfObsDepthFraction;
    property CalibrationObservations: TMf6CalibrationObservations
      read FCalibrationObservations write SetCalibrationObservations
  {$IFNDEF PEST}
    stored False
  {$ENDIF}
      ;
  end;

function TryGetGenOb(const GenObName: string; var GenOb: TObGeneral): Boolean;
function GenObToString(const GenOb: TObGeneral): string;

implementation

uses
  System.Character;

const
  ObGenName: array[TObGeneral] of string = ('Head', 'Drawdown', 'CHD', 'Drain', 'Well', 'GHB', 'Riv',
    'Rch', 'EVT', 'Mvr');

var
  ObGenNames: TStringList;

procedure InitializeObGenNames;
var
  ObGen: TObGeneral;
begin
  ObGenNames := TStringList.Create;
  ObGenNames.CaseSensitive := False;
  for ObGen := Low(TObGeneral) to High(TObGeneral) do
  begin
    ObGenNames.Add(ObGenName[ObGen]);
  end;
end;

function TryGetGenOb(const GenObName: string; var GenOb: TObGeneral): Boolean;
var
  Index: Integer;
begin
  Index := ObGenNames.IndexOf(GenObName);
  result := Index >= 0;
  if result then
  begin
    GenOb := TObGeneral(Index);
  end;
end;

function GenObToString(const GenOb: TObGeneral): string;
begin
  result := ObGenName[GenOb];
end;

{ TModflow6Obs }

procedure TModflow6Obs.Assign(Source: TPersistent);
var
  SourceObs: TModflow6Obs;
begin
  if Source is TModflow6Obs then
  begin
    SourceObs := TModflow6Obs(Source);
    Used := SourceObs.Used;
    Name := SourceObs.Name;

    HeadObs := SourceObs.HeadObs;
    DrawdownObs := SourceObs.DrawdownObs;
    GroundwaterFlowObs := SourceObs.GroundwaterFlowObs;
    GwFlowObsChoices := SourceObs.GwFlowObsChoices;

    ChdFlowObs := SourceObs.ChdFlowObs;
    DrnFlowObs := SourceObs.DrnFlowObs;
    GhbFlowObs := SourceObs.GhbFlowObs;
    RivFlowObs := SourceObs.RivFlowObs;
    WelFlowObs := SourceObs.WelFlowObs;
    RchFlowObs := SourceObs.RchFlowObs;
    EvtFlowObs := SourceObs.EvtFlowObs;
    ToMvrFlowObs := SourceObs.ToMvrFlowObs;

    MawObs := SourceObs.MawObs;
    SfrObs := SourceObs.SfrObs;
    LakObs := SourceObs.LakObs;
    UzfObs := SourceObs.UzfObs;
    CSubObs := SourceObs.CSubObs;

    CSubDelayCells := SourceObs.CSubDelayCells;
    UzfObsDepthFraction := SourceObs.UzfObsDepthFraction;

    SfrObsLocation := SourceObs.SfrObsLocation;
    UzfObsDepthFraction := SourceObs.UzfObsDepthFraction;

    CalibrationObservations := SourceObs.CalibrationObservations;
  end
  else
  begin
    inherited;
  end;
end;

constructor TModflow6Obs.Create(InvalidateModelEvent: TNotifyEvent; ScreenObject: TObject);
begin
  inherited Create(InvalidateModelEvent);
  FGwFlowObsChoices := [gfoNearestNeighbor];
  FStoredUzfObsDepthFraction := TRealStorage.Create;
  FStoredUzfObsDepthFraction.OnChange := OnInvalidateModel;
  FCSubDelayCells := TIntegerCollection.Create(OnInvalidateModel);
  FCSubObs := TCSubObs.Create;
  FCalibrationObservations :=
    TMf6CalibrationObservations.Create(InvalidateModelEvent, ScreenObject);
end;

destructor TModflow6Obs.Destroy;
begin
  FCalibrationObservations.Free;
  FCSubObs.Free;
  FCSubDelayCells.Free;
  FStoredUzfObsDepthFraction.Free;
  inherited;
end;

function TModflow6Obs.GetUzfObsDepthFraction: double;
begin
  result := FStoredUzfObsDepthFraction.Value;
end;

procedure TModflow6Obs.SetCalibrationObservations(
  const Value: TMf6CalibrationObservations);
begin
  FCalibrationObservations.Assign(Value);
end;

procedure TModflow6Obs.SetChdFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FChdFlowObs, Value);
end;

procedure TModflow6Obs.SetCSubObs(const Value: TCSubObs);
begin
  if FCSubObs <> Value then
  begin
    FCSubObs.Assign(Value);
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetCSubDelayCells(const Value: TIntegerCollection);
begin
  FCSubDelayCells.Assign(Value);
end;

procedure TModflow6Obs.SetDrawdownObs(const Value: Boolean);
begin
  SetBooleanProperty(FDrawdownObs, Value);
end;

procedure TModflow6Obs.SetDrnFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FDrnFlowObs, Value);
end;

procedure TModflow6Obs.SetEvtFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FEvtFlowObs, Value);
end;

procedure TModflow6Obs.SetGhbFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FGhbFlowObs, Value);
end;

procedure TModflow6Obs.SetGroundwaterFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FGroundwaterFlowObs, Value);
end;

procedure TModflow6Obs.SetGwFlowObsChoices(const Value: TGwFlowObs);
begin
  if FGwFlowObsChoices <> Value then
  begin
    FGwFlowObsChoices := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetHeadObs(const Value: Boolean);
begin
  SetBooleanProperty(FHeadObs, Value);
end;

procedure TModflow6Obs.SetLakObs(const Value: TLakObs);
begin
  if FLakObs <> Value then
  begin
    FLakObs := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetMawObs(const Value: TMawObs);
begin
  if FMawObs <> Value then
  begin
    FMawObs := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetName(Value: string);
var
  CharIndex: Integer;
begin
  Value := Trim(Value);
  if Length(Value) > 40 then
  begin
    Value := Copy(Value, 1, 40);
  end;
  for CharIndex := 1 to Length(Value) do
  begin
    if not Value[CharIndex].IsLetterOrDigit
      and (Value[CharIndex] <> '_') then
    begin
      Value[CharIndex] := '_'
    end;
  end;
  SetStringProperty(FName, Value);
end;

procedure TModflow6Obs.SetRchFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FRchFlowObs, Value);
end;

procedure TModflow6Obs.SetRivFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FRivFlowObs, Value);
end;

procedure TModflow6Obs.SetSfrObs(const Value: TSfrObs);
begin
  if FSfrObs <> Value then
  begin
    FSfrObs := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetSfrObsLocation(const Value: TSfrObsLocation);
begin
  if FSfrObsLocation <> Value then
  begin
    FSfrObsLocation := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetStoredUzfObsDepthFraction(const Value: TRealStorage);
begin
  FStoredUzfObsDepthFraction.Assign(Value);
end;

procedure TModflow6Obs.SetToMvrFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FToMvrFlowObs, Value);
end;

procedure TModflow6Obs.SetUsed(const Value: Boolean);
begin
  SetBooleanProperty(FUsed, Value);
end;

procedure TModflow6Obs.SetUzfObs(const Value: TUzfObs);
begin
  if FUzfObs <> Value then
  begin
    FUzfObs := Value;
    InvalidateModel;
  end;
end;

procedure TModflow6Obs.SetUzfObsDepthFraction(const Value: double);
begin
  FStoredUzfObsDepthFraction.Value := Value;
end;

procedure TModflow6Obs.SetWelFlowObs(const Value: Boolean);
begin
  SetBooleanProperty(FWelFlowObs, Value);
end;

{ TMf6CalibrationObs }

function TMf6CalibrationObs.GetObsTypeIndex: Integer;
begin
  result := -1;
  case ObSeries of
    osGeneral:
      begin
        Result := Ord(ObGeneral);
      end;
    osMaw:
      begin
        Result := Ord(High(TObGeneral))
          + Ord(MawOb) + 1;
      end;
    osSfr:
      begin
        Result := Ord(High(TObGeneral))
          + Ord(High(TMawOb))
          + Ord(SfrOb) + 2;
      end;
    osLak:
      begin
        Result := Ord(High(TObGeneral))
          + Ord(High(TMawOb))
          + Ord(High(TSfrOb))
          + Ord(LakOb) + 3;
      end;
    osUzf:
      begin
        Result := Ord(High(TObGeneral))
          + Ord(High(TMawOb))
          + Ord(High(TSfrOb))
          + Ord(High(TLakOb))
          + Ord(UzfOb) + 4;
      end;
    osCSub:
      begin
        Result := Ord(High(TObGeneral))
          + Ord(High(TMawOb))
          + Ord(High(TSfrOb))
          + Ord(High(TLakOb))
          + Ord(High(TUzfOb))
          + Ord(CSubOb) + 5;
      end;
    else
      Assert(False);
  end;
end;

function TMf6CalibrationObs.GetObsTypeString: string;
begin
  result := '';
  case ObSeries of
    osGeneral:
      begin
        result := GenObToString(ObGeneral);
      end;
    osMaw:
      begin
        result := MawObToString(MawOb);
      end;
    osSfr:
      begin
        result := SfrObToString(SfrOb);
      end;
    osLak:
      begin
        result := LakObToString(LakOb);
      end;
    osUzf:
      begin
        result := UzfObToString(UzfOb);
      end;
    osCSub:
      begin
        result := CSubObToString(CSubOb);
      end;
    else
      begin
        Assert(False);
      end;
  end;
end;

procedure TMf6CalibrationObs.SetCSubOb(const Value: TCSubOb);
begin
  if FCSubOb <> Value then
  begin
    FCSubOb := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetLakOb(const Value: TLakOb);
begin
  if FLakOb <> Value then
  begin
    FLakOb := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetMawOb(const Value: TMawOb);
begin
  if FMawOb <> Value then
  begin
    FMawOb := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetObGeneral(const Value: TObGeneral);
begin
  if FObGeneral <> Value then
  begin
    FObGeneral := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetObSeries(const Value: TObSeries);
begin
  if FObSeries <> Value then
  begin
    FObSeries := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetObsTypeIndex(Value: Integer);
begin
  if Value <= Ord(High(TObGeneral)) then
  begin
    ObSeries := osGeneral;
    ObGeneral := TObGeneral(Value);
    Exit;
  end;
  Value := Value - Ord(High(TObGeneral)) - 1;

  if Value <= Ord(High(TMawOb)) then
  begin
    ObSeries := osMaw;
    MawOb := TMawOb(Value);
    Exit;
  end;
  Value := Value - Ord(High(TMawOb)) - 1;

  if Value <= Ord(High(TSfrOb)) then
  begin
    ObSeries := osSfr;
    SfrOb := TSfrOb(Value);
    Exit;
  end;
  Value := Value - Ord(High(TSfrOb)) - 1;

  if Value <= Ord(High(TLakOb)) then
  begin
    ObSeries := osLak;
    LakOb := TLakOb(Value);
    Exit;
  end;
  Value := Value - Ord(High(TLakOb)) - 1;

  if Value <= Ord(High(TUzfOb)) then
  begin
    ObSeries := osUzf;
    UzfOb := TUzfOb(Value);
    Exit;
  end;
  Value := Value - Ord(High(TUzfOb)) - 1;

  if Value <= Ord(High(TCSubOb)) then
  begin
    ObSeries := osCSub;
    CSubOb := TCSubOb(Value);
    Exit;
  end;
  Assert(False);
end;

procedure TMf6CalibrationObs.SetObsTypeString(const Value: string);
var
  ObGen: TObGeneral;
  ObMaw: TMawOb;
  ObSfr: TSfrOb;
  ObLake: TLakOb;
  ObUzf: TUzfOb;
  ObCSub: TCSubOb;
begin
  case ObSeries of
    osGeneral:
      begin
        if TryGetGenOb(Value, ObGen) then
        begin
          ObGeneral := ObGen;
          Exit;
        end;
      end;
    osMaw:
      begin
        if TryGetMawOb(Value, ObMaw) then
        begin
          MawOb := ObMaw;
          Exit;
        end;
      end;
    osSfr:
      begin
        if TryGetSfrOb(Value, ObSfr) then
        begin
          SfrOb := ObSfr;
          Exit;
        end;
      end;
    osLak:
      begin
        if TryGetLakOb(Value, ObLake) then
        begin
          LakOb := ObLake;
          Exit;
        end;
      end;
    osUzf:
      begin
        if TryGetUzfOb(Value, ObUzf) then
        begin
          UzfOb := ObUzf;
          Exit;
        end;
      end;
    osCSub:
      begin
        if TryGetCSubOb(Value, ObCSub) then
        begin
          CSubOb := ObCSub;
          Exit;
        end;
      end;
    else
      begin
        Assert(False);
      end;
  end;

  if TryGetGenOb(Value, ObGen) then
  begin
    ObGeneral := ObGen;
    ObSeries := osGeneral;
  end
  else if TryGetMawOb(Value, ObMaw) then
  begin
    MawOb := ObMaw;
    ObSeries := osMaw;
  end
  else if TryGetSfrOb(Value, ObSfr) then
  begin
    SfrOb := ObSfr;
    ObSeries := osSfr;
  end
  else if TryGetLakOb(Value, ObLake) then
  begin
    LakOb := ObLake;
    ObSeries := osLak;
  end
  else if TryGetUzfOb(Value, ObUzf) then
  begin
    UzfOb := ObUzf;
    ObSeries := osUzf;
  end
  else if TryGetCSubOb(Value, ObCSub) then
  begin
    CSubOb := ObCSub;
    ObSeries := osCSub;
  end
  else
  begin
    Assert(False);
  end;
end;

procedure TMf6CalibrationObs.SetSfrOb(const Value: TSfrOb);
begin
  if FSfrOb <> Value then
  begin
    FSfrOb := Value;
    InvalidateModel;
  end;
end;

procedure TMf6CalibrationObs.SetUzfOb(const Value: TUzfOb);
begin
  if FUzfOb <> Value then
  begin
    FUzfOb := Value;
    InvalidateModel;
  end;
end;

function TMf6CalibrationObs.StoreCSubOb: Boolean;
begin
  result := ObSeries = osCSub;
end;

function TMf6CalibrationObs.StoreLakOb: Boolean;
begin
  result := ObSeries = osLak;
end;

function TMf6CalibrationObs.StoreMawOb: Boolean;
begin
  result := ObSeries = osMaw;
end;

function TMf6CalibrationObs.StoreObGeneral: Boolean;
begin
  result := ObSeries = osGeneral;
end;

function TMf6CalibrationObs.StoreSfrOb: Boolean;
begin
  result := ObSeries = osSfr;
end;

function TMf6CalibrationObs.StoreUzfOb: Boolean;
begin
  result := ObSeries = osUzf;
end;

{ TMf6CalibrationObservations }

constructor TMf6CalibrationObservations.Create(
  InvalidateModelEvent: TNotifyEvent; ScreenObject: TObject);
begin
  inherited Create(TMf6CalibrationObs, InvalidateModelEvent, ScreenObject);
end;

end.
