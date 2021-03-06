unit ModflowIdentifiersUnit;

interface

uses
  SysUtils, Classes, ErrorMessages;

var
  PackageIdentifiers: TAnsiStringList;
  NumberPackageIdentifiers: TAnsiStringList;
  ObsIdentifiers: TAnsiStringList;
  BoundaryIdentifiers: TAnsiStringList;
  NumberBoundaryIdentifiers: TAnsiStringList;
//  KeyWords: TAnsiStringList;
  NonIdentifiers: TAnsiStringList;
//  ShortBoundaryIdentifiers: TAnsiStringList;

const
  StressPeriodID1 = 'STRESS PERIOD NO. ';
  StressPeriodID2 = 'LENGTH =';
  TransportStep = 'TRANSPORT STEP NO.';
  StartNewTimeStep = 'SOLVING FOR HEAD';
  StrINNERITERATIONSUMM = 'INNER ITERATION SUMMARY';
  StrTimeseriesControll = 'Time-series controlled values';
  IterationID1 = 'ITERATIONS FOR TIME STEP';
  IterationID2 = 'IN STRESS PERIOD';
  ArrayID1 = ' IN LAYER ';
  ArrayID2 = ' AT END OF TIME STEP ';
  ArrayID3 = ' FOR CROSS SECTION AT END OF TIME STEP';
  ArrayID4 = ' AT END OF TRANSPORT STEP '; // SEAWAT

  BudgetID = 'VOLUMETRIC BUDGET';
  SwiBudgetID = 'VOLUMETRIC SWI ZONE BUDGET';
  SwrBudgetID = 'VOLUMETRIC SURFACE WATER BUDGET';
  SwrBudgetDiscrepancy = 'DISCREPANCY BETWEEN MODFLOW AND SWR1 AQUIFER-REACH';
  TimeSummary = 'TIME SUMMARY';
  EndModel = 'Run end date and time';
  StrParameterName = 'PARAMETER NAME:';
  StrINSTANCE = 'INSTANCE:';
  StrParameter = 'Parameter:';
  StrINSTANCE2 = 'Instance:';
  StrCLASSIFICATIONCOU = 'CLASSIFICATION & COUNT OF STREAM SEGMENTS';
  StrRECHARGE = 'RECHARGE =';
  StrCfpm1Results = 'CFPM1 RESULTS';
  StrPipeBudget = 'BUDGET OF THE PIPE SYSTEM';

  // MODFLOW 6
  BudgetIDMf6 ='VOLUME BUDGET';

  StressPeriodMf6ID1 = 'STRESS PERIOD';
  StressPeriodMf6ID2A = 'IS TRANSIENT';
  StressPeriodMf6ID2B = 'IS STEADY-STATE';
  StrOUTPUTCONTROLFORS = 'OUTPUT CONTROL FOR STRESS PERIOD';
  Mf6StartTimeStep = 'start timestep kper="';
  Mf6Kstp = '" kstp="';


const
  StrHEADANDDRAWDOWNOB = 'HEAD AND DRAWDOWN OBSERVATIONS';
  StrMODELTIMEUNIT = 'MODEL TIME UNIT';
  StrGROUNDSURFACE = 'GROUND SURFACE';


implementation

resourcestring
  StrREUSING = 'REUSING ';

Procedure InitializePackageIdentifiers;
begin
  NumberPackageIdentifiers := TAnsiStringList.Create;
  NumberPackageIdentifiers.Add('0IBS -- INTERBED STORAGE PACKAGE');

  PackageIdentifiers := TAnsiStringList.Create;
  PackageIdentifiers.Add('BAS -- BASIC PACKAGE');
  PackageIdentifiers.Add('BAS6 -- BASIC PACKAGE, VERSION');
  PackageIdentifiers.Add('BCF -- BLOCK-CENTERED FLOW PACKAGE');
  PackageIdentifiers.Add('BCF6 -- BLOCK-CENTERED FLOW PACKAGE');
  PackageIdentifiers.Add('CHD -- TIME-VARIANT SPECIFIED-HEAD OPTION');
  PackageIdentifiers.Add('CHD6 -- TIME-VARIANT SPECIFIED-HEAD PACKAGE');  // SEAWAT
  PackageIdentifiers.Add('DE4 -- D4 DIRECT SOLUTION PACKAGE');
  PackageIdentifiers.Add('DRN -- DRAIN PACKAGE');
  PackageIdentifiers.Add('DRT7 -- DRAIN RETURN PACKAGE');
  PackageIdentifiers.Add('ETS7 -- EVAPOTRANSPIRATION SEGMENTS PACKAGE');
  PackageIdentifiers.Add('EVT -- EVAPOTRANSPIRATION PACKAGE');
  PackageIdentifiers.Add('FHB1 -- SPECIFIED FLOW PACKAGE');
  PackageIdentifiers.Add('GAGING STATION');
  PackageIdentifiers.Add('GHB -- GENERAL-HEAD BOUNDARY PACKAGE');
  PackageIdentifiers.Add('GMG -- PCG GEOMETRIC MULTI-GRID SOLUTION PACKAGE');
  PackageIdentifiers.Add('HFB -- HORIZONTAL-FLOW BARRIER PACKAGE');
  PackageIdentifiers.Add('HUF2 -- HYDROGEOLOGIC-UNIT FLOW PACKAGE');
  PackageIdentifiers.Add('HYD -- HYDROGRAPH DATA');
  PackageIdentifiers.Add('IBS -- INTERBED STORAGE PACKAGE');
  PackageIdentifiers.Add('LAK7 -- LAKE PACKAGE');
  PackageIdentifiers.Add('LPF -- LAYER-PROPERTY FLOW PACKAGE');
  PackageIdentifiers.Add('MNW1 -- MULTI-NODE WELL 1 PACKAGE');
  PackageIdentifiers.Add('MNW2 -- MULTI-NODE WELL 2 PACKAGE');
  PackageIdentifiers.Add('MNWI Package input');
  PackageIdentifiers.Add('OBS2BAS7 -- HEAD OBSERVATIONS');
  PackageIdentifiers.Add('OBS2CHD7 -- CONSTANT-HEAD BOUNDARY FLOW OBSERVATIONS');
  PackageIdentifiers.Add('OBS2DRN7 -- OBSERVATION PROCESS (DRAIN FLOW OBSERVATIONS)');
  PackageIdentifiers.Add('OBS2GHB7 -- OBSERVATION PROCESS (GHB FLOW OBSERVATIONS)');
  PackageIdentifiers.Add('OBS2RIV7 -- OBSERVATION PROCESS (RIVER FLOW OBSERVATIONS)');
  PackageIdentifiers.Add('OBS2STR7 -- OBSERVATION PROCESS (STREAMFLOW OBSERVATIONS)');
  PackageIdentifiers.Add('PCG -- CONJUGATE-GRADIENT SOLUTION PACKAGE');
  PackageIdentifiers.Add('PCG2 -- CONJUGATE GRADIENT SOLUTION PACKAGE'); // SEAWAT
  PackageIdentifiers.Add('RCH -- RECHARGE PACKAGE');
  PackageIdentifiers.Add('RES7 -- RESERVOIR PACKAGE');
  PackageIdentifiers.Add('RIV -- RIVER PACKAGE');
  PackageIdentifiers.Add('SFR7 -- STREAMFLOW ROUTING PACKAGE');
  PackageIdentifiers.Add('SIP -- STRONGLY-IMPLICIT PROCEDURE SOLUTION PACKAGE');
  PackageIdentifiers.Add('STR -- STREAM PACKAGE');
  PackageIdentifiers.Add('SUB7 -- SUBSIDENCE PACKAGE');
  PackageIdentifiers.Add('SWT -- SUBSIDENCE FOR WATER-TABLE PACKAGE');
  PackageIdentifiers.Add('UZF1 -- UNSATURATED FLOW PACKAGE');
  PackageIdentifiers.Add('WEL -- WELL PACKAGE');
  PackageIdentifiers.Add('MODFLOW-LGR');
  PackageIdentifiers.Add('MODFLOW-NWT');
  PackageIdentifiers.Add('MODFLOW-2005');
  PackageIdentifiers.Add('FMP2 -- FARM PROCESS');
  PackageIdentifiers.Add('SWI2 -- SWI PACKAGE');
  PackageIdentifiers.Add('SWR -- SURFACE-WATER ROUTING PACKAGE');
  PackageIdentifiers.Add('NWT1 -- Newton Solver');
  PackageIdentifiers.Add('UPW1 -- UPSTREAM WEIGHTING FLOW PACKAGE');
  PackageIdentifiers.Add('RIP-ET -- RIPARIAN PACKAGE');
  PackageIdentifiers.Add('CFP1AR READING FROM UNIT');
  PackageIdentifiers.Add('AG -- AG PACKAGE FOR NWT VERSION');
  PackageIdentifiers.Add('PROCESSING TIME SERIES');
  PackageIdentifiers.Add('Stream Gages:');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');

//// MODFLOW 6
  PackageIdentifiers.Add('DIS -- STRUCTURED GRID DISCRETIZATION PACKAGE');
  PackageIdentifiers.Add('NPF -- NODE PROPERTY FLOW PACKAGE');
  PackageIdentifiers.Add('WEL   -- WEL PACKAGE');
  PackageIdentifiers.Add('DRN   -- DRN PACKAGE');
  PackageIdentifiers.Add('RCH   -- RCH PACKAGE');
  PackageIdentifiers.Add('CHD   -- CHD PACKAGE');
  PackageIdentifiers.Add('IC -- INITIAL CONDITIONS PACKAGE');
//  PackageIdentifiers.Add('BEGIN READING OUTPUT CONTROL FOR STRESS PERIOD');
  PackageIdentifiers.Add('EVT   -- EVT PACKAGE');
  PackageIdentifiers.Add('STO -- STORAGE PACKAGE');
  PackageIdentifiers.Add('GHB   -- GHB PACKAGE');
  PackageIdentifiers.Add('CSUB -- COMPACTION PACKAGE');
  PackageIdentifiers.Add('DISU -- UNSTRUCTURED GRID DISCRETIZATION PACKAGE');
  PackageIdentifiers.Add('DISV -- VERTEX GRID DISCRETIZATION PACKAGE');
//  PackageIdentifiers.Add('READING SOLUTIONGROUP');
//  PackageIdentifiers.Add('IMS -- ITERATIVE MODEL SOLUTION PACKAGE');
//  PackageIdentifiers.Add('IMSLINEAR -- UNSTRUCTURED LINEAR SOLUTION PACKAGE');
//  PackageIdentifiers.Add('CALLS TO NUMERICAL SOLUTION IN TIME STEP');
//  PackageIdentifiers.Add('INFORMATION ON VARIABLES STORED IN THE MEMORY MANAGER');
//  PackageIdentifiers.Add('PROCESSING GWF EXCHANGE OPTIONS');
//  PackageIdentifiers.Add('PROCESSING EXCHANGE DIMENSIONS');
//  PackageIdentifiers.Add('PROCESSING EXCHANGEDATA');
//  PackageIdentifiers.Add('PROCESSING GNC OPTIONS');
//  PackageIdentifiers.Add('PROCESSING GNC DIMENSIONS');
//  PackageIdentifiers.Add('PROCESSING GNCDATA');
  PackageIdentifiers.Add('PROCESSING OC OPTIONS');
  PackageIdentifiers.Add('PROCESSING SFR PACKAGEDATA');
  PackageIdentifiers.Add('PROCESSING SFR CONNECTIONDATA');
  PackageIdentifiers.Add('SFR STATIC REACH DATA');
  PackageIdentifiers.Add('SFR REACH CONNECTION DATA');
  PackageIdentifiers.Add('SFR DOWNSTREAM CONNECTIONS');
  PackageIdentifiers.Add('SFR UPSTREAM CONNECTIONS');
  PackageIdentifiers.Add('SFR GEOMETRY DATA');
  PackageIdentifiers.Add('PROCESSING UZF CELLS PACKAGEDATA');
  PackageIdentifiers.Add('INTERBED STRAIN SUMMARY');
  PackageIdentifiers.Add('COARSE-GRAINED STRAIN SUMMARY');

//  PackageIdentifiers.Add('DIS -- STRUCTURED GRID DISCRETIZATION PACKAGE');
//  PackageIdentifiers.Add('NPF -- NODE PROPERTY FLOW PACKAGE');
//  PackageIdentifiers.Add('WEL   -- WEL PACKAGE');
//  PackageIdentifiers.Add('DRN   -- DRN PACKAGE');
//  PackageIdentifiers.Add('RCH   -- RCH PACKAGE');
//  PackageIdentifiers.Add('CHD   -- CHD PACKAGE');
//  PackageIdentifiers.Add('IC -- INITIAL CONDITIONS PACKAGE');
//  PackageIdentifiers.Add('BEGIN READING OUTPUT CONTROL FOR STRESS PERIOD');
//  PackageIdentifiers.Add('WEL NO.');
//  PackageIdentifiers.Add('DRN NO.');
//  PackageIdentifiers.Add('CHD NO.');
//  PackageIdentifiers.Add('REUSING');
//  PackageIdentifiers.Add('EVT   -- EVT PACKAGE');
//  PackageIdentifiers.Add('STO -- STORAGE PACKAGE');
//  PackageIdentifiers.Add('RIV NO.');
//  PackageIdentifiers.Add('GHB NO.');
//  PackageIdentifiers.Add('UPDATING STORAGE VALUES');
//  PackageIdentifiers.Add('GHB   -- GHB PACKAGE');
  PackageIdentifiers.Add('RIV   -- RIV PACKAGE');
  PackageIdentifiers.Add('The observation utility is active for');
  PackageIdentifiers.Add('SFR   -- SFR PACKAGE');
  PackageIdentifiers.Add('LAK   -- LAK PACKAGE');
  PackageIdentifiers.Add('MVR -- WATER MOVER PACKAGE');
  PackageIdentifiers.Add('INTERFACE CONDUCTANCE BETWEEN LAKE AND AQUIFER CELLS');
  PackageIdentifiers.Add('MAW   -- MAW PACKAGE');
  PackageIdentifiers.Add('MULTI-AQUIFER WELL CONNECTION DATA');
  PackageIdentifiers.Add('UZF   -- UZF CELLS PACKAGE');
  PackageIdentifiers.Add('PROCESSING SFR DIVERSIONS');
  PackageIdentifiers.Add('STAGE/VOLUME RELATION');
  PackageIdentifiers.Add('IMS -- ITERATIVE MODEL SOLUTION PACKAGE');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
//  PackageIdentifiers.Add('StrCLASSIFICATIONCOU');
end;


Procedure InitializeObsIdentifiers;
begin
  ObsIdentifiers:= TAnsiStringList.Create;
  ObsIdentifiers.Add(StrHEADANDDRAWDOWNOB);
  ObsIdentifiers.Add('CONSTANT HEAD FLOW OBSERVATIONS');
  ObsIdentifiers.Add('DRAIN FLOW OBSERVATIONS');
  ObsIdentifiers.Add('GHB FLOW OBSERVATIONS');
  ObsIdentifiers.Add('RIVER FLOW OBSERVATIONS');
  ObsIdentifiers.Add('STREAMFLOW OBSERVATIONS');
end;

procedure InitializeBoundaryIdentifiers;
begin
  NumberBoundaryIdentifiers := TAnsiStringList.Create;
  NumberBoundaryIdentifiers.Add('parameters');

  BoundaryIdentifiers := TAnsiStringList.Create;
  BoundaryIdentifiers.Add(AnsiString(StrREUSING));
  BoundaryIdentifiers.Add('WELL NO.  LAYER   ROW   COL   STRESS RATE');
  BoundaryIdentifiers.Add('DRAIN NO.  LAYER   ROW   COL     DRAIN EL.  CONDUCTANCE');
  BoundaryIdentifiers.Add('REACH NO.  LAYER   ROW   COL');
  BoundaryIdentifiers.Add('EVTR array defined by the following parameters:');
  BoundaryIdentifiers.Add('MULT. ARRAY:');
  BoundaryIdentifiers.Add('CSUB NO.');
//  BoundaryIdentifiers.Add(' HK ');
//  BoundaryIdentifiers.Add(' HANI ');
//  BoundaryIdentifiers.Add(' SS ');
//  BoundaryIdentifiers.Add(' SY ');
//  BoundaryIdentifiers.Add(' ETS ');
//  BoundaryIdentifiers.Add(' EVT ');
//  BoundaryIdentifiers.Add(' RCH ');
  BoundaryIdentifiers.Add('BOUND. NO. LAYER   ROW   COL     STAGE      CONDUCTANCE');
  BoundaryIdentifiers.Add('LAYER   ROW    COL    SEGMENT   REACH');
  BoundaryIdentifiers.Add('TABULAR INFLOWS WERE READ');
  BoundaryIdentifiers.Add(StrOUTPUTCONTROLFORS);
  BoundaryIdentifiers.Add('CHD NO.   LAYER   ROW   COL    START HEAD        END HEAD');
  BoundaryIdentifiers.Add('STREAM NETWORK DESCRIPTION');
  BoundaryIdentifiers.Add('USING INFILTRATION RATE FROM PREVIOUS STRESS ');
  BoundaryIdentifiers.Add('USING ET RATE FROM PREVIOUS STRESS');
  BoundaryIdentifiers.Add('USING ET EXTINCTION DEPTH FROM PREVIOUS');
  BoundaryIdentifiers.Add('USING EXTINCTION WATER CONTENT FROM PREVIOUS');
  BoundaryIdentifiers.Add('INITIAL LAKE STAGE:  LAKE    STAGE    SS MIN    SS MAX');
  BoundaryIdentifiers.Add('INITIAL LAKE CONCENTRATIONS:  LAKE   CONCENTRATION');
  BoundaryIdentifiers.Add('EVAPOTRANS. RATE (ETSR)');
  BoundaryIdentifiers.Add('EXTINCT. DEP. PROPORTION');
  BoundaryIdentifiers.Add('ET RATE PROPORTION');
  BoundaryIdentifiers.Add('ET LAYER INDEX');
  BoundaryIdentifiers.Add('ET SURFACE');
  BoundaryIdentifiers.Add('EVAPOTRANSPIRATION RATE');
  BoundaryIdentifiers.Add('EXTINCTION DEPTH');
  BoundaryIdentifiers.Add('RECHARGE LAYER INDEX');
  BoundaryIdentifiers.Add('RECHARGE');
  BoundaryIdentifiers.Add('DRAIN NO.  LAYER   ROW   COL     DRAIN EL.  STRESS FACTOR');
  BoundaryIdentifiers.Add('DRAIN NO.  LAYER   ROW   COL   LAYER   ROW   COL    PROP.');
  BoundaryIdentifiers.Add('DRAIN NO.  LAYER   ROW   COL     DRAIN EL.  CONDUCTANCE');
//  BoundaryIdentifiers.Add('WELLID             NNODES    LOSSTYPE');
  BoundaryIdentifiers.Add('    No.   Lay   Row   Col    Stress   QW param');
  BoundaryIdentifiers.Add('TOP ELEVATN');
  BoundaryIdentifiers.Add('THICKNESS:');
  BoundaryIdentifiers.Add('PARAMETER NAME');
  BoundaryIdentifiers.Add('INTERPRETATION OF UNIT FLAGS:');
  BoundaryIdentifiers.Add('HYD. COND. ALONG ROWS');
  BoundaryIdentifiers.Add('HORIZ. ANI. (COL./ROW)');
  BoundaryIdentifiers.Add('VERTICAL HYD. COND.');
  BoundaryIdentifiers.Add('TOP ELEVATION OF LAYER');
  BoundaryIdentifiers.Add('TOP ELEV. OF');
  BoundaryIdentifiers.Add('MODEL LAYER BOTTOM EL.');
  BoundaryIdentifiers.Add('STRESS PERIOD     LENGTH       TIME STEPS     MULTIPLIER FOR DELT    SS FLAG');
  BoundaryIdentifiers.Add('BOUNDARY ARRAY');
  BoundaryIdentifiers.Add('INITIAL HEAD');
  BoundaryIdentifiers.Add('LAYER FLAGS:');
  BoundaryIdentifiers.Add('SPECIFIC YIELD');
  BoundaryIdentifiers.Add('LAYER    ROW    COL   SEGMENT   REACH     LENGTH');
  BoundaryIdentifiers.Add('AREAL EXTENT OF UZ FLOW');
  BoundaryIdentifiers.Add('ROUTING OVERLAND RUNOFF');
  BoundaryIdentifiers.Add('SATURATED VERTICAL K');
  BoundaryIdentifiers.Add('LAND SURFACE VERTICAL K');
  BoundaryIdentifiers.Add('RESIDUAL WATER CONTENT');
  BoundaryIdentifiers.Add('BROOKS-COREY EPSILON');
  BoundaryIdentifiers.Add('SATURATED WATER CONTENT');
  BoundaryIdentifiers.Add('SELECTED MODEL CELLS ARE:');
  BoundaryIdentifiers.Add('SEGMENT    SEG.     INFLOW   OVERLAND   STREAM');
  BoundaryIdentifiers.Add('SEGMENT     BED HYD. COND.      BED THICKNESS');
  BoundaryIdentifiers.Add('EIGHT POINT CROSS-SECTION DATA');
  BoundaryIdentifiers.Add('STREAMFLOW RELATION WITH DEPTH IS BASED ON EQUATION');
  BoundaryIdentifiers.Add('STREAMFLOW RELATION WITH DEPTH AND WIDTH IS BASED');
  BoundaryIdentifiers.Add('AREAL INFILTRATION RATE');
  BoundaryIdentifiers.Add('ET RATE');
  BoundaryIdentifiers.Add('ET EXTINCTION DEPTH');
  BoundaryIdentifiers.Add('EXTINCTION WATER CONTENT');
  BoundaryIdentifiers.Add('MAXIMUM HEAD CHANGE FOR EACH ITERATION');
  BoundaryIdentifiers.Add('WELLS   PERIOD');
  BoundaryIdentifiers.Add('HEAD DEP BOUNDS   PERIOD');
  BoundaryIdentifiers.Add('UNSATURATED ZONE PACKAGE VOLUMETRIC BUDGET');
  BoundaryIdentifiers.Add('STREAM LISTING     PERIOD');
  BoundaryIdentifiers.Add('AT ALL NO-FLOW NODES');
  BoundaryIdentifiers.Add('ZONE ARRAY:');
  BoundaryIdentifiers.Add('INTERPRETATION OF LAYER FLAGS:');
  BoundaryIdentifiers.Add('QUASI3D VERT. HYD. COND.');
  BoundaryIdentifiers.Add('HEAD IN LAYER');
  BoundaryIdentifiers.Add('HEAD AT CELLS THAT CONVERT TO DRY');
  BoundaryIdentifiers.Add('VERT HYD COND /THICKNESS');
  BoundaryIdentifiers.Add('TRANSMIS. ALONG ROWS');
  BoundaryIdentifiers.Add('BARRIER  LAYER  IROW1  ICOL1  IROW2  ICOL2    HYDCHR');
  BoundaryIdentifiers.Add('COLUMN TO ROW ANISOTROPY');
  BoundaryIdentifiers.Add('LAYER  LAYER-TYPE CODE     INTERBLOCK T');
  BoundaryIdentifiers.Add('PRIMARY STORAGE COEF');
  BoundaryIdentifiers.Add('MODEL LAYER ASSIGNMENTS');
  BoundaryIdentifiers.Add('OF DELAY BEDS:');
  BoundaryIdentifiers.Add('OF NO-DELAY BEDS:');
  BoundaryIdentifiers.Add('PRECONSOLIDATION HEAD');
  BoundaryIdentifiers.Add('ELASTIC INTERBED STORAGE');
  BoundaryIdentifiers.Add('VIRGIN INTERBED STORAGE');
  BoundaryIdentifiers.Add('STARTING COMPACTION');
  BoundaryIdentifiers.Add('MATERIAL PROPERTIES OF INTERBEDS');
  BoundaryIdentifiers.Add('DELAY STARTING HEAD');
  BoundaryIdentifiers.Add('DELAY PRECOLSOL. HEAD');
  BoundaryIdentifiers.Add('DELAY INITIAL COMPACTION');
  BoundaryIdentifiers.Add('DELAY INTERBED THICKNESS');
  BoundaryIdentifiers.Add('MATERIAL ZONE INDICES');
  BoundaryIdentifiers.Add('VOLUMETRIC BUDGET FOR SYSTEMS OF DELAY INTERBEDS');
  BoundaryIdentifiers.Add('VOLUMETRIC BUDGET FOR UNSATURATED ZONE');
  BoundaryIdentifiers.Add('DELC');
  BoundaryIdentifiers.Add('DELR');
  BoundaryIdentifiers.Add('STREAMBED PROPERTIES');
  BoundaryIdentifiers.Add('HEAD AT END OF TIME STEP');
  BoundaryIdentifiers.Add(StrMODELTIMEUNIT);
  BoundaryIdentifiers.Add('MODEL LENGTH UNIT');
  BoundaryIdentifiers.Add('MODEL LAYER ASSIGNMENTS');
  BoundaryIdentifiers.Add('GEOSTATIC STRESS');
  BoundaryIdentifiers.Add('MOIST SPECIFIC GRAVITY');
  BoundaryIdentifiers.Add('SAT. SPECIFIC GRAVITY');
  BoundaryIdentifiers.Add('SILT AND CLAY THICKNESS');
  BoundaryIdentifiers.Add('RECOMPRESSION INDEX');
  BoundaryIdentifiers.Add('COMPRESSION INDEX');
  BoundaryIdentifiers.Add('VOID RATIO');
  BoundaryIdentifiers.Add('STARTING COMPACTION');
  BoundaryIdentifiers.Add('PRECONSOL.   STRESS');
  BoundaryIdentifiers.Add('GEOSTATIC STRESS');
  BoundaryIdentifiers.Add('EFFECTIVE STRESS');
  BoundaryIdentifiers.Add('PRECONSOL STRESS');
  BoundaryIdentifiers.Add('EQUIVALENT Sske');
  BoundaryIdentifiers.Add('EQUIVALENT Sskv');
  BoundaryIdentifiers.Add('SUBSIDENCE IN LAYER');
  BoundaryIdentifiers.Add('LAYER COMPACTION IN LAYER');
  BoundaryIdentifiers.Add('CHANGE IN PCSTRS IN LAYER');
  BoundaryIdentifiers.Add('CHANGE IN G-STRS IN LAYER');
  BoundaryIdentifiers.Add('CHANGE IN EFF-ST IN LAYER');
  BoundaryIdentifiers.Add('STREAM SEGMENT               TRIBUTARY STREAM SEGMENT');
  BoundaryIdentifiers.Add('DIVERSION SEGMENT NUMBER          UPSTREAM SEGMENT NUMBER');
  BoundaryIdentifiers.Add('LAYER      ROW     COLUMN     STREAM');
  BoundaryIdentifiers.Add('SECONDARY STORAGE COEF');
  BoundaryIdentifiers.Add('WETDRY PARAMETER');
  BoundaryIdentifiers.Add('RESERVOIR LOCATION');
  BoundaryIdentifiers.Add('RESERVOIR LAND SURF ELEV');
  BoundaryIdentifiers.Add('RES. BED VERT HYD COND');
  BoundaryIdentifiers.Add('RESERVOIR BED THICKNESS');
  BoundaryIdentifiers.Add('STAGE-VOLUME TABLE FOR RESERVOIR');
  BoundaryIdentifiers.Add('RESERVOIR CONDITIONS FOR STRESS PERIOD');
  BoundaryIdentifiers.Add('MNW2 Well Conductance and Screen');
  BoundaryIdentifiers.Add('Entry LAY ROW COL         Q');
  BoundaryIdentifiers.Add('Multi-Node Rates & Average QW');
  BoundaryIdentifiers.Add('LAYER  ROW  COL IAUX');
  BoundaryIdentifiers.Add('LAKE ID ARRAY');
  BoundaryIdentifiers.Add('LAKEBED LEAKANCE ARRAY');
  BoundaryIdentifiers.Add('LOCATIONS, LAKE #');
  BoundaryIdentifiers.Add('NUMBER OF CONNECTED');
  BoundaryIdentifiers.Add('LAKE       PRECIP     EVAP');
  BoundaryIdentifiers.Add('INTERFACE CONDUCTANCES BETWEEN LAKE AND AQUIFER CELLS');
  BoundaryIdentifiers.Add('HYDROLOGIC BUDGET SUMMARIES');
  BoundaryIdentifiers.Add('CUMULATIVE HYDROLOGIC BUDGET SUMMARIES');
  BoundaryIdentifiers.Add('TIMES FOR SPECIFYING FLOWS AND HEADS');
  BoundaryIdentifiers.Add('INFORMATION ON PARAMETERS LISTED IN PARAMETER FILE');
  BoundaryIdentifiers.Add('MAXIMUM RESIDUAL FOR EACH ITERATION');
  BoundaryIdentifiers.Add('BOT. EL. OF QUASI-3D BED');
  BoundaryIdentifiers.Add('HORIZ. TO VERTICAL ANI.');
  BoundaryIdentifiers.Add('SPECIFIC STORAGE');
  BoundaryIdentifiers.Add('STORAGE COEFFICIENT');
  BoundaryIdentifiers.Add('RESERVOIR LAYER INDEX');
  BoundaryIdentifiers.Add('ELASTIC SPECIFIC STORAGE');
  BoundaryIdentifiers.Add('INELAS. SPECIFIC STORAGE');
  BoundaryIdentifiers.Add('ELEV. OF LAYER CENTER');
  BoundaryIdentifiers.Add('ELEV. OF LAND SURFACE');
  BoundaryIdentifiers.Add('CENTER ELEVATION');
  BoundaryIdentifiers.Add('EQUIVALENT Cr');
  BoundaryIdentifiers.Add('EQUIVALENT Cc');
  BoundaryIdentifiers.Add('INITIAL WATER CONTENT');
  BoundaryIdentifiers.Add('UZ CELL BOTTOM ELEV.');
//  BoundaryIdentifiers.Add(StrINSTANCE);
  BoundaryIdentifiers.Add('VOLUMETRIC BUDGET FOR ENTIRE MODEL');
  BoundaryIdentifiers.Add('BUDGET FOR ENTIRE MODEL');

  BoundaryIdentifiers.Add('REACH           REACH  REACH                  REACH      REACH      REACH       GWF      STREAMBED   STREAMBED');
  BoundaryIdentifiers.Add('REACH           REACH  REACH                 EXTERNAL      REACH       REACH       REACH       REACH       REACH       REACH     EXTERNAL      REACH      PERCENT');
  BoundaryIdentifiers.Add('SFR UPSTREAM FRACTIONS');

  BoundaryIdentifiers.Add('INPUT DATA FOR EACH STREAM SEGMENT');
  BoundaryIdentifiers.Add('Lake Gages:');
  BoundaryIdentifiers.Add('OPTION HAS BEEN SELECTED');
  BoundaryIdentifiers.Add('When solver convergence criteria are not met');
  BoundaryIdentifiers.Add('CROSS SECTION OPTION IS SPECIFIED');
  BoundaryIdentifiers.Add('CALCULATE FLOW BETWEEN ADJACENT CONSTANT-HEAD CELLS');
  BoundaryIdentifiers.Add('OUTPUT CONTROL');
  BoundaryIdentifiers.Add('WETTING CAPABILITY');
  BoundaryIdentifiers.Add('PARAMETERS DEFINED');
  BoundaryIdentifiers.Add('Parameters');
  BoundaryIdentifiers.Add('PRINTCODE FLAGS');
  BoundaryIdentifiers.Add('MNW2:');
  BoundaryIdentifiers.Add('MNW2 Input:');

  BoundaryIdentifiers.Add('RIPARIAN INFORMATION');
  BoundaryIdentifiers.Add('SEGMENT INFORMATION');
  BoundaryIdentifiers.Add('RIPARIAN ET   PERIOD');

  // MODFLOW-2000
  BoundaryIdentifiers.Add('INTERPRETING THE CALCULATED RUNS STATISTIC VALUE');

  // SEAWAT
  BoundaryIdentifiers.Add('MASS BUDGET FOR ENTIRE MODEL');
  BoundaryIdentifiers.Add('SEAWAT');
  BoundaryIdentifiers.Add('THE TRANSPORT MODEL CONSISTS OF');
  BoundaryIdentifiers.Add('POROSITY                 FOR LAYER');
  BoundaryIdentifiers.Add('INITIAL CONC.: COMP');
  BoundaryIdentifiers.Add('OUTPUT CONTROL OPTIONS');
  BoundaryIdentifiers.Add('ADVECTION SOLUTION OPTIONS');
  BoundaryIdentifiers.Add('DISPERSION INPUT PARAMETERS');
  BoundaryIdentifiers.Add('LONG. DISPERSIVITY (AL)  FOR LAYER');
  BoundaryIdentifiers.Add('SOLUTION BY THE GENERALIZED CONJUGATE GRADIENT METHOD');
  BoundaryIdentifiers.Add('NO    LAYER   ROW   COLUMN   CONCENTRATION       TYPE');

  // FMP2
  BoundaryIdentifiers.Add('WHEN TO READ SETTINGS:');
  BoundaryIdentifiers.Add('WATER POLICY SETTINGS:');
  BoundaryIdentifiers.Add('CONSUMPTIVE USE CONCEPT');
  BoundaryIdentifiers.Add('SURFACE-WATER SETTINGS (SUPPLY / RETURNFLOW / RIGHTS:');
  BoundaryIdentifiers.Add('PRINT SETTINGS:');
  BoundaryIdentifiers.Add('AUXILIARY FARM WELL PARAMETER:');
  BoundaryIdentifiers.Add('WELL NO. LAYER    ROW    COL  F-WELL ID    FARM ID      QMAXfac');
  BoundaryIdentifiers.Add(StrGROUNDSURFACE);
  BoundaryIdentifiers.Add('FARM IDENTIFICATION');
  BoundaryIdentifiers.Add('SOIL TYPE IDENTIFICATION');
  BoundaryIdentifiers.Add('NUMBER OF ACTIVE FARM WELLS:');
  BoundaryIdentifiers.Add('FARM-ID  NUMBER OF WELLS PER FARM  TOTAL MAX.CAPACITY PER FARM');
  BoundaryIdentifiers.Add('CROP IDENTIFICATION');
  BoundaryIdentifiers.Add('REF. EVAPOTRANSPIRATION');
  BoundaryIdentifiers.Add('Transpiratory and Evaporative Fractions of Crop Consumptive Use');
  BoundaryIdentifiers.Add('FRACTIONS OF IN-EFFICIENT LOSSES TO SW-RUNOFF FROM');
  BoundaryIdentifiers.Add('SEMI-ROUTED DELIVERIES TO FARMS (LOCATION OF DIVERSION-POINTS):');
  BoundaryIdentifiers.Add('SEMI-ROUTED RUNOFF-RETURNFLOW FROM FARMS (LOCATION WHERE RUNOFF ENTERS A STREAM REACH):');
  BoundaryIdentifiers.Add('FARM ALLOTMENT HEIGHT [L]:');
  BoundaryIdentifiers.Add('WELL NO. LAYER    ROW    COL  F-WELL ID    FARM ID      QMAX');
  BoundaryIdentifiers.Add('UNRANKED LIST OF NON-ROUTED DELIVERIES TO FARMS [L3]:');
  BoundaryIdentifiers.Add('LIST OF NON-ROUTED DELIVERIES IN RANKED SEQUENCE [L3/T]:');
  BoundaryIdentifiers.Add('FULLY ROUTED DELIVERY FROM THE FIRST, MOST');
  BoundaryIdentifiers.Add('FULLY ROUTED RUNOFF-RETURNFLOW PRORATED');
  BoundaryIdentifiers.Add('SEMI-ROUTED RUNOFF-RETURNFLOW');
  BoundaryIdentifiers.Add('FRACTIONS OF ACTIVE CELL ACREAGE');
  BoundaryIdentifiers.Add('ACREAGE OPTIMIZATION - TABLEAU MATRIX:');
  BoundaryIdentifiers.Add('PRIOR APPROPRIATION FOR FARM:');
  BoundaryIdentifiers.Add('ROUTING INFORMATION FOR FARM:');
  BoundaryIdentifiers.Add('DELIVERIES:');
  BoundaryIdentifiers.Add('SEMI-ROUTED DELIVERIES:');
  BoundaryIdentifiers.Add('RETURNFLOWS:');
  BoundaryIdentifiers.Add('FRACTIONS OF OPTIMIZED CELL AREAS:');
  BoundaryIdentifiers.Add('PRECIPITATION FLUX');
  BoundaryIdentifiers.Add('RIPARIAN CELL INFORMATION');

  // SWI
  BoundaryIdentifiers.Add('SWI2 DATASET');
  BoundaryIdentifiers.Add('NUZONE');
  BoundaryIdentifiers.Add('ZETA SURFACE');
  BoundaryIdentifiers.Add('SSZ');
  BoundaryIdentifiers.Add('IZONENR');

  // SWR
  BoundaryIdentifiers.Add('READING SWR1 PROCESS DATASET');
  BoundaryIdentifiers.Add('TIME-INVARIANT SURFACE-WATER ROUTING REACH DATA');
  BoundaryIdentifiers.Add('SWR REACH GROUPS: REACHES IN REACH GROUP');
  BoundaryIdentifiers.Add('SUMMARY OF SWR1 OPTIONS USED IN SIMULATION');
  BoundaryIdentifiers.Add('SWR OBSERVATION DATA:');
  BoundaryIdentifiers.Add('SUMMARY OF SWR REACH BOUNDARY CONDITIONS');
  BoundaryIdentifiers.Add('CONSTANT STAGE/INACTIVE REACH GROUPS');
  BoundaryIdentifiers.Add('SWR LEAKAGE   PERIOD');
  BoundaryIdentifiers.Add('FROUDE NUMBER SUMMARY');
  // AG
  BoundaryIdentifiers.Add('PROCESSING AG OPTIONS');
  BoundaryIdentifiers.Add('TIME KPER KSTP');
  BoundaryIdentifiers.Add('INFILTRATION WILL BE REJECTED USING');
  BoundaryIdentifiers.Add('HYDRAULIC CONDUCTIVITY OF LAND SURFACE');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');


// MODFLOW 6
  BoundaryIdentifiers.Add('MODFLOW 6');
  BoundaryIdentifiers.Add('READING SIMULATION');
  BoundaryIdentifiers.Add('TDIS -- TEMPORAL DISCRETIZATION PACKAGE');
  BoundaryIdentifiers.Add('READING SOLUTIONGROUP');
  BoundaryIdentifiers.Add('IMSLINEAR -- UNSTRUCTURED LINEAR SOLUTION PACKAGE');
  BoundaryIdentifiers.Add('CALLS TO NUMERICAL SOLUTION IN TIME STEP');
  BoundaryIdentifiers.Add('INFORMATION ON VARIABLES STORED IN THE MEMORY MANAGER');
  BoundaryIdentifiers.Add('PROCESSING GWF EXCHANGE OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING EXCHANGE DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING EXCHANGEDATA');
  BoundaryIdentifiers.Add('PROCESSING GNC OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING GNC DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING GNCDATA');
  BoundaryIdentifiers.Add('IDOMAIN FOR LAYER');
  BoundaryIdentifiers.Add('WEL NO.');
  BoundaryIdentifiers.Add('DRN NO.');
  BoundaryIdentifiers.Add('CHD NO.');
  BoundaryIdentifiers.Add('REUSING');
//  BoundaryIdentifiers.Add('The observation utility is active for');
  BoundaryIdentifiers.Add('RIV NO.');
  BoundaryIdentifiers.Add('GHB NO.');
//  BoundaryIdentifiers.Add('UPDATING STORAGE VALUES');
//  BoundaryIdentifiers.Add('RIV   -- RIV PACKAGE');
  BoundaryIdentifiers.Add('RCH NO.');
  BoundaryIdentifiers.Add(StrTimeseriesControll);
  BoundaryIdentifiers.Add('AIR ENTRY PRESSURE');
  BoundaryIdentifiers.Add('ROOT PRESSURE');
  BoundaryIdentifiers.Add('ROOT ACTIVITY');
  BoundaryIdentifiers.Add('PROCESSING SEGMENT LIST');
  BoundaryIdentifiers.Add('PROCESSING WELL LIST');
  BoundaryIdentifiers.Add('PROCESSING AG STRESS PERIOD DATA');
  BoundaryIdentifiers.Add('READING AG STRESS PERIOD DATA');
  BoundaryIdentifiers.Add('READING IRRIGATION SEGMENT');
  BoundaryIdentifiers.Add('READING IRRIGATION WELL');
  BoundaryIdentifiers.Add('READING SUPPLEMENTAL WELL');
  BoundaryIdentifiers.Add('AG WELLS      PERIOD');
  BoundaryIdentifiers.Add('DIVERSION SEGMENTS     PERIOD');
  BoundaryIdentifiers.Add('SW IRRIGATION     PERIOD');
  BoundaryIdentifiers.Add('GW IRRIGATION     PERIOD');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');



  // MODFLOW 6
  BoundaryIdentifiers.Add('PROCESSING TDIS OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING TDIS DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING TDIS PERIODDATA');
  BoundaryIdentifiers.Add('PROCESSING IMS OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING IMS NONLINEAR');
  BoundaryIdentifiers.Add('PROCESSING LINEAR DATA');
  BoundaryIdentifiers.Add(StrINNERITERATIONSUMM);
  BoundaryIdentifiers.Add('OUTER ITERATION SUMMARY');
  BoundaryIdentifiers.Add('GHOST NODES WILL BE READ');
  BoundaryIdentifiers.Add('PROCESSING DISCRETIZATION OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING DISCRETIZATION DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING GRIDDATA');
  BoundaryIdentifiers.Add('PROCESSING NPF OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING WEL OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING WEL DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING DRN OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING DRN DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING RCH OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING CHD OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING CHD DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING IC OPTIONS');
  BoundaryIdentifiers.Add('Processing observation options');
  BoundaryIdentifiers.Add('PROCESSING EVT OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING EVT DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING STORAGE OPTIONS');
  BoundaryIdentifiers.Add('Name                                      Type');
  BoundaryIdentifiers.Add('PROCESSING RIV OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING RIV DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING GHB OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING GHB DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING RCH DIMENSIONS');
  BoundaryIdentifiers.Add('CG_SKE_CR');
  BoundaryIdentifiers.Add('CG_THETA');
  BoundaryIdentifiers.Add('SGM');
  BoundaryIdentifiers.Add('SGS');
  BoundaryIdentifiers.Add('INTERBED DATA');
//  BoundaryIdentifiers.Add('The observation utility is active for');
  BoundaryIdentifiers.Add('INTERBED     GEOSTATIC       EFFECTIVE    PRECONSOLIDATION');
  BoundaryIdentifiers.Add('ICELLTYPE');
  BoundaryIdentifiers.Add('K =');
  BoundaryIdentifiers.Add('K FOR');
  BoundaryIdentifiers.Add('K33');
  BoundaryIdentifiers.Add('K22');
  BoundaryIdentifiers.Add('ANGLE1');
  BoundaryIdentifiers.Add('ANGLE2');
  BoundaryIdentifiers.Add('ANGLE3');
  BoundaryIdentifiers.Add('ICONVERT');
  BoundaryIdentifiers.Add('PROCESSING CSUB OPTIONS');
  BoundaryIdentifiers.Add('CSUB PACKAGE SETTINGS');
  BoundaryIdentifiers.Add('PROCESSING CSUB DIMENSIONS');
  BoundaryIdentifiers.Add('CALCULATED INITIAL INTERBED GEOSTATIC, EFFECTIVE');
  BoundaryIdentifiers.Add('CALCULATED COMPRESSION INDICES');
  BoundaryIdentifiers.Add('AT TIME STEP');
  BoundaryIdentifiers.Add('CHD (');
  BoundaryIdentifiers.Add('GHOST NODE CORRECTION RESULTS');
  BoundaryIdentifiers.Add('PROCESSING GNC OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING GNC DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING GNCDATA');
  BoundaryIdentifiers.Add('NAMEFILE OPTIONS:');
  BoundaryIdentifiers.Add('WEL (');
  BoundaryIdentifiers.Add('PROCESSING SFR OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING SFR DIMENSIONS');
  BoundaryIdentifiers.Add('Observations read from file');
  BoundaryIdentifiers.Add('PROCESSING LAK OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING LAK DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING LAK PACKAGEDATA');
  BoundaryIdentifiers.Add('PROCESSING LAK LAKE_CONNECTIONS');
  BoundaryIdentifiers.Add('PROCESSING LAK OUTLETS');
  BoundaryIdentifiers.Add('WETDRY');
  BoundaryIdentifiers.Add('PROCESSING MVR OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING MVR DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING MVR PACKAGES');
  BoundaryIdentifiers.Add('NUMBER     NUMBER CELLID          DIRECTION    LEAKANCE        LAKEBED        AQUIFER       COMBINED');
  BoundaryIdentifiers.Add('READING WATER MOVERS FOR PERIOD');
  BoundaryIdentifiers.Add('READING LAK DATA FOR PERIOD');
  BoundaryIdentifiers.Add('MVR SUMMARY   PERIOD');
  BoundaryIdentifiers.Add('SFR (');
  BoundaryIdentifiers.Add('LAK (');
  BoundaryIdentifiers.Add('SFR (SFR-1) FLOWS   PERIOD');
  BoundaryIdentifiers.Add('LAKE (LAK-1) FLOWS   PERIOD');
  BoundaryIdentifiers.Add('PROCESSING MAW OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING MAW DIMENSIONS');
  BoundaryIdentifiers.Add('PROCESSING MAW PACKAGEDATA');
  BoundaryIdentifiers.Add('PROCESSING MAW CONNECTIONDATA');
  BoundaryIdentifiers.Add('READING MAW DATA');
  BoundaryIdentifiers.Add('MAW (');
  BoundaryIdentifiers.Add('STEADY-STATE     MAW WELLS');
  BoundaryIdentifiers.Add('READING MAW DATA FOR PERIOD');
  BoundaryIdentifiers.Add('MULTI-AQUIFER WELL (');
  BoundaryIdentifiers.Add('PROCESSING UZF CELLS OPTIONS');
  BoundaryIdentifiers.Add('PROCESSING UZF CELLS DIMENSIONS');
  BoundaryIdentifiers.Add('UZF PACKAGE (');
  BoundaryIdentifiers.Add('EXG ');
  BoundaryIdentifiers.Add('CALCULATED INTERCELL FLOW FOR ');
  BoundaryIdentifiers.Add('RIV (');
  BoundaryIdentifiers.Add('EVT NO.');
  BoundaryIdentifiers.Add('READING SFR DATA FOR PERIOD');
  BoundaryIdentifiers.Add('WEL-TO-MVR   PERIOD');
  BoundaryIdentifiers.Add('DRN (');
  BoundaryIdentifiers.Add('DRN-TO-MVR   PERIOD');
  BoundaryIdentifiers.Add('RIV-TO-MVR   PERIOD');
  BoundaryIdentifiers.Add('GHB (');
  BoundaryIdentifiers.Add('GHB-TO-MVR   PERIOD');
  BoundaryIdentifiers.Add('RCH (');
  BoundaryIdentifiers.Add('EVT (');
  BoundaryIdentifiers.Add('UZF-GWRCH (');
  BoundaryIdentifiers.Add('UZF-GWET (');
  BoundaryIdentifiers.Add('LAKE (');
  BoundaryIdentifiers.Add('UZF (');
  BoundaryIdentifiers.Add('MAW-NT_WELL BUDGET FOR ENTIRE MODEL AT END OF TIME STEP');
  BoundaryIdentifiers.Add('NEWTON-RAPHSON');
  BoundaryIdentifiers.Add('LAMINAR PRECALCULATION');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
//  BoundaryIdentifiers.Add('aaa');
end;

procedure InitializeNonIdenfiers;
begin
  NonIdentifiers := TAnsiStringList.Create;
//  NonIdentifiers.Add(StrRECHARGE);
  NonIdentifiers.Add('RECHARGE"');
  NonIdentifiers.Add('BUDGET ERROR:');
  NonIdentifiers.Add('MULTIPLIER ARRAY:');
  NonIdentifiers.Add('RECHARGE TO GW =');
  NonIdentifiers.Add('THETA');
  NonIdentifiers.Add('AT LEAST ONE STRESS PERIOD IS TRANSIENT.');
  // FMP
  NonIdentifiers.Add('NET RECHARGE');
  NonIdentifiers.Add('VOLUMETRIC BUDGET ERROR:');
  NonIdentifiers.Add('PRECIPITATION FLUX ...');
  // CFP
  NonIdentifiers.Add('NO WARNINGS');
  // MODFLOW 6
  NonIdentifiers.Add('RECHARGE WILL BE APPLIED');
  NonIdentifiers.Add('END PROCESSING GRIDDATA');
  NonIdentifiers.Add('END READING OUTPUT CONTROL');
  NonIdentifiers.Add('END UPDATING STORAGE VALUES');
  NonIdentifiers.Add('RECHARGE value from');
  NonIdentifiers.Add('LAK =');
  NonIdentifiers.Add('UZF RECHARGE     =');
  NonIdentifiers.Add('END PROCESSING AG OPTIONS');
  NonIdentifiers.Add('END PROCESSING AG STRESS PERIOD DATA');
  NonIdentifiers.Add('RECHARGE     =');
//  NonIdentifiers.Add('StrRECHARGE');
//  NonIdentifiers.Add('StrRECHARGE');
//  NonIdentifiers.Add('StrRECHARGE');
end;

//procedure InitializeShortBoundaryIdentifiers;
//begin
//  ShortBoundaryIdentifiers := TAnsiStringList.Create;
//  ShortBoundaryIdentifiers.Add('LAYER');
//  ShortBoundaryIdentifiers.Add(':');
//  ShortBoundaryIdentifiers.Add(' HK ');
//  ShortBoundaryIdentifiers.Add(' HANI ');
//  ShortBoundaryIdentifiers.Add(' SS ');
//  ShortBoundaryIdentifiers.Add(' SY ');
//  ShortBoundaryIdentifiers.Add(' ETS ');
//  ShortBoundaryIdentifiers.Add(' EVT ');
//  ShortBoundaryIdentifiers.Add(' RCH ');
//  ShortBoundaryIdentifiers.Add('STREAM');
//  ShortBoundaryIdentifiers.Add('USING');
//  ShortBoundaryIdentifiers.Add('LAKE');
//  ShortBoundaryIdentifiers.Add('RATE');
//  ShortBoundaryIdentifiers.Add('PROPORTION');
//  ShortBoundaryIdentifiers.Add('ET');
//  ShortBoundaryIdentifiers.Add('EXTINCT');
//  ShortBoundaryIdentifiers.Add('RECHARGE');
//  ShortBoundaryIdentifiers.Add('WELLID');
//  ShortBoundaryIdentifiers.Add('Lay');
//  ShortBoundaryIdentifiers.Add('TOP');
//  ShortBoundaryIdentifiers.Add('THICKNESS');
//  ShortBoundaryIdentifiers.Add('PARAMETER');
//  ShortBoundaryIdentifiers.Add('OF');
//  ShortBoundaryIdentifiers.Add('ROW');
//  ShortBoundaryIdentifiers.Add('HYD');
//  ShortBoundaryIdentifiers.Add('PERIOD');
//  ShortBoundaryIdentifiers.Add('ARRAY');
//  ShortBoundaryIdentifiers.Add('HEAD');
//  ShortBoundaryIdentifiers.Add('SPECIFIC');
//  ShortBoundaryIdentifiers.Add('OVERLAND');
//  ShortBoundaryIdentifiers.Add('SATURATED');
//  ShortBoundaryIdentifiers.Add('BROOKS');
//  ShortBoundaryIdentifiers.Add('DATA');
//  ShortBoundaryIdentifiers.Add('BUDGET');
//  ShortBoundaryIdentifiers.Add('AT');
//
//end;

//procedure InitializeKeyWords;
//var
//  Splitter: TStringList;
//  TempKeyWords: TStringList;
//  Storage: TStringList;
//  LineIndex: Integer;
//  MaxWordCount: Integer;
//  WordIndex: Integer;
//  AWord: string;
//  WordCount: Integer;
//  MaxWordIndex: Integer;
//  BadCharIndex: Integer;
//  AValue: Extended;
//  ErrorCode: integer;
//  procedure AddStrings(List: TAnsiStringList);
//  var
//    index: Integer;
//  begin
//    for index := 0 to List.Count - 1 do
//    begin
//      Storage.Add(string(List[index]))
//    end;
//  end;
//begin
//  KeyWords := TAnsiStringList.Create;
//  TempKeyWords := TStringList.Create;
//  Splitter := TStringList.Create;
//  Storage := TStringList.Create;
//  try
//    Storage.Add(StressPeriodID1);
//    Storage.Add(StressPeriodID2);
//    Storage.Add(StartNewTimeStep);
//    Storage.Add(TransportStep);
//    Storage.Add(IterationID1);
//    Storage.Add(IterationID2);
//    Storage.Add(ArrayID1);
//    Storage.Add(ArrayID2);
//    Storage.Add(ArrayID3);
//    Storage.Add(ArrayID4);
//    Storage.Add(BudgetID);
//    Storage.Add(TimeSummary);
//    Storage.Add(EndModel);
//    Storage.Add(StrParameterName);
//    Storage.Add(StrINSTANCE);
//    Storage.Add(StrParameter);
//    Storage.Add(StrINSTANCE2);
//    Storage.Add(StrCLASSIFICATIONCOU);
//
//    AddStrings(PackageIdentifiers);
//    AddStrings(ObsIdentifiers);
//    AddStrings(BoundaryIdentifiers);
//    AddStrings(ErrorValues);
//    AddStrings(NumberErrorValues);
//    AddStrings(WarningValues);
//
//    Splitter.Delimiter := ' ';
//    TempKeyWords.Duplicates := dupIgnore;
//    TempKeyWords.Sorted := True;
//
//    for LineIndex := 0 to Storage.Count - 1 do
//    begin
//      Splitter.DelimitedText := Storage[LineIndex];
//      TempKeyWords.AddStrings(Splitter);
//    end;
//
//    BadCharIndex := TempKeyWords.IndexOf('E');
//    if BadCharIndex >= 0 then
//    begin
//      TempKeyWords.Delete(BadCharIndex);
//    end;
//    BadCharIndex := TempKeyWords.IndexOf('+');
//    if BadCharIndex >= 0 then
//    begin
//      TempKeyWords.Delete(BadCharIndex);
//    end;
//    BadCharIndex := TempKeyWords.IndexOf('-');
//    if BadCharIndex >= 0 then
//    begin
//      TempKeyWords.Delete(BadCharIndex);
//    end;
//    BadCharIndex := TempKeyWords.IndexOf('.');
//    if BadCharIndex >= 0 then
//    begin
//      TempKeyWords.Delete(BadCharIndex);
//    end;
//    for WordIndex := TempKeyWords.Count - 1 downto 0 do
//    begin
////      if Length(TempKeyWords[WordIndex]) = 1 then
////      begin
////        TempKeyWords.Delete(WordIndex);
////      end
////      else
////      begin
//        Val(TempKeyWords[WordIndex], AValue, ErrorCode);
//        if ErrorCode = 0 then
//        begin
//          TempKeyWords.Delete(WordIndex);
//        end;
////      end;
//    end;
//
//    while Storage.Count > 0 do
//    begin
//      MaxWordCount := 0;
//      MaxWordIndex := -1;
//      for WordIndex := 0 to TempKeyWords.Count - 1 do
//      begin
//        AWord := TempKeyWords[WordIndex];
//        WordCount := 0;
//        for LineIndex := 0 to Storage.Count - 1 do
//        begin
//          if Pos(AWord, Storage[LineIndex]) > 0  then
//          begin
//            Inc(WordCount);
//          end;
//        end;
//        if WordCount > MaxWordCount then
//        begin
//          MaxWordCount := WordCount;
//          MaxWordIndex := WordIndex;
//        end;
//      end;
//      Assert(MaxWordIndex >= 0);
//      AWord := TempKeyWords[MaxWordIndex];
//      TempKeyWords.Delete(MaxWordIndex);
//      KeyWords.Add(AnsiString(AWord));
//      for LineIndex := Storage.Count - 1 downto 0 do
//      begin
//        if Pos(AWord, Storage[LineIndex]) > 0  then
//        begin
//          Storage.Delete(LineIndex);
//        end;
//      end;
//    end;
//  finally
//    Storage.Free;
//    TempKeyWords.Free;
//    Splitter.Free;
//  end;
//end;

initialization
  InitializePackageIdentifiers;
  InitializeObsIdentifiers;
  InitializeBoundaryIdentifiers;
  InitializeNonIdenfiers;
//  InitializeShortBoundaryIdentifiers;
//  InitializeKeyWords;

finalization;
  PackageIdentifiers.Free;
  NumberPackageIdentifiers.Free;
  ObsIdentifiers.Free;
  BoundaryIdentifiers.Free;
  NumberBoundaryIdentifiers.Free;
  NonIdentifiers.Free;
//  ShortBoundaryIdentifiers.Free;
//  KeyWords.Free;
end.
