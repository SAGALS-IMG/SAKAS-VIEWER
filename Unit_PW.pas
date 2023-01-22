unit Unit_PW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, SelShape, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, VCLTee.Series, VclTee.TeeGDIPlus,  VCLTee.TeEngine,
  VCLTee.TeeDragPoint, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.TeeChartGrid, VCLTee.TeeStore,
  VCLTee.TeeSpLine, Math, IniFiles,  Clipbrd, Unit_FPW, Unit_LP, Unit_DICOM, System.IOUtils;

type
  TForm_PW = class(TForm)
    Panel1: TPanel;
    SB: TStatusBar;
    Memo: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TB_Img_No: TTrackBar;
    Edit_Img_No: TEdit;
    UD_TB_Img_No: TUpDown;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    SS: TSelShape;
    SS_BK: TSelShape;

    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label_ROI_Size: TLabel;
    Edit_PMin: TEdit;
    Edit_PMax: TEdit;
    RB_PMinMax_M: TRadioButton;
    RB_PMinMax_A1: TRadioButton;
    RB_PMinMax_A2: TRadioButton;
    CB_Mag: TComboBox;
    CB_Log: TCheckBox;
    Edit_ROI_Left: TEdit;
    Edit_ROI_Right: TEdit;
    Edit_ROI_Bottom: TEdit;
    Edit_ROI_Top: TEdit;
    SB_Redraw: TSpeedButton;
    SB_Copy: TSpeedButton;
    SB_Save: TSpeedButton;
    SB_Memo_CLR: TSpeedButton;

    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel101: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    Label_Sample_Name: TLabel;
    Label_Method_Name: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Edit_FN: TEdit;
    CB_Proc: TComboBox;
    Edit_Orig_ST: TEdit;
    Edit_Orig_End: TEdit;
    Edit_Show_ImgNo: TEdit;
    UD_Show_ImgNo: TUpDown;
    LEdit_OW: TLabeledEdit;
    LEdit_OH: TLabeledEdit;
    LEdit_PW: TLabeledEdit;
    LEdit_PH: TLabeledEdit;
    LEdit_OFFX: TLabeledEdit;
    LEdit_OFFY: TLabeledEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;

    TabSheet2: TTabSheet;
    GroupBox121: TGroupBox;
    Label111: TLabel;
    Panel111: TPanel;
    Bevel111: TBevel;
    Bevel112: TBevel;
    Bevel113: TBevel;

    SB_CB_Reset: TSpeedButton;
    SB_BC_Save: TSpeedButton;
    SB_BC_Load: TSpeedButton;
    CB_BC: TComboBox;
    CB_CB_Sp: TCheckBox;
    CB_LUT: TComboBox;

    CG_LUT: TChartGrid;
    Chart_CB: TChart;
    Series2: TPointSeries;
    Series3: TFastLineSeries;
    ChartTool1: TDragPointTool;
    GroupBox122: TGroupBox;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label_Color_P: TLabel;
    Bevel114: TBevel;
    Bevel115: TBevel;
    Bevel116: TBevel;

    SB_LUT_Reset: TSpeedButton;
    SB_LUT_Save: TSpeedButton;
    SB_LUT_Load: TSpeedButton;

    Img_CB: TImage;
    Chart_LUT: TChart;
    LineSeries1: TLineSeries;
    PointSeries1: TPointSeries;
    Panel112: TPanel;
    Shape_LUT: TShape;
    TB_R: TTrackBar;
    TB_G: TTrackBar;
    TB_B: TTrackBar;
    UD_B: TUpDown;
    Edit_R: TEdit;
    Edit_G: TEdit;
    Edit_B: TEdit;
    UD_G: TUpDown;
    UD_R: TUpDown;
    Chart_LUT_RGB: TChart;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;

    TabSheet3: TTabSheet;
    GroupBox131: TGroupBox;
    Panel131: TPanel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;

    Bevel131: TBevel;
    Bevel132: TBevel;
    Bevel133: TBevel;
    Bevel134: TBevel;
    Bevel135: TBevel;
    Bevel136: TBevel;
    Bevel137: TBevel;
    CB_Tr_Target: TComboBox;
    Edit_Tr_ST: TEdit;
    Edit_TR_End: TEdit;

    SB_Img_Rot: TSpeedButton;
    SB_Img_VF: TSpeedButton;
    SB_Img_HF: TSpeedButton;
    SB_Img_Shift: TSpeedButton;
    SB_Img_Crop: TSpeedButton;
    SB_Img_Bin: TSpeedButton;
    SB_Img_Undo: TSpeedButton;
    Edit_Img_Rot: TEdit;
    Edit_Rot_CX: TEdit;
    Edit_Rot_CY: TEdit;
    Edit_Shift_dX: TEdit;
    Edit_Shift_dY: TEdit;
    Edit_Shift_OffX: TEdit;
    Edit_Shift_OffY: TEdit;
    CB_Shift_Off: TCheckBox;
    CB_BIN: TComboBox;

    GroupBox132: TGroupBox;
    Bevel138: TBevel;
    Bevel139: TBevel;
    Bevel140: TBevel;
    Bevel141: TBevel;
    Label138: TLabel;
    SB_Img_Z_Prof: TSpeedButton;
    SB_Img_Z_Add: TSpeedButton;
    SB_Img_ZFlip: TSpeedButton;
    SB_Sep_img: TSpeedButton;
    Edit_Z_Profile_ST: TEdit;
    Edit_Z_Profile_End: TEdit;
    Edit_Z_Project_End: TEdit;
    Edit_Z_Project_ST: TEdit;
    Edit_Sep_Slice_ST: TEdit;
    Edit_Sep_Slice_End: TEdit;
    Edit_Sep_Slice_d: TEdit;

    TabSheet4: TTabSheet;
    GroupBox141: TGroupBox;
    Panel145: TPanel;
    Label149: TLabel;
    Label148: TLabel;
    Edit_Fil_ST: TEdit;
    Edit_Fil_End: TEdit;
    CB_Fil_Target: TComboBox;

    Panel141: TPanel;
    Label141: TLabel;
    Label142: TLabel;
    Bevel145: TBevel;
    Bevel144: TBevel;
    SB_Fil: TSpeedButton;
    SB_Fil_Undo: TSpeedButton;
    Edit_Fil_P1: TEdit;
    Edit_Fil_P2: TEdit;
    CB_Fil_ROI: TCheckBox;
    Panel142: TPanel;
    LB_Filter_Type: TListBox;
    SG_Fil_Ker: TStringGrid;
    Splitter1: TSplitter;

    GroupBox142: TGroupBox;
    Label143: TLabel;
    SB_Fil_Math: TSpeedButton;
    Bevel146: TBevel;
    CB_MathType: TComboBox;
    Edit_Math_P: TEdit;
    CB_Math_ROI: TCheckBox;

    GroupBox143: TGroupBox;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    SB_Mask: TSpeedButton;
    Bevel147: TBevel;
    CB_Mask_Type: TComboBox;
    Edit_Mask_V: TEdit;
    Edit_Mask_CX: TEdit;
    Edit_Mask_CY: TEdit;
    Edit_Mask_R: TEdit;

    TabSheet5: TTabSheet;
    GroupBox151: TGroupBox;
    Label151: TLabel;
    Bevel151: TBevel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    Bevel154: TBevel;
    Bevel155: TBevel;
    Bevel156: TBevel;
    SB_FFT: TSpeedButton;
    SB_IFFT: TSpeedButton;
    SB_FFT_Fil: TSpeedButton;
    SB_Restore: TSpeedButton;
    SB_FFT_Fil2: TSpeedButton;
    CB_FFT_Window: TComboBox;
    CB_FFT_ROI: TCheckBox;

    GroupBox152: TGroupBox;
    GroupBox153: TGroupBox;
    Panel151: TPanel;
    Label1511: TLabel;
    Label1510: TLabel;
    Edit_FFT_ST: TEdit;
    Edit_FFT_End: TEdit;
    CB_FFT_Target: TComboBox;

    Label152: TLabel;
    Label154: TLabel;
    Label153: TLabel;
    Label155: TLabel;
    Edit_FFT_H_DEG1: TEdit;
    Edit_FFT_H_COF1: TEdit;
    Edit_FFT_H_COF2: TEdit;
    Edit_FFT_H_DEG2: TEdit;
    CB_FFT_Hol: TCheckBox;
    CB_FFT_H: TComboBox;
    GroupBox154: TGroupBox;
    Label156: TLabel;
    Label158: TLabel;
    Label157: TLabel;
    Label159: TLabel;
    Edit_FFT_V_DEG1: TEdit;
    Edit_FFT_V_COF1: TEdit;
    Edit_FFT_V_COF2: TEdit;
    Edit_FFT_V_DEG2: TEdit;
    CB_FFT_Ver: TCheckBox;
    CB_FFT_V: TComboBox;

    TabSheet6: TTabSheet;
    GroupBox161: TGroupBox;
    Panel161: TPanel;
    Panel162: TPanel;
    Panel163: TPanel;
    Panel164: TPanel;
    Label161: TLabel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    SB_Analy: TSpeedButton;
    SB_Ana_Copy: TSpeedButton;
    SB_Ana_Memo_CLR: TSpeedButton;
    RB_ana_Whole: TRadioButton;
    RB_ana_ROI: TRadioButton;
    Chart_ANA: TChart;
    Series1: TFastLineSeries;
    CG_Hist: TChartGrid;
    CB_Ana_Target: TComboBox;
    Edit_Ana_ST: TEdit;
    Edit_Ana_End: TEdit;
    Memo_Ana: TRichEdit;

    TabSheet7: TTabSheet;
    GroupBox171: TGroupBox;
    Panel171: TPanel;
    Bevel171: TBevel;
    Bevel172: TBevel;
    SB_DCM_Load_Head: TSpeedButton;
    SB_DCM_Save_Head: TSpeedButton;
    Edit_DCM_ST: TEdit;
    Edit_DCM_End: TEdit;
    CB_DCM_Mask: TCheckBox;
    CB_NewF: TCheckBox;
    CB_DCM_Bin: TCheckBox;
    CB_DCM_SubstBK: TCheckBox;

    GroupBox172: TGroupBox;
    Panel172: TPanel;
    Bevel173: TBevel;
    Bevel175: TBevel;
    Bevel174: TBevel;
    Bevel176: TBevel;
    Label171: TLabel;
    Label172: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label178: TLabel;
    Label180: TLabel;
    Label177: TLabel;
    Label179: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Edit_DCM_Name: TEdit;
    Edit_DCM_Date: TEdit;
    Edit_DCM_Time: TEdit;
    Edit_DCM_Energy: TEdit;
    Edit_DCM_ExpT: TEdit;
    Edit_DCM_PX: TEdit;
    Edit_DCM_PY: TEdit;
    Edit_DCM_PZ: TEdit;
    Edit_DCM_X: TEdit;
    Edit_DCM_Y: TEdit;
    Edit_DCM_Z: TEdit;
    Edit_DCM_a: TEdit;
    Edit_DCM_b: TEdit;
    SB_DCM_Editor: TSpeedButton;
    SB_DCM_Import: TSpeedButton;
    SB_DCM_Export: TSpeedButton;
    SB_DCM_STOP: TSpeedButton;
    CB_DCM_ROI: TCheckBox;
    CB_UID: TCheckBox;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure Init_PW(Sender: TObject);

    procedure Load_ImgData(File_Name:string; TZ : longint;Sender: Tobject);
    procedure Load_Data(ImgNo:longint; Sender: TObject);
    procedure Load_ByteData(File_Name:string;TZ, Header : longint;Sender: Tobject);
    procedure Load_WORDData(File_Name:string;TZ : longint;Sender: Tobject);
    procedure Load_DWORDData(File_Name:string;TZ : longint;Sender: Tobject);
    procedure Load_SglData(File_Name:string; TZ : longint;Sender: Tobject);
    procedure Load_DblData(File_Name:string; TZ : longint;Sender: Tobject);
    procedure Save_Data(File_Name:string; Sender: Tobject);

    procedure Find_Min_Max(ROI: boolean;Sender: TObject);
    procedure Disp_Info(Sender: TObject);
    procedure Draw_Data(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Edit_PMaxChange(Sender: TObject);
    procedure RB_PMinMax_MClick(Sender: TObject);
    procedure CB_MagChange(Sender: TObject);
    procedure SB_RedrawClick(Sender: TObject);
    procedure SB_CopyClick(Sender: TObject);
    procedure SB_SaveClick(Sender: TObject);
    procedure SB_Memo_CLRClick(Sender: TObject);

    procedure UD_TB_Img_NoClick(Sender: TObject; Button: TUDBtnType);
    procedure UD_Show_ImgNoClick(Sender: TObject; Button: TUDBtnType);
    procedure TB_Img_NoChange(Sender: TObject);
    procedure SSMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

    procedure Clac_SP_Z(Sender: TObject);
    function Spline(lX:double):Double;

    procedure Make_CB(Sender: TObject);
    procedure CB_BCChange(Sender: TObject);
    procedure Chart_CBClick(Sender: TObject);
    procedure Chart_CBMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CB_Reset(Sender: TObject);
    procedure SB_CB_ResetClick(Sender: TObject);
    procedure CB_CB_SpClick(Sender: TObject);

    procedure Make_LUT(Sender: TObject);
    procedure CB_LUTChange(Sender: TObject);
    procedure UD_RClick(Sender: TObject; Button: TUDBtnType);
    procedure TB_RChange(Sender: TObject);
    procedure Chart_LUTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LUT_Reset(Sender: TObject);
    procedure SB_LUT_ResetClick(Sender: TObject);

    procedure Do_Rot_Img(Sender: TObject);
    procedure Do_VerF_Img(Sender: TObject);
    procedure Do_HolF_Img(Sender: TObject);
    procedure Do_Shift_Img(ShX,ShY:longint;Sender: TObject);
    procedure Do_Crop_Img(Sender: TObject);
    procedure Do_Bin_Img(Sender: TObject);
    procedure Image_Tr(Sender: TObject);
    procedure SB_Img_UndoClick(Sender: TObject);
    procedure SB_Img_Z_AddClick(Sender: TObject);
    procedure SB_Img_Z_ProfClick(Sender: TObject);

    procedure Binary(P1:double;Sender: TObject);
    procedure n_Value(P1:longint;Sender: TObject);
    procedure Median(P1:longint;Sender:TObject);
    procedure Kern_Fil(KS:longint;Sender:TObject);
    procedure SB_FilClick(Sender: TObject);
    procedure SB_Fil_UndoClick(Sender: TObject);
    procedure LB_Filter_TypeClick(Sender: TObject);
    procedure Do_Math_Cal(Sender: TObject);
    procedure Do_Mask(Sender: TObject);
    procedure SB_Fil_MathClick(Sender: TObject);

    procedure SB_FFT_Fil2Click(Sender: TObject);
    procedure SB_FFTClick(Sender: TObject);
    procedure SB_FFT_FilClick(Sender: TObject);
    procedure SB_IFFTClick(Sender: TObject);
    procedure SB_RestoreClick(Sender: TObject);

    procedure Img_Ana(Sender: TObject);
    procedure SB_AnalyClick(Sender: TObject);
    procedure SB_Ana_CopyClick(Sender: TObject);
    procedure SB_Ana_Memo_CLRClick(Sender: TObject);

    procedure SV2DCM(Sender: TObject);
    procedure DCM2SV(Sender: TObject);
    procedure DCM_SAKAS_Import(FN:string;Sender: TObject);
    procedure SB_DCM_ImportClick(Sender: TObject);
    procedure SB_DCM_EditorClick(Sender: TObject);
    procedure SB_DCM_Load_HeadClick(Sender: TObject);
    procedure SB_DCM_Save_HeadClick(Sender: TObject);
    procedure SB_DCM_ExportClick(Sender: TObject);
    procedure SB_DCM_STOPClick(Sender: TObject);
    procedure Label204Click(Sender: TObject);

    procedure TabSheet7Show(Sender: TObject);
    procedure TabSheet7Hide(Sender: TObject);
    procedure SB_Sep_imgClick(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
    Data, OrigData, Buf1, Buf2 : array of array of double;
    Fil_Kern : array[-10..10, -10..10] of double;

    PX, PY, OX, OY, PZ, STZ, ENDZ, Proc_N, FileType, FN_Digit : longint;
    Op_STZ, Op_EndZ : longint;
    FN, FN_ExtStr, Sample_Name, Method_Name : string;
    LP : TForm_LP;
    FPW : TForm_FPW;
    FDCM : TForm_DICOM;

    SP_N : longint;
    LUT : array[1..4, 0..255] of byte;
    X,Y,Z  :array [0..255] of double;
    TmpColor : TColor;
    SelectP : longint;

    WK,MK,M,WMK:array[0..255,0..255] of double;
    Go, Booting : boolean;
  end;

var
  Form_PW: TForm_PW;

implementation

{$R *.dfm}

procedure TForm_PW.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Booting := true;
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_PW', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_PW', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_PW', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_PW', 'Height', 500 );
    if Ini.ReadBool( 'Form_PW', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_PMax.Text := Ini.ReadString('Form_PW', 'PMax', '10000' );
    Edit_PMin.Text := Ini.ReadString('Form_PW', 'PMin', '0' );
//    CB_Mag.ItemIndex := Ini.ReadInteger('Form_PW', 'Mag', 2 );

    Edit_ROI_Left.Text := Ini.ReadString('Form_PW', 'ROI_Left', '100' );
    Edit_ROI_Top.Text := Ini.ReadString('Form_PW', 'ROI_Top', '100' );
    Edit_ROI_Right.Text := Ini.ReadString('Form_PW', 'ROI_Right', '300' );
    Edit_ROI_Bottom.Text := Ini.ReadString('Form_PW', 'ROI_Bottom', '300' );

    Edit_DCM_a.Text :=Ini.ReadString('Form_PW', 'DCM_a', '100' );
    Edit_DCM_b.Text :=Ini.ReadString('Form_PW', 'DCM_b', '100' );
    CB_UID.Checked := Ini.ReadBool('Form_PW', 'DCM_UID', false );

    RB_PMinMax_M.Checked := Ini.ReadBool('Form_PW', 'Min_Max_M', true );
    RB_PMinMax_A1.Checked := Ini.ReadBool('Form_PW', 'Min_Max_A1', false );
    RB_PMinMax_A2.Checked := Ini.ReadBool('Form_PW', 'Min_Max_A2', false );
  finally
    Ini.Free;
  end;
  CG_LUT.ShowFields := false;
  CG_LUT.ShowLabels := false;

  LP := TForm_LP.Create(Self);
  FDCM := TForm_DICOM.Create(Self);
  if CB_UID.Checked then
    if FileExists('dcm_WUID.ini') then
    begin
      FDCM.Get_Data('dcm_WUID.ini');
      FDCM.Disp_Data(Sender);
    end
  else
    if FileExists('dcm.ini') then
    begin
      FDCM.Get_Data('dcm.ini');
      FDCM.Disp_Data(Sender);
    end;
end;

procedure TForm_PW.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  if FPW<>nil then
    FPW.Free;
  if FDCM<>nil then
    FDCM.Free;
  if LP<>nil then
    LP.Free;

  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_PW', 'Top', Top);
    Ini.WriteInteger( 'Form_PW', 'Left', Left);
    Ini.WriteInteger( 'Form_PW', 'Width', Width );
    Ini.WriteInteger( 'Form_PW', 'Height', Height );

    Ini.WriteBool( 'Form_PW', 'InitMax', WindowState = wsMaximized );

    Ini.WriteString('Form_PW', 'PMin', Edit_PMin.Text );
    Ini.WriteString('Form_PW', 'PMax', Edit_PMax.Text );
//    Ini.WriteInteger('Form_PW', 'Mag', CB_Mag.ItemIndex);

    Ini.WriteString('Form_PW', 'ROI_Left', Edit_ROI_Left.Text);
    Ini.WriteString('Form_PW', 'ROI_Top',  Edit_ROI_Top.Text );
    Ini.WriteString('Form_PW', 'ROI_Right', Edit_ROI_Right.Text);
    Ini.WriteString('Form_PW', 'ROI_Bottom',Edit_ROI_Bottom.Text);

    Ini.WriteString('Form_PW', 'DCM_a', Edit_DCM_a.Text );
    Ini.WriteString('Form_PW', 'DCM_b', Edit_DCM_b.Text );
    Ini.WriteBool('Form_PW', 'DCM_UID', CB_UID.Checked );

    Ini.WriteBool('Form_PW', 'Min_Max_M', RB_PMinMax_M.Checked );
    Ini.WriteBool('Form_PW', 'Min_Max_A1', RB_PMinMax_A1.Checked );
    Ini.WriteBool('Form_PW', 'Min_Max_A2', RB_PMinMax_A2.Checked );
  finally
    Ini.Free;
  end;
end;

procedure TForm_PW.Init_PW(Sender: TObject);
var
  lj:longint;
begin
  SetLength(Data, PY+1);
  for lj :=0 to PY do
    SetLength(Data[lj], PX+1);

  SetLength(OrigData, PY+1);
  for lj :=0 to PY do
    SetLength(OrigData[lj], PX+1);

  SetLength(Buf1, PY+1);
  for lj:=0 to PY do
    SetLength(Buf1[lj], PX+1);

  SetLength(Buf2, PY+1);
  for lj:=0 to PY do
    SetLength(Buf2[lj], PX+1);

  UD_Show_ImgNo.Max := EndZ;
  UD_Show_ImgNo.Min := StZ;
  UD_TB_Img_No.Max := EndZ;
  UD_TB_Img_No.Min := StZ;
  TB_Img_No.Max := EndZ;
  TB_Img_No.Min := StZ;
end;

procedure TForm_PW.Load_Data(ImgNo:longint; Sender: TObject);
var
  lFN:string;
begin
  lFN := FN;
  if AnsiPos('*',FN)<>0 then
  begin
    if FN_Digit<>0 then
      lFN := ReplaceStr(FN,'*',Copy((ImgNo+100000).ToString,6-FN_Digit,FN_Digit))+FN_ExtStr
    else
      lFN := ReplaceStr(FN,'*',ImgNo.ToString)+FN_ExtStr;
  end;

  if not(FileExists(lFN)) then
  begin
    ShowMessage('File NOT found!');
    exit;
  end;

  case FileType of
    0:Load_ByteData(lFN,ImgNo,0,Sender);
    1:Load_WORDData(lFN,ImgNo,Sender);
    2:Load_DWORDData(lFN,ImgNo,Sender);
    3:Load_SglData(lFN,ImgNo,Sender);
    4:Load_DblData(lFN,ImgNo,Sender);
  end;
  SB.Panels[0].Width := Length(lFN)*8+5;
  SB.Panels[0].Text := lFN;
  if CB_Log.Checked then
    Memo.Lines.Add('Data file loaded: '+lFN);
end;

procedure TForm_PW.Load_ByteData(File_Name: string; TZ, Header: Integer;
  Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of byte;
begin
  try
    FS := TfileStream.Create(File_Name,fmOpenRead);
    FS.Position := STZ*PX*PY+Header;
    for lj:=0 to PY-1 do
    begin
      FS.ReadBuffer(lData,PX);
      for li:=0 to PX-1 do
        Data[lj,li] := lData[li];
    end;
  finally
    FS.Free;
  end;
end;

procedure TForm_PW.Load_WORDData(File_Name: string; TZ: Integer;
  Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of WORD;
begin
  try
    FS := TfileStream.Create(File_Name,fmOpenRead);
    if POS('*',FN)=0 then
      FS.Position := Int64(TZ)*PX*PY*2;
    for lj:=0 to PY-1 do
    begin
      FS.ReadBuffer(lData,PX*2);
      for li:=0 to PX-1 do
        Data[lj,li] := lData[li];
    end;
  finally
    FS.Free;
  end;
end;

procedure TForm_PW.Load_DWORDData(File_Name: string; TZ: Integer;
  Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of DWORD;
begin
  try
    FS := TfileStream.Create(File_Name,fmOpenRead);
    if POS('*',FN)=0 then
      FS.Position := Int64(TZ)*PX*PY*4;
    for lj:=0 to PY-1 do
    begin
      FS.ReadBuffer(lData,PX*4);
      for li:=0 to PX-1 do
        Data[lj,li] := lData[li];
    end;
  finally
    FS.Free;
  end;
end;

procedure TForm_PW.Load_SglData(File_Name: string; TZ: Integer;
  Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of single;
begin
  try
    FS := TfileStream.Create(File_Name,fmOpenRead);
    if POS('*',FN)=0 then
      FS.Position := Int64(TZ)*PX*PY*4;
    for lj:=0 to PY-1 do
    begin
      FS.ReadBuffer(lData,PX*4);
      for li:=0 to PX-1 do
        Data[lj,li] := lData[li];
    end;
  finally
    FS.Free;
  end;
end;

procedure TForm_PW.Load_DblData(File_Name: string; TZ: Integer;
  Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of double;
begin
  try
    FS := TfileStream.Create(File_Name,fmOpenRead);
    if POS('*',FN)=0 then
      FS.Position := Int64(TZ)*PX*PY*8;
    for lj:=0 to PY-1 do
    begin
      FS.ReadBuffer(lData,PX*8);
      for li:=0 to PX-1 do
        Data[lj,li] := lData[li];
    end;
  finally
    FS.Free;
  end;
end;

procedure TForm_PW.Load_ImgData(File_Name: string; TZ: Integer;
  Sender: Tobject);
var
  li,lj:longint;
  P:PByteArray;
begin
  Image1.Picture.LoadFromFile(File_Name);
  PX := Image1.Picture.Width;
  PY := Image1.Picture.Height;
  for lj:=0 to PY-1 do
  begin
    P := Image1.Picture.Bitmap.ScanLine[lj];
    for li:=0 to PX-1 do
      Data[lj,li] := (p[li*3]+p[li*3+1]+p[li*3+2])/3;
  end;
end;

procedure TForm_PW.Save_Data(File_Name: string; Sender: Tobject);
var
  li,lj : longint;
  FS : TFileStream;
  lData : array[0..4100] of double;
begin
  try
    FS := TfileStream.Create(File_Name,fmCreate);
    for lj:=0 to PY-1 do
    begin
      for li:=0 to PX-1 do
        lData[li] := Data[lj,li] ;
      FS.WriteBuffer(lData,PX*8);
    end;
  finally
    FS.Free;
  end;
end;



procedure TForm_PW.Find_Min_Max(ROI: boolean; Sender: TObject);
var
  li,lj, X1, X2, Y1, Y2 : longint;
  lPmin, lPmax :double;
begin
  lPMin := 1e10;
  lPMax := -1e10;

  if ROI then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 5;
    X2 := PX-5;
    Y1 := 5;
    Y2 := PY-5;
  end;

  for lj:= Y1 to Y2 do
    for li:=X1 to X2 do
    begin
      if lPMin>Data[lj,li] then
        lPmin := Data[lj,li];
      if lPMax<Data[lj,li] then
        lPmax := Data[lj,li];
    end;

  if lPMin=lPMax then
    lPMin := lPMax-1;

  Booting := true;
  Edit_PMin.Text := Format('%9f',[lPmin]);
  Edit_PMax.Text := Format('%9f',[lPmax]);
  Booting := false;
end;

procedure TForm_PW.Disp_Info(Sender: TObject);
begin
  Label_Sample_Name.Caption := Sample_Name;
  CB_Proc.ItemIndex := Proc_N;
  Label_Method_Name.Caption := Method_Name;
  Edit_FN.Text := FN;

  Edit_Orig_ST.Text := STZ.ToString;
  Edit_Orig_End.Text := EndZ.ToString;

  LEdit_OW.Text := PX.ToString;
  LEdit_OH.Text := PY.ToString;
  LEdit_PW.Text := PX.ToString;
  LEdit_PH.Text := PY.ToString;
  LEdit_OFFX.Text := '0';
  LEdit_OFFY.Text := '0';
end;

procedure TForm_PW.Draw_Data(Sender: TObject);
var
  li,lj,TmpInt:longint;
  P:PByteArray;
  Bitmap : TBitMap;
  lPMin, lPmax : double;
  lMag:longint;
begin
  if RB_PMinMax_A1.Checked then
    Find_Min_Max(false,Sender);
  if RB_PMinMax_A2.Checked then
    Find_Min_Max(true,Sender);
  lPMax := StrToFloat(Edit_PMax.Text);
  lPMin := StrToFloat(Edit_PMin.Text);

  if CB_Mag.ItemIndex =-1 then CB_Mag.ItemIndex := 1;
  case CB_Mag.ItemIndex of
    0: lMag := 10;
    1: lMag := 25;
    2: lMag := 50;
    3: lMag := 100;
  end;

  BitMap := TBitMap.Create;
  BitMap.Height := Image1.Height;
  BitMap.Width := Image1.Width;
  BitMap.PixelFormat := pf24bit;
  BitMap.Canvas.Pen.Color := clWhite;

  for lj:=0 to BitMap.Height-1 do
  begin
    P := BitMap.ScanLine[lj];
    for li:=0 to BitMap.Width-1 do
    begin
      if (Round(li*100/lMag)<PX) and (Round(lj*100/lMag)<PY) then
      begin
        if (lPMax-lPMin)<>0 then
        begin
          TmpInt := Round((Data[Round(lj*100/lMag),Round(li*100/lMag)]-lPMin)/(lPMax-lPMin)*255);
          if TmpInt>255 then TmpInt := 255;
          if TmpInt<0 then TmpInt := 0;
        end
        else
          TmpInt := 0;
        TmpInt := LUT[1,TmpInt];
        p[li*3] := LUT[4,TmpInt];
        p[li*3+1] := LUT[3,TmpInt];
        p[li*3+2] := LUT[2,TmpInt];
      end
      else
      begin
        p[li*3] := 0;
        p[li*3+1] := 0;
        p[li*3+2] := 0;
      end;
    end;
  end;
  Image1.Picture.Graphic := BitMap;
  Image1.Refresh;
  BitMap.Free;
//  Memo.Lines.Add('write');
end;

procedure TForm_PW.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  lMag : longint;
  i:longint;
begin
  lMag :=10;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  if not( (ssCtrl in shift)  or (ssShift in Shift)) then
  begin
    if (X>=0) and (Y>=0) and (X*lMag<PX) and (Y*lMag<PY) then
    begin
      LP.Series1.Clear;
      LP.Caption := 'LP of '+SB.Panels[0].Text;
      LP.Show;

      if Button=mbLeft then
        for i:=0 to PX-1 do
          LP.Series1.AddY(Data[Round(Y*lMag),i],'')
      else
        for i:=0 to PY-1 do
          LP.Series1.AddY(Data[i,Round(X*lMag)],'');
      LP.CG.Chart := LP.Chart1;
    end;
  end;
end;

procedure TForm_PW.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  lMag : longint;
  TmpStr : string;
begin
  lMag :=1;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  if (X>0) and (Y>0) and (X*lMag<PX) and (Y*lMag<PY) then
    TmpStr := Format('%12.2f',[Data[Y*lMag,X*lMag]])
  else
    TmpStr := 'Out of Range';
  SB.Panels[1].Text := '('+(X*lMag).ToString+','+(Y*lMag).ToString+'): '+TmpStr;
end;



procedure TForm_PW.Edit_PMaxChange(Sender: TObject);
begin
  if not(Booting) then
  begin
    Draw_Data(Sender);
    CB_Reset(Sender);
  end;
end;

procedure TForm_PW.RB_PMinMax_MClick(Sender: TObject);
begin
  if not(Booting) then
  begin
    Draw_Data(Sender);
    CB_Reset(Sender);
  end;
end;

procedure TForm_PW.CB_MagChange(Sender: TObject);
begin
  if not(Booting) then
    Draw_Data(Sender);
end;

procedure TForm_PW.SB_RedrawClick(Sender: TObject);
begin
  Disp_Info(Sender);
  Draw_Data(Sender);
end;

procedure TForm_PW.SB_CopyClick(Sender: TObject);
var
  lMag :longint;
  bm: TBitmap;
begin
  if ((PX>0) and (PY>0)) then
  begin
    if CB_Mag.ItemIndex =-1 then CB_Mag.ItemIndex := 01;
    case CB_Mag.ItemIndex of
      0: lMag := 10;
      1: lMag := 25;
      2: lMag := 50;
      3: lMag := 100;
    end;

    bm := TBitmap.Create;
    try
      bm.SetSize((PX*lMag) div 100,(PY*lMag) div 100);
      BitBlt(bm.Canvas.Handle, 0, 0, (PX*lMag) div 100, (PY*lMag) div 100, Image1.Canvas.Handle, 0, 0, SRCCOPY);
      Clipboard.Assign(bm);
    finally
      bm.Free;
    end;
  end;
end;

procedure TForm_PW.SB_SaveClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Save_Data(SaveDialog1.FileName, Sender);
end;

procedure TForm_PW.SB_Memo_CLRClick(Sender: TObject);
begin
  Memo.Lines.Clear;
end;



procedure TForm_PW.TB_Img_NoChange(Sender: TObject);
begin
  if not(Booting) then
  begin
    Load_Data(TB_Img_No.Position,Sender);
    SB_RedrawClick(Sender);
    Booting := true;
    UD_Show_ImgNo.Position := TB_Img_No.Position;
    UD_TB_Img_No.Position := TB_Img_No.Position;
    Booting := false;
  end;
end;

procedure TForm_PW.UD_Show_ImgNoClick(Sender: TObject; Button: TUDBtnType);
begin
  if not(Booting) then
  begin
    Load_Data(UD_Show_ImgNo.Position,Sender);
    SB_RedrawClick(Sender);
    Booting := true;
    TB_Img_No.Position := UD_Show_ImgNo.Position ;
    UD_TB_Img_No.Position := UD_Show_ImgNo.Position;
    Booting := false;
  end;
end;

procedure TForm_PW.UD_TB_Img_NoClick(Sender: TObject; Button: TUDBtnType);
begin
  if not(Booting) then
  begin
    Load_Data(UD_TB_Img_No.Position,Sender);
    SB_RedrawClick(Sender);
    Booting := true;
    UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
    TB_Img_No.Position := UD_TB_Img_No.Position;
    Booting := false;
  end;
end;

procedure TForm_PW.SSMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  lMag:longint;
begin
  lMag := 10;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  SS.MinTop :=0;
  SS.MinLeft :=0;
  SS.MaxBottom := PY div lMag-1;
  SS.MaxRight := PX div lMag-1;

  Edit_ROI_Left.Text := IntToStr(SS.Left*lMag);
  Edit_ROI_Top.Text := IntToStr(SS.Top*lMag);
  Edit_ROI_Right.Text := IntToStr((SS.Left+SS.Width)*lMag);
  Edit_ROI_Bottom.Text := IntToStr((SS.Top+SS.Height)*lMag);
  Label_ROI_Size.Caption := IntToStr(SS.Width*lMag+1)+'*'+IntToStr(SS.Height*lMag+1);
end;



procedure TForm_PW.Make_CB(Sender: TObject);
var
  lMin, lMax, lX, lY, X1, X2, Y1, Y2 : double;
  li, lk : longint;
  BSpline : TBSpline;
  V : TVertex;
begin
  lMax := StrToFloat(Edit_PMax.Text);
  lMin := StrToFloat(Edit_PMin.Text);
  Series3.Clear;
  Series3.XValues.Order := loAscending;
  Series3.YValues.Order := loNone;

  if (CB_CB_Sp.Checked) and (Series2.Count>2) then
  begin
    BSpline:=TBSpline.Create;
    for li:=0 to Series2.Count-1 do
      BSpline.AddPoint(Series2.XValue[li], Series2.YValue[li]);
    BSpline.Interpolated := true;
    BSpline.Fragments:=100;
    For li:=0 to BSpline.Fragments do
    begin
      V := BSpline.Value(li/BSpline.Fragments);
      Series3.AddXY(V.X,V.Y);
    end;
    BSpline.Free;
  end
  else
  begin
    for li:=0 to 255 do
    begin
      lX := lMin+(lMax-lMin)*li/256;
      lk:=1;
      while lX>Series2.XValue[lk] do
        Inc(lk);
      X1 := Series2.XValue[lk-1];
      X2 := Series2.XValue[lk];
      Y1 := Series2.YValue[lk-1];
      Y2 := Series2.YValue[lk];
      lY := (Y2-Y1)/(X2-X1)*(lX-X1)+Y1;
      if lY>255 then lY := 255;
      if lY<0 then lY := 0;
      Series3.AddXY(lX,lY);
    end;
  end;

  for li:=0 to 255 do
  begin
    lX := lMin+(lMax-lMin)*li/256;
    lk:=1;
    while (lX>Series3.XValue[lk]) do
      Inc(lk);

    X1 := Series3.XValue[lk-1];
    X2 := Series3.XValue[lk];
    Y1 := Series3.YValue[lk-1];
    Y2 := Series3.YValue[lk];
    lY := (Y2-Y1)/(X2-X1)*(lX-X1)+Y1;

    if lY<0 then lY:=0;
    if lY>255 then lY:=255;
    LUT[1,li] := Round(lY);
  end;
  CG_LUT.Series := Series2;
end;

procedure TForm_PW.CB_BCChange(Sender: TObject);
var
  li : longint;
  lMin, lMax, lX : double;
begin
  lMin := StrToFloat(Edit_PMin.Text);
  lMax := StrToFloat(Edit_PMax.Text);
  Series2.Clear;

  case CB_BC.ItemIndex of
   0:begin
       Series2.AddXY(lMin,0);
       Series2.AddXY(lMax,255);
     end;
   1:begin
       Series2.AddXY(lMin,255);
       Series2.AddXY(lMax,0);
     end;
   2:begin
       for li:=0 to 255 do
       begin
         lX := lMin+(lMax-lMin)*li/255;
         Series2.AddXY(lX,Ln(li+1)/Ln(256)*255);
       end;
     end;
   3:begin
       for li:=0 to 255 do
       begin
         lX := lMin+(lMax-lMin)*li/255;
         Series2.AddXY(lX,exp(li/255)/exp(1)*255);
       end;

     end;
  end;
  Make_CB(Sender);
  Draw_Data(Sender);
end;

procedure TForm_PW.CB_Reset(Sender: TObject);
var
  lMin, lMax : double;
begin
  lMax := StrToFloat(Edit_PMax.Text);
  lMin := StrToFloat(Edit_PMin.Text);

  if (Chart_CB.BottomAxis.Minimum<lMax) and (lMax>lMin) then
  begin
    Chart_CB.BottomAxis.Maximum := lMax;
    Chart_CB.BottomAxis.Minimum := lMin;
  end;

  Series2.Clear;
  Series2.AddXY(lMin,0);
  Series2.AddXY(lMax,255);

  Make_CB(Sender);
end;

procedure TForm_PW.SB_CB_ResetClick(Sender: TObject);
begin
  CB_Reset(Sender);
  Draw_Data(Sender);
end;

procedure TForm_PW.Chart_CBClick(Sender: TObject);
begin
  Make_CB(Sender);
  Draw_Data(Sender);
end;

procedure TForm_PW.Chart_CBMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  li, lj:longint;
  lX, lY :double;
begin
  if Button=mbRight then
  begin
    lX := Series2.XScreenToValue(X);
    lY := Series2.YScreenToValue(Y);
    if (lX>Series2.MinXValue) and (lX<Series2.MaxXValue) then
    begin
      Series2.AddXY(lX,lY);
      Make_CB(Sender);
      Draw_Data(Sender);
    end;
  end;
//  Series2.XValue[0] := StrToFloat(Edit_PMin.Text);
//  Series2.XValue[Series2.Count-1] := StrToFloat(Edit_PMax.Text);
//  Edit_PMin.Text := Series2.MinXValue.ToString;
//  Edit_PMax.Text := Series2.MaxXValue.ToString;
  for li:=1 to Series2.Count-2 do
  begin
    if Series2.XValue[li]<Series2.XValue[0] then
      Series2.XValue[li] := Series2.XValue[0]+(Series2.XValue[Series2.Count-1]-Series2.XValue[0])*0.1;
    if Series2.XValue[li]>Series2.XValue[Series2.Count-1] then
      Series2.XValue[li] := Series2.XValue[Series2.Count-1]-(Series2.XValue[Series2.Count-1]-Series2.XValue[0])*0.1;
    if Series2.Count>3 then
    begin
      for lj:=li+1 to Series2.Count-2 do
      begin
        if Series2.XValue[lj]<Series2.XValue[li] then
          Series2.XValue[lj] := Series2.XValue[li]+(Series2.XValue[Series2.Count-1]-Series2.XValue[0])*0.05;
      end;
    end;
  end;
  Make_CB(Sender);
  Draw_Data(Sender);
end;

procedure TForm_PW.CB_CB_SpClick(Sender: TObject);
begin
  Make_CB(Sender);
  Draw_Data(Sender);
end;



procedure TForm_PW.Clac_SP_Z(Sender: TObject);
var
  li :Integer;
  a  :array [0..255] of Double;
  b  :array [0..255] of Double;
  c  :array [0..255] of Double;
  d  :array [0..255] of Double;
  g  :array [0..255] of Double;
  s  :array [0..255] of Double;
begin
  // ３項方程式の係数の表を作る
  for li := 1 to SP_N-1 do
  begin
    a[li] :=         X[li]   - X[li-1];
    b[li] := 2.0 *  (X[li+1] - X[li-1]);
    c[li] :=         X[li+1] - X[li];
    d[li] := 6.0 * ((Y[li+1] - Y[li]) / (X[li+1] - X[li]) - (Y[li] - Y[li-1]) / (X[li] - X[li-1]));
  end;
  // ３項方程式を解く (ト－マス法)
  g[1] := b[1];
  s[1] := d[1];
  for li := 2 to SP_N-1 do
  begin
    g[li] := b[li] - a[li] * c[li-1] / g[li-1];
    s[li] := d[li] - a[li] * s[li-1] / g[li-1];
  end;
  Z[0]   := 0;
  Z[SP_N]   := 0;
  if g[SP_N-1]<>0 then
    Z[SP_N-1] := s[SP_N-1] / g[SP_N-1]
  else
    Z[SP_N-1] := 0;
  for li := SP_N-2 downto 1 do
  begin
    if g[li]<>0 then
      Z[li] := (s[li] - c[li] * z[li+1]) / g[li]
    else
      Z[li] :=0;
  end;
end;

function TForm_PW.Spline(lX: double): Double;
var
  d1, d2, d3 :double;
  li, lk :longint;
begin
  lk := -1;
  for li := 0 to SP_N-1 do
  begin
    if lX <= X[li] then
    begin
      lk := li - 1;
      break;
    end;
  end;
  if lk < 0 then
    lk := li - 1;
  d1     := X[lk+1] - lX;
  d2     := lX      - X[lk];
  d3     := X[lk+1] - X[lk];
  result := (Z[lk] * power(d1,3) + Z[lk+1] * power(d2,3)) / (6.0 * d3)
          + (Y[lk]   / d3 - Z[lk]   * d3 / 6.0) * d1
          + (Y[lk+1] / d3 - Z[lk+1] * d3 / 6.0) * d2;
end;

procedure TForm_PW.Make_LUT(Sender: TObject);
var
  li, lj, lColor:longint;
  d1, d2 :Double;
begin
  SP_N := PointSeries1.Count;
  Series4.Clear;
  Series5.Clear;
  Series6.Clear;

  for lj := 2 to 4 do
  begin
    for li:=0 to SP_N-1 do
    begin
      X[li] :=PointSeries1.XValue[li];
      Y[li] :=LUT[lj,Round(PointSeries1.XValue[li])];
    end;
    for li:=SP_N to 255 do
    begin
      X[li] :=0;
      Y[li] :=0;
    end;
    Clac_SP_Z(Sender);

    for li:=1 to 254 do
    begin
      d1 := li;
      d2 := Spline(d1);
      if d2>255 then
          LUT[lj,li] := 255
      else
        if d2<0 then
          LUT[lj,li] := 0
        else
          LUT[lj,li] := Round(d2);
    end;
  end;

  for li:=0 to 255 do
    Series4.AddXY(li,LUT[2,li]);
  for li:=0 to 255 do
    Series5.AddXY(li,LUT[3,li]);
  for li:=0 to 255 do
    Series6.AddXY(li,LUT[4,li]);

  for li:=0 to Img_CB.Width-1 do
    begin
      lColor := Round(li*255/Img_CB.Width);
      lColor := LUT[2,lColor]+LUT[3,lColor]*$100+LUT[4,lColor]*$10000;
      Img_CB.Canvas.Pen.Color := lColor;
      Img_CB.Canvas.MoveTo(li,0);
      Img_CB.Canvas.LineTo(li,Img_CB.Height-1);
    end;
end;

procedure TForm_PW.Chart_LUTMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i,k,lY,lX : longint;
  dMin : double;
begin
  lY := Y-4;
  repeat
    Inc(lY);
    lX := LineSeries1.Clicked(X,lY);
  until (lX<>-1) or (lY>Y+4);

  if lX<>-1 then
  begin
    k:=0;
    dMin :=1e10;
    for i:=0 to PointSeries1.Count-1 do
    if dMin>Abs(lX-PointSeries1.XValue[i]) then
    begin
      dMin := Abs(lX-PointSeries1.XValue[i]);
      k := Round(PointSeries1.XValue[i]);
    end;
    if (dMin>5) then //5以上離れている場合新たに点を追加
    begin
      SelectP := -1;
      PointSeries1.AddXY(lX,0,'');
      TB_R.Position := LUT[2,lX];
      TB_G.Position := LUT[3,lX];
      TB_B.Position := LUT[4,lX];
      UD_R.Position := TB_R.Position;
      UD_G.Position := TB_G.Position;
      UD_B.Position := TB_B.Position;
      SelectP := lX;
    end
    else
    begin
      SelectP := -1;
      TB_R.Position := LUT[2,k];
      TB_G.Position := LUT[3,k];
      TB_B.Position := LUT[4,k];
      UD_R.Position := TB_R.Position;
      UD_G.Position := TB_G.Position;
      UD_B.Position := TB_B.Position;
      SelectP := k;
    end;
    Label_Color_P.Caption := 'Color of #'+SelectP.ToString;
    Shape_LUT.Brush.Color := LUT[2,SelectP]+LUT[3,SelectP]*$100+LUT[4,SelectP]*$10000;
    Make_LUT(Sender);
    SB_ReDrawClick(Sender);
  end;
end;

procedure TForm_PW.TB_RChange(Sender: TObject);
begin
  if SelectP <> -1 then
  begin
    UD_R.Position := TB_R.Position;
    UD_G.Position := TB_G.Position;
    UD_B.Position := TB_B.Position;
    LUT[2,SelectP] := TB_R.Position;
    LUT[3,SelectP] := TB_G.Position;
    LUT[4,SelectP] := TB_B.Position;

    Label_Color_P.Caption := 'Color of #'+SelectP.ToString;
    Shape_LUT.Brush.Color := LUT[2,SelectP]+LUT[3,SelectP]*$100+LUT[4,SelectP]*$10000;
    Make_LUT(Sender);
    SB_ReDrawClick(Sender);
  end;
end;

procedure TForm_PW.UD_RClick(Sender: TObject; Button: TUDBtnType);
begin
  TB_RChange(Sender);
end;

procedure TForm_PW.LUT_Reset(Sender: TObject);
var
  li:longint;
begin
  LineSeries1.Clear;
  PointSeries1.Clear;
  PointSeries1.AddXY(0,0);
  PointSeries1.AddXY(255,0);
  SP_N := PointSeries1.Count;

  for li:=0 to 255 do
  begin
    LineSeries1.AddXY(li,0);
    LUT[2,li] := li;
    LUT[3,li] := li;
    LUT[4,li] := li;
  end;

  Series4.Clear;
  Series5.Clear;
  Series6.Clear;

  Series4.AddXY(0,0);
  Series4.AddXY(255,255);
  Series5.AddXY(0,0);
  Series5.AddXY(255,255);
  Series6.AddXY(0,0);
  Series6.AddXY(255,255);

  SelectP := -1;
  TB_R.Position := 0;
  TB_G.Position := 0;
  TB_B.Position := 0;
  UD_R.Position := TB_R.Position;
  UD_G.Position := TB_G.Position;
  UD_B.Position := TB_B.Position;
  SelectP := 0;

  Label_Color_P.Caption := 'Color of #'+SelectP.ToString;
  Shape_LUT.Brush.Color := LUT[2,SelectP]+LUT[3,SelectP]*$100+LUT[4,SelectP]*$10000;

  Make_LUT(Sender);
end;

procedure TForm_PW.SB_LUT_ResetClick(Sender: TObject);
begin
  LUT_Reset(Sender);
  SB_ReDrawClick(Sender);
end;

procedure TForm_PW.CB_LUTChange(Sender: TObject);
begin
  SB_LUT_ResetClick(Sender);

  case CB_LUT.ItemIndex of
   1:begin
       LUT[3,255] :=0;
       LUT[4,255] :=0;
     end;
   2:begin
       LUT[2,255] :=0;
       LUT[4,255] :=0;
     end;
   3:begin
       LUT[2,255] :=0;
       LUT[3,255] :=0;
     end;
   4:begin
       LUT[2,0] :=255;
       LUT[3,255] :=0;
       LUT[2,255] :=0;
     end;
  end;
  SelectP := -1;
  TB_R.Position := LUT[2,0];
  TB_G.Position := LUT[3,0];
  TB_B.Position := LUT[4,0];
  UD_R.Position := TB_R.Position;
  UD_G.Position := TB_G.Position;
  UD_B.Position := TB_B.Position;
  SelectP := 0;
  Label_Color_P.Caption := 'Color of #'+SelectP.ToString;
  Shape_LUT.Brush.Color := LUT[2,SelectP]+LUT[3,SelectP]*$100+LUT[4,SelectP]*$10000;

  Make_LUT(Sender);
  SB_ReDrawClick(Sender);
end;



procedure TForm_PW.Do_Rot_Img(Sender: TObject);
var
  li,lj, FX0, FY0 : longint;
  Th, SinTh, CosTh: double;
  jS, jC,X0,Y0, dx,dy,ndx,ndy, CX, CY : double;
begin
  Th := -StrToFloat(Edit_Img_Rot.Text);
  SinTh := Sin(Th/180*Pi);
  CosTh := Cos(Th/180*Pi);
  CX := PX/2+StrToFloat(Edit_Rot_CX.Text);
  CY := PY/2+StrToFloat(Edit_Rot_CY.Text);

  for lj:=0 to PY-1 do
  begin
    jS := (lj-CY)*SinTh;
    jC := (lj-CY)*CosTh;
    for li:=0 to PX-1 do
    begin
      X0 := (li-CX)*CosTh-jS+CX;
      Y0 := (li-CX)*SinTh+jC+CY;
      FX0 := Trunc(X0);
      FY0 := Trunc(Y0);

      dx := X0-FX0;
      dy := Y0-FY0;
      ndx := 1-dx;
      ndy := 1-dy;
      if (FX0>0) and (FY0>0) and (FX0<PX-2) and (FY0<PY-2) then
        Buf2[lj,li] := ndx*ndy*Buf1[FY0,FX0]+ndy*dx*Buf1[FY0,FX0+1]+ndx*dy*Buf1[FY0+1,FX0]+dx*dy*Buf1[FY0+1,FX0+1]
      else
        Buf2[lj,li] := 0;
    end;
  end;
  if CB_Log.Checked then
    Memo.Lines.Add('Image rotated by '+Edit_Img_Rot.Text+' [deg]');
end;

procedure TForm_PW.Do_VerF_Img(Sender: TObject);
var
  li,lj : longint;
begin
  for lj:=0 to PY-1 do
    for li:=0 to PX-1 do
      Buf2[lj,li] := Buf1[PY-lj-1,li];
  if CB_Log.Checked then
    Memo.Lines.Add('Image vertical flipped');
end;

procedure TForm_PW.Do_HolF_Img(Sender: TObject);
var
  li,lj : longint;
begin
  for lj:=0 to PY-1 do
    for li:=0 to PX-1 do
      Buf2[lj,li] := Buf1[lj,PX-li-1];
  if CB_Log.Checked then
    Memo.Lines.Add('Image holizontal flipped');
end;

procedure TForm_PW.Do_Shift_Img(ShX,ShY : longint;Sender: TObject);
var
  li,lj, TmpX, TmpY : longint;
begin
  for lj:=0 to PY-1 do
    for li :=0 to PX-1 do
    begin
      TmpY := lj-ShY;
      TmpX := li-ShX;
      if (TmpY>=0) and (TmpX>=0) and (TmpY<PY) and (TmpX<PX) then
        Buf2[lj,li] := Buf1[TmpY, TmpX]
      else
        Buf2[lj,li] :=0;
    end;
  if CB_Log.Checked then
    Memo.Lines.Add('Image shifted by '+ShX.ToString+' & '+ShY.ToString);
end;

procedure TForm_PW.Do_Crop_Img(Sender: TObject);
var
  li,lj : longint;
  lR, lL, lT, lB, lH, lW : longint;
begin
  lL := StrToInt(Edit_ROI_Left.Text);
  lR := StrToInt(Edit_ROI_Right.Text);
  lT := StrToInt(Edit_ROI_Top.Text);
  lB := StrToInt(Edit_ROI_Bottom.Text);
  lH := lB-lT+1;
  lW := lR-lL+1;

  for lj:=lT to lB do
    for li :=lL to lR do
      Buf2[lj-lT,li-lL] := Buf1[lj,li];

  PX := lW;
  PY := lH;
  if CB_Log.Checked then
    Memo.Lines.Add('Image cropped by '+lW.ToString+'x'+lH.ToString);
end;

procedure TForm_PW.Do_Bin_Img(Sender: TObject);
var
  li, lj, lii, ljj, lBIN : longint;
  TmpDbl : double;
begin
  lBIN :=1;
  case CB_BIN.ItemIndex of
    0:lBIN :=2;
    1:lBIN :=3;
    2:lBIN :=4;
  end;

  for lj:=0 to PY div lBIN-1 do
    for li :=0 to PX div lBIN -1 do
    begin
      TmpDbl := 0;
      for ljj:=0 to lBIN-1 do
        for lii :=0 to lBIN-1 do
          TmpDbl := TmpDbl+Buf1[lj*lBIN+ljj,li*lBIN+lii];
      Buf2[lj,li] := TmpDbl/Sqr(lBIN);
    end;

  PX := PX div lBIN;
  PY := PY div lBIN;
  if CB_Log.Checked then
    Memo.Lines.Add('Image binned by '+lBIN.ToString);
end;

procedure TForm_PW.Image_Tr(Sender: TObject);
var
  li,lj, lk, lX, lY : longint;
  lFN : string;
begin
  OX := PX;
  OY := PY;
  if CB_Tr_Target.ItemIndex = 0 then
  begin
    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
      begin
        OrigData[lj,li]:=Data[lj,li];
        Buf1[lj,li] := Data[lj,li];
      end;

    case (Sender as TSpeedButton).Tag of
      101 : Do_Rot_Img(Sender);
      102 : Do_VerF_Img(Sender);
      103 : Do_HolF_Img(Sender);
      104 : Do_Shift_Img(StrToInt(Edit_Shift_dX.Text),StrToInt(Edit_Shift_dY.Text),Sender);
      105 : Do_Crop_Img(Sender);
      106 : Do_Bin_Img(Sender);
    end;

    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
        Data[lj,li]:= Buf2[lj,li];
    Draw_Data(Sender);
  end
  else
  begin
    for lk:=StrToInt(Edit_Tr_ST.Text) to StrToInt(Edit_Tr_End.Text) do
    begin
      PX := OX;
      PY := OY;
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
          Buf1[lj,li] := Data[lj,li];

      case (Sender as TSpeedButton).Tag of
        101 : Do_Rot_Img(Sender);
        102 : Do_VerF_Img(Sender);
        103 : Do_HolF_Img(Sender);
        104 : begin
                lX := StrToInt(Edit_Shift_dX.Text)+Round((lk-StrToInt(Edit_Tr_ST.Text))*StrToFloat(Edit_Shift_OffX.Text));
                lY := StrToInt(Edit_Shift_dY.Text)+Round((lk-StrToInt(Edit_Tr_ST.Text))*StrToFloat(Edit_Shift_OffY.Text));
                Do_Shift_Img(lX,lY,Sender);
              end;
        105 : Do_Crop_Img(Sender);
        106 : Do_Bin_Img(Sender);
      end;

      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
          Data[lj,li]:= Buf2[lj,li];

      Draw_Data(Sender);

      lFN := ReplaceStr(FN,'_*','');
      Save_Data(lFN+'_tr_'+lk.ToString,Sender);
      Application.ProcessMessages;
      SB.Panels[2].Text := 'Slice No : '+lk.ToString;
    end;
  end;
end;

procedure TForm_PW.SB_Img_UndoClick(Sender: TObject);
var
  li,lj : longint;
begin
  PX := OX;
  PY := OY;
  for lj:=0 to PY-1 do
    for li :=0 to PX-1 do
      Data[lj,li] := OrigData[lj,li];
  Draw_Data(Sender);
end;

procedure TForm_PW.SB_Img_Z_ProfClick(Sender: TObject);
begin
//
end;

procedure TForm_PW.SB_Img_Z_AddClick(Sender: TObject);
var
  li,lj, lk: longint;
begin
  for lj:=0 to PY-1 do
    for li :=0 to PX-1 do
      Buf1[lj,li] :=0;
  for lk:=StrToInt(Edit_Z_Project_ST.Text) to StrToInt(Edit_Z_Project_End.Text) do
  begin
    Booting := true;
    UD_TB_Img_No.Position := lk;
    UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
    TB_Img_No.Position := UD_TB_Img_No.Position;
    Booting := false;
    Load_Data(UD_TB_Img_No.Position,Sender);

    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
        Buf1[lj,li] :=Buf1[lj,li]+Data[lj,li];
  end;

  for lj:=0 to PY-1 do
    for li :=0 to PX-1 do
      Data[lj,li]:= Buf1[lj,li];
  Draw_Data(Sender);
  if CB_Log.Checked then
    Memo.Lines.Add('Image added from '+Edit_Z_Project_ST.Text+' to '+Edit_Z_Project_End.Text);
end;

procedure TForm_PW.SB_Sep_imgClick(Sender: TObject);
var
  li, lj, lk, lST, lEnd, ld: longint;
  lFS : array of TFileStream;
  lBFN : string;
  lData : array[0..4100] of WORD;
begin
  if SaveDialog1.Execute then
  begin
    lBFN := SaveDialog1.FileName;
    lST := StrToInt(Edit_Sep_Slice_ST.Text);
    lEnd := StrToInt(Edit_Sep_Slice_End.Text);
    ld :=  StrToInt(Edit_Sep_Slice_d.Text);

    SetLength(lFS,((lEnd-lST) div ld)+1);
    for lk:=0 to ((lEnd-lST) div ld) do
      lFS[lk] := TFileStream.Create(lBFN+'_'+lk.ToString,fmCreate);

    for lk:= lST to lEnd do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);
      Application.ProcessMessages;
      SB.Panels[2].Text := 'Separating... '+lk.ToString;

      for lj:=0 to PY-1 do
      begin
        for li:=0 to PX-1 do
          lData[li] := Round(Data[lj,li]);
        lFS[((lk-lST) div ld)].WriteBuffer(lData,PX*2);
      end;
    end;

    for lk:=0 to ((lEnd-lST) div ld) do
      lFS[lk].Free;
    SB.Panels[2].Text := '';
  end;
end;




procedure TForm_PW.Binary(P1: double; Sender: TObject);
var
  li, lj, X1, X2, Y1, Y2 : longint;
  Th : double;
begin
  Th := P1;
  if CB_Fil_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;
  for lj:=Y1 to Y2 do
    for li:=X1 to X2 do
      if Buf1[lj,li]>th then
        Buf2[lj,li] := 255
      else
        Buf2[lj,li] :=0;
  if CB_Log.Checked then
    Memo.Lines.Add('Image binaried by '+Th.ToString);
end;

procedure TForm_PW.n_Value(P1: Integer; Sender: TObject);
var
  li, lj, lk, X1, X2, Y1, Y2,N,lPW,lPH : longint;
  lPMin,lPMax, lMax : double;

  T1,T2,T3,T4,T5:longint;
  lWK,lMK,lM:double;
  B, MT : double;

  Hist : array[0..255] of  longint;
  Th : array[1..5] of WORD;
  Th_r : array[1..5] of double;
begin
  if CB_Fil_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;
  lPW := X2-X1+1;
  lPH := Y2-Y1+1;
  lPMin := StrToFloat(Edit_PMin.Text);
  lPMax := StrToFloat(Edit_PMax.Text);
  N := lPW*lPH;
  MT :=0;
  lMax :=0 ;

  for lk:=0 to 255 do
    Hist[lk] :=0 ;

  for lj:=Y1 to Y2 do
    for li:=X1 to X2 do
    begin
      lk := Round((Buf1[lj,li]-lPMin)/(lPMax-lPMin)*255);
      if (lK>=0) and (lk<256) then
        Inc(Hist[lk]);
    end;


  for lk:=0 to 255 do
    MT := MT+lk*Hist[lk]/N;

  for lj:=0 to 255 do
    for li:=lj+1 to 255 do
    begin
      lWK:=0;
      lMK:=0;
      lM:=0;
      for lk:=lj to li do
      begin
        lWK := lWK+Hist[lk]/N;
        lMK := lMK+lk*Hist[lk]/N;
      end;
      WK[lj,li] := lWK;
      MK[lj,li] := lMK;
      if lWK<>0 then
        M[lj,li]:=lMK/lWK
      else
        M[lj,li] :=0;
      WMK[lj,li] := lWK*Sqr(M[lj,li]-MT);
    end;

  for lk:=1 to 5 do
  begin
    Th[lk] :=0;
    Th_r[lk] :=0;
  end;

  case P1-1 of
    1:for T1:=0 to 254 do
      begin
        B := WMK[0,T1]+WMK[T1+1,255];
        if lMax<B then
        begin
          lMax := B;
          Th[1] := T1;
        end;
      end;

    2:for T1:=0 to 253 do
        for T2:=T1+1 to 254 do
        begin
          B := WMK[0,T1]+WMK[T1+1,T2]+WMK[T2+1,255];
          if lMax<B then
          begin
            lMax := B;
            Th[1] := T1;
            Th[2] := T2;
          end;
        end;

    3:for T1:=0 to 252 do
        for T2:=T1+1 to 253 do
          for T3:=T2+1 to 254 do
          begin
            B := WMK[0,T1]+WMK[T1+1,T2]+WMK[T2+1,T3]+WMK[T3+1,255];
            if lMax<B then
            begin
              lMax := B;
              Th[1] := T1;
              Th[2] := T2;
              Th[3] := T3;
            end;
          end;

    4:for T1:=0 to 251 do
        for T2:=T1+1 to 252 do
          for T3:=T2+1 to 253 do
            for T4:=T3+1 to 254 do
            begin
              B := WMK[0,T1]+WMK[T1+1,T2]+WMK[T2+1,T3]+WMK[T3+1,T4]+WMK[T4+1,255];
              if lMax<B then
              begin
                lMax := B;
                Th[1] := T1;
                Th[2] := T2;
                Th[3] := T3;
                Th[4] := T4;
              end;
            end;
    5:for T1:=0 to 250 do
        for T2:=T1+1 to 251 do
          for T3:=T2+1 to 252 do
            for T4:=T3+1 to 253 do
              for T5:=T4+1 to 254 do
              begin
                B := WMK[0,T1]+WMK[T1+1,T2]+WMK[T2+1,T3]+WMK[T3+1,T4]+WMK[T4+1,T5]+WMK[T5+1,255];
                if lMax<B then
                begin
                  lMax := B;
                  Th[1] := T1;
                  Th[2] := T2;
                  Th[3] := T3;
                  Th[4] := T4;
                  Th[5] := T5;
                end;
              end;
  else
    exit;
  end;

  Memo.Lines.Add('n-Value by Otsu Method: ');
  for lk:=1 to P1-1 do
  begin
    Th_r[lk] := (lPMax-lPMin)*Th[lk]/255+lPMin;
    Memo.Lines.Add(lk.ToString+' : '+ Th[lk].ToString+': '+Th_r[lk].ToString);
  end;

  for lj:= 0 to PY-1 do
    for li:=0 to PX-1 do
    begin
      if Buf1[lj,li]<TH_r[1] then
        Buf2[lj,li] := TH_r[1]
      else
        if Buf1[lj,li]<TH_r[2] then
          Buf2[lj,li] := TH_r[2]
        else
          if Buf1[lj,li]<TH_r[3] then
            Buf2[lj,li] := TH_r[3]
          else
            if Buf1[lj,li]<TH_r[4] then
              Buf2[lj,li] := TH_r[4]
            else
              Buf2[lj,li] := lPMax;
    end;
end;

procedure QuickSort(var A: array of single; iLo, iHi: Integer);
var
  Lo, Hi: Integer;
  Mid, T:single;
begin
  Lo := iLo;
  Hi := iHi;
  Mid := A[(Lo + Hi) div 2];
  repeat
    while A[Lo] < Mid do Inc(Lo);
    while A[Hi] > Mid do Dec(Hi);
    if Lo <= Hi then
    begin
      T := A[Lo];
      A[Lo] := A[Hi];
      A[Hi] := T;
      Inc(Lo);
      Dec(Hi);
    end;
  until Lo > Hi;
  if Hi > iLo then QuickSort(A, iLo, Hi);
  if Lo < iHi then QuickSort(A, Lo, iHi);
end;

procedure TForm_PW.Median(P1: Integer; Sender: TObject);
var
  li, lj, lii, ljj, X1, X2, Y1, Y2 : longint;
  SortData : array of single;
begin
  if CB_Fil_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;

  if P1>5 then exit;
  SetLength(SortData,SQR(P1*2+1));
  for lj:=Y1+P1 to Y2-P1 do
  begin
    for li:=X1+P1 to X2-P1 do
    begin
      for lii:=0 to P1*2+1 do
        SortData[lii] := 1e10;
      for ljj:=-P1 to P1 do
        for lii:=-P1 to P1 do
          SortData[(ljj+P1)*(P1*2+1)+(lii+P1)] := Buf1[ljj+lj,lii+li];
      QuickSort(SortData, Low(SortData), High(SortData));
      Buf2[lj,li] := SortData[Sqr(P1) div 2];
    end;
    if lj mod 100 = 0 then
      SB.Panels[2].Text := (lj-Y1).ToString+'/'+(Y2-Y1).ToString;
    Application.ProcessMessages;
  end;

  SB.Panels[2].Text := '';
  Finalize(SortData);
  if CB_Log.Checked then
    Memo.Lines.Add('Image median filterd by '+P1.ToString+' pixels');
end;

procedure TForm_PW.Kern_Fil(KS: Integer; Sender: TObject);
var
  li, lj, lii, ljj, X1, X2, Y1, Y2 : longint;
  TmpDbl, Kern_Int : double;
begin
  if CB_Fil_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;

  if KS>6 then exit;

  Kern_Int := 0;
  for ljj:=-KS to KS do
    for lii:=-KS to KS do
      Kern_Int := Kern_Int+ Fil_Kern[ljj,lii];

  for lj:=Y1+KS to Y2-KS do
    for li:=X1+KS to X2-KS do
    begin
      TmpDbl := 0;
      for ljj:=-KS to KS do
        for lii:=-KS to KS do
          TmpDbl := TmpDbl+ Buf1[ljj+lj,lii+li]*Fil_Kern[ljj,lii];
      Buf2[lj,li] := TmpDbl;
    end;
  if Kern_int = 0 then
    Kern_int :=1 ;
  for lj:=Y1+KS to Y2-KS do
    for li:=X1+KS to X2-KS do
      Buf2[lj,li]:=Buf2[lj,li]/Kern_int;
  if CB_Log.Checked then
    Memo.Lines.Add('Image filterd by kernel');
end;

procedure TForm_PW.SB_FilClick(Sender: TObject);
var
  li,lj, lk : longint;
  lFN : string;
begin
  if CB_Fil_Target.ItemIndex = 0 then
  begin
    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
      begin
        OrigData[lj,li]:=Data[lj,li];
        Buf1[lj,li] := Data[lj,li];
        Buf2[lj,li] := Data[lj,li];
      end;

    case LB_Filter_Type.ItemIndex of
      0:Binary(StrToFloat(Edit_Fil_P1.Text),Sender);
      1:n_Value(StrToInt(Edit_Fil_P1.Text),Sender);
      2:Median(StrToInt(Edit_Fil_P1.Text),Sender);
      3,6: Kern_Fil(StrToInt(Edit_Fil_P2.Text),Sender) ;
      4,5: Kern_Fil(1,Sender);
    end;

    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
        Data[lj,li]:= Buf2[lj,li];
    Draw_Data(Sender);
  end
  else
  begin
    for lk:=StrToInt(Edit_Fil_ST.Text) to StrToInt(Edit_Fil_End.Text) do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
        begin
          Buf1[lj,li] := Data[lj,li];
          Buf2[lj,li] := Data[lj,li];
        end;

      case LB_Filter_Type.ItemIndex of
        0:Binary(StrToFloat(Edit_Fil_P1.Text),Sender);
        1:n_Value(StrToInt(Edit_Fil_P1.Text),Sender);
        2:Median(StrToInt(Edit_Fil_P1.Text),Sender);
        3,6: Kern_Fil(StrToInt(Edit_Fil_P2.Text),Sender) ;
        4,5: Kern_Fil(1,Sender);
      end;

      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
          Data[lj,li]:= Buf2[lj,li];

      Draw_Data(Sender);

      lFN := ReplaceStr(FN,'_*','');
      Save_Data(lFN+'_fil_'+lk.ToString,Sender);
      Application.ProcessMessages;
      SB.Panels[2].Text := 'Slice No : '+lk.ToString;
    end;
  end;
end;

procedure TForm_PW.SB_Fil_UndoClick(Sender: TObject);
var
  li,lj : longint;
begin
  for lj:=0 to PY-1 do
    for li :=0 to PX-1 do
      Data[lj,li] := OrigData[lj,li];
  Draw_Data(Sender);
end;

procedure TForm_PW.LB_Filter_TypeClick(Sender: TObject);
var
  S : double;
  li,lj, Kern_Size:longint;
begin
  if (LB_Filter_Type.ItemIndex<3) or (LB_Filter_Type.ItemIndex>6) then exit;

  Kern_Size := 5;
  for lj:=-Kern_Size to Kern_Size do
    for li:=-Kern_Size to Kern_Size do
    begin
      Fil_Kern[lj,li] := 0;
      SG_Fil_Ker.Cells[li+Kern_Size , lj+Kern_Size] := '';
    end;

  //ガウス
  if LB_Filter_Type.ItemIndex=3 then
  begin
    S := StrToFloat(Edit_Fil_P1.Text);
    Kern_Size := StrToInt(Edit_Fil_P2.Text);
    if Kern_Size> 5 then exit;
    for lj:=-Kern_Size to Kern_Size do
      for li:=-Kern_Size to Kern_Size do
        Fil_Kern[lj,li] := 1/(2*Pi*S*S)*exp(-(Sqr(li)+Sqr(lj))/(2*S*S));
  end;
  //Lap
  if LB_Filter_Type.ItemIndex=4 then
  begin
    Kern_Size := 1;
    for lj:=-Kern_Size to Kern_Size do
      for li:=-Kern_Size to Kern_Size do
        Fil_Kern[lj,li] := -1;
    Fil_Kern[0,0] := 9;
  end;
  //エッジ強調
  if LB_Filter_Type.ItemIndex=5 then
  begin
    Kern_Size := 1;
    if StrToFloat(Edit_Fil_P1.Text)<>0 then
    begin
      Fil_Kern[0,-1] :=  1;
      Fil_Kern[0, 0] := -2;
      Fil_Kern[0, 1] :=  1;
    end;
    if StrToFloat(Edit_Fil_P1.Text)<>0 then
    begin
      Fil_Kern[-1,0] :=  1;
      Fil_Kern[0, 0] := Fil_Kern[0, 0]-2;
      Fil_Kern[ 1,0] :=  1;
    end;
  end;
  //カスタム
  if LB_Filter_Type.ItemIndex=6 then
  begin
    Kern_Size := Round(StrToFloat(Edit_Fil_P1.Text));
    Edit_Fil_P1.Text := Kern_Size.ToString;
    for lj:=-Kern_Size to Kern_Size do
      for li:=-Kern_Size to Kern_Size do
      begin
        Fil_Kern[lj,li] := 0;
        SG_Fil_Ker.Cells[li+Kern_Size , lj+Kern_Size] := '';
      end;
  end;

  for lj:=-Kern_Size to Kern_Size do
    for li:=-Kern_Size to Kern_Size do
      SG_Fil_Ker.Cells[li+Kern_Size , lj+Kern_Size] := Fil_Kern[lj,li].ToString;
end;

procedure TForm_PW.Do_Math_Cal(Sender: TObject);
var
  li,lj,X1,X2,Y1,Y2:longint;
  lC : double;
begin
  if CB_Math_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;

  try
    lC := StrToFloat(Edit_Math_P.Text);
    case CB_MathType.ItemIndex of
      0:begin{Add}
          for lj:=Y1 to Y2-1 do
            for li:=X1 to X2-1 do
              Buf2[lj,li] := Buf1[lj,li]+lC;
        end;
      1:begin{Subst}
          for lj:=Y1 to Y2-1 do
            for li:=X1 to X2-1 do
              Buf2[lj,li] := Buf1[lj,li]-lC;
        end;
      2:begin{Multi}
          for lj:=Y1 to Y2-1 do
            for li:=X1 to X2-1 do
              Buf2[lj,li] := Buf1[lj,li]*lC;
        end;
      3:begin{Div}
          if lC<>0 then
            for lj:=Y1 to Y2-1 do
              for li:=X1 to X2-1 do
                Buf2[lj,li] := Buf1[lj,li]/lC;
        end;
      4:begin{log}
          if lC<>0 then
            for lj:=Y1 to Y2-1 do
              for li:=X1 to X2-1 do
                Buf2[lj,li] := Log10(Buf1[lj,li]);
        end;
      5:begin{ln}
          if lC<>0 then
            for lj:=Y1 to Y2-1 do
              for li:=X1 to X2-1 do
                Buf2[lj,li] := Ln(Buf1[lj,li]);
        end;
      6:begin{exp}
          if lC<>0 then
            for lj:=Y1 to Y2-1 do
              for li:=X1 to X2-1 do
                Buf2[lj,li] := Exp(Buf1[lj,li]);
        end;
    end;
  finally

  end;
  if CB_Log.Checked then
    Memo.Lines.Add('Image math by '+CB_MathType.ItemIndex.ToString);
end;

procedure TForm_PW.Do_Mask(Sender: TObject);
var
  li,lj:longint;
  lC, lCX,lCY, lR : double;
begin
  lC := StrToFloat(Edit_Mask_V.Text);
  lCX := StrToFloat(Edit_Mask_CX.Text)+PX/2;
  lCY := StrToFloat(Edit_Mask_CY.Text)+PY/2;
  lR := StrToFloat(Edit_Mask_R.Text);
  case CB_Mask_Type.ItemIndex of
    0:begin
        for lj:=0 to Round(lCY) do
          for li:=Round(lCX) to PX-1 do
            Buf2[lj,li]:=lC;
      end;
    1:begin
        for lj:=0 to Round(lCY) do
          for li:=0 to Round(lCX) do
            Buf2[lj,li]:=lC;
      end;
    2:begin
        for lj:=Round(lCY) to PY-1 do
          for li:=0 to Round(lCX) do
            Buf2[lj,li]:=lC;
      end;
    3:begin
        for lj:=Round(lCY) to PY-1 do
          for li:=Round(lCX) to PX-1 do
            Buf2[lj,li]:=lC;
      end;
    4:begin
        for lj:=0 to PY-1 do
          for li:=0 to PX-1 do
            if Sqrt(Sqr(lj-lCY)+Sqr(li-lCX))>lR then
              Buf2[lj,li]:=lC;
      end;
  end;
  if CB_Log.Checked then
    Memo.Lines.Add('Image mask by '+CB_Mask_Type.ItemIndex.ToString);
end;

procedure TForm_PW.SB_Fil_MathClick(Sender: TObject);
var
  li,lj, lk : longint;
  TmpStr, lFN : string;
begin
  if CB_Fil_Target.ItemIndex = 0 then
  begin
    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
      begin
        OrigData[lj,li]:=Data[lj,li];
        Buf1[lj,li] := Data[lj,li];
        Buf2[lj,li] := Data[lj,li];
      end;
    case (Sender as TSpeedButton).Tag of
      200:Do_Math_Cal(Sender);
      201:Do_Mask(Sender);
    end;
    for lj:=0 to PY-1 do
      for li :=0 to PX-1 do
        Data[lj,li]:= Buf2[lj,li];
    Draw_Data(Sender);
  end
  else
  begin
    case (Sender as TSpeedButton).Tag of
      200:TmpStr := '_Math_';
      201:TmpStr := '_Mask_';
    end;
    for lk:=StrToInt(Edit_Fil_ST.Text) to StrToInt(Edit_Fil_End.Text) do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
        begin
          Buf1[lj,li] := Data[lj,li];
          Buf2[lj,li] := Data[lj,li];
        end;

      case (Sender as TSpeedButton).Tag of
        200:Do_Math_Cal(Sender);
        201:Do_Mask(Sender);
      end;
      for lj:=0 to PY-1 do
        for li :=0 to PX-1 do
          Data[lj,li]:= Buf2[lj,li];
      Draw_Data(Sender);

      lFN := ReplaceStr(FN,'_*','');
      Save_Data(lFN+TmpStr+lk.ToString,Sender);
      Application.ProcessMessages;
      SB.Panels[2].Text := 'Slice No : '+lk.ToString;
    end;
  end;
end;



procedure TForm_PW.SB_FFTClick(Sender: TObject);
var
  li,lj,lPW,lPH,lOffX,lOffY:longint;
begin
  if FPW =nil then
    FPW := TForm_FPW.Create(Self);

  if CB_FFT_ROI.Checked then
  begin
    lPW := StrToInt(Edit_ROI_Right.Text)-StrToInt(Edit_ROI_Left.Text)+1;
    lPH := StrToInt(Edit_ROI_Bottom.Text)-StrToInt(Edit_ROI_Top.Text)+1;
    lOffX :=StrToInt(Edit_ROI_Left.Text);
    lOffY :=StrToInt(Edit_ROI_Top.Text);
  end
  else
  begin
    lPW := PX;
    lPH := PY;
    lOffX :=0;
    lOffY :=0;
  end;

  FPW.InitData(lPW,lPH,Sender);
  FPW.Caption := 'FFT of '+SB.Panels[0].Text;
  FPW.Show;

  for lj:=0 to lPH-1 do
    for li:=0 to lPW-1 do
    begin
      FPW.RReData[lj+FPW.OFFY,li+FPW.OFFX] := Data[lj+lOffY, li+lOffX];
      FPW.RImData[lj+FPW.OFFY,li+FPW.OFFX] := 0;
    end;

  FPW.FFT(CB_FFT_Window.ItemIndex,Sender);
  FPW.RB_Amp.Checked := true;
  FPW.Draw_Data(Sender);
end;

procedure TForm_PW.SB_FFT_FilClick(Sender: TObject);
begin
  case CB_FFT_H.ItemIndex of
    0: FPW.FilHType :=0;
    1: FPW.FilHType :=2;
    2: FPW.FilHType :=1;
  end;

  case CB_FFT_V.ItemIndex of
    0: FPW.FilVType :=0;
    1: FPW.FilVType :=2;
    2: FPW.FilVType :=1;
  end;

  FPW.HFil := CB_FFT_Hol.Checked;
  FPW.VFil := CB_FFT_Ver.Checked;

  FPW.HFilCOF1 := StrToFloat(Edit_FFT_H_COF1.Text);
  FPW.HFilCOF2 := StrToFloat(Edit_FFT_H_COF2.Text);
  FPW.VFilCOF1 := StrToFloat(Edit_FFT_V_COF1.Text);
  FPW.VFilCOF2 := StrToFloat(Edit_FFT_V_COF2.Text);

  FPW.HFilDeg1 := StrToFloat(Edit_FFT_H_DEG1.Text);
  FPW.HFilDeg2 := StrToFloat(Edit_FFT_H_DEG2.Text);
  FPW.VFilDeg1 := StrToFloat(Edit_FFT_V_DEG1.Text);
  FPW.VFilDeg2 := StrToFloat(Edit_FFT_V_DEG2.Text);

  FPW.Filter(Sender);

  FPW.RB_Amp.Checked := true;
  FPW.Draw_Data(Sender);
end;

procedure TForm_PW.SB_IFFTClick(Sender: TObject);
begin
  FPW.IFFT(Sender);

  FPW.RB_Img.Checked := true;
  FPW.Draw_Data(Sender);
end;

procedure TForm_PW.SB_RestoreClick(Sender: TObject);
var
  li,lj,lPW,lPH,lOffX,lOffY:longint;
begin
  if CB_FFT_ROI.Checked then
  begin
    lPW := StrToInt(Edit_ROI_Right.Text)-StrToInt(Edit_ROI_Left.Text)+1;
    lPH := StrToInt(Edit_ROI_Bottom.Text)-StrToInt(Edit_ROI_Top.Text)+1;
    lOffX :=StrToInt(Edit_ROI_Left.Text);
    lOffY :=StrToInt(Edit_ROI_Top.Text);
  end
  else
  begin
    lPW := PX;
    lPH := PY;
    lOffX :=0;
    lOffY :=0;
  end;

  for lj:=0 to lPH-1 do
    for li:=0 to lPW-1 do
      Data[lj+lOffY, li+lOffX] := FPW.RReData[lj+FPW.OFFY,li+FPW.OFFX] ;
  Draw_Data(Sender);
end;

procedure TForm_PW.SB_FFT_Fil2Click(Sender: TObject);
var
  lk : longint;
  lFN : string;
begin
  if CB_FFT_Target.ItemIndex = 0 then
  begin
    SB_FFTClick(Sender);
    SB_FFT_FilClick(Sender);
    SB_IFFTClick(Sender);
    SB_RestoreClick(Sender);
    Draw_Data(Sender);
    if CB_Log.Checked then
      Memo.Lines.Add('Image FFT filterd');
  end
  else
  begin
    for lk:=StrToInt(Edit_FFT_ST.Text) to StrToInt(Edit_FFT_End.Text) do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      SB_FFTClick(Sender);
      SB_FFT_FilClick(Sender);
      SB_IFFTClick(Sender);
      SB_RestoreClick(Sender);
      Draw_Data(Sender);

      lFN := ReplaceStr(FN,'_*','');
      Save_Data(lFN+'_FFT_Fil_'+lk.ToString,Sender);
      Application.ProcessMessages;
      SB.Panels[2].Text := 'Slice No : '+lk.ToString;
    end;
  end;
end;





procedure TForm_PW.Img_Ana(Sender: TObject);
var
  li, lj:longint;
  X1,X2,Y1,Y2 : longint;
  Av, TmpDbl, StdDev, lMin, lMax : double;
  lData : array[0..255] of longint;
begin
  Series1.Clear;

  if RB_ana_Whole.Checked then
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end
  else
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end;

  lMin := 1e10;
  lMax := -1e10;
  Av := 0;
  for lj:=Y1 to Y2 do
    for li:= X1 to X2 do
    begin
      AV := Av+Data[lj,li];
      if lMin>Data[lj,li] then
        lMin := Data[lj,li];
      if lMax<Data[lj,li] then
        lMax := Data[lj,li];
    end;
  Av := Av/((X2-X1+1)*(Y2-Y1+1));

  StdDev := 0;
  for lj:=Y1 to Y2 do
    for li:= X1 to X2 do
      StdDev := StdDev+Sqr(Data[lj,li]-Av);
  StdDev := Sqrt(StdDev/((X2-X1+1)*(Y2-Y1+1)));

  Memo_Ana.Lines.Add('Area size: '+(X2-X1+1).ToString+'*'+(Y2-Y1+1).ToString);
  Memo_Ana.Lines.Add('Area pixel number: '+((X2-X1+1)*(Y2-Y1+1)).ToString);
  Memo_Ana.Lines.Add('Area offset: '+X1.ToString+', '+Y1.ToString);
  Memo_Ana.Lines.Add('Average: '+Av.ToString);
  Memo_Ana.Lines.Add('Std dev: '+StdDev.ToString);
  Memo_Ana.Lines.Add('Min : '+lMin.ToString);
  Memo_Ana.Lines.Add('Max : '+lMax.ToString);
  Memo_Ana.Lines.Add('');

  Series1.Clear;
  lMin := StrToFloat(Edit_PMin.Text);
  lMax := StrToFloat(Edit_PMax.Text);
  for li:=0 to 256 do
    lData[li]:=0;
  for lj:=Y1 to Y2 do
    for li:= X1 to X2 do
    begin
      TmpDbl := (Data[lj,li]-lMin)/(lMax-lMin)*255;
      if (TmpDbl>=0) and(TmpDbl<256) then
        Inc(lData[Round(TmpDbl)]);
    end;
  for li:= 0 to 255 do
  begin
    Series1.AddXY(li/255*(lMax-lMin)+lMin,lData[li]);
//    Memo_Ana.Lines.Add(li.ToString+','+lData[li].ToString);
  end;
  CG_Hist.ShowLabels := false;
  CG_Hist.ShowFields := false;
  CG_Hist.Series := Series1;
end;

procedure TForm_PW.SB_AnalyClick(Sender: TObject);
var
  lk :longint;
begin
  if CB_Ana_Target.ItemIndex=0 then
    Img_Ana(Sender)
  else
  begin
    for lk:=StrToInt(Edit_Ana_ST.Text) to StrToInt(Edit_Ana_End.Text) do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      Memo_Ana.Lines.Add('Img_No: '+lk.ToString);
      Img_Ana(Sender);
    end;
  end;
end;

procedure TForm_PW.SB_Ana_CopyClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    Memo_Ana.Lines.SaveToFile(SaveDialog1.FileName);
    Chart_ANA.SaveToBitmapFile(SaveDialog1.FileName+'.bmp');
    with TSeriesDataXML.Create(Chart_Ana, Series1) do
    try
      SaveToFile(SaveDialog1.FileName+'.xml');
    finally
      Free;
    end;
  end;
end;

procedure TForm_PW.SB_Ana_Memo_CLRClick(Sender: TObject);
begin
  Memo_Ana.Lines.Clear;
end;



procedure TForm_PW.SV2DCM(Sender: TObject);
begin
  try
    FDCM.Patient_Name.Str := Edit_DCM_Name.Text;
    FDCM.Study_Date.Str := Edit_DCM_Date.Text;
    FDCM.Study_Time.Str := Edit_DCM_Time.Text;
    FDCM.Energy.cDbl := StrToFloat(Edit_DCM_Energy.Text);
    FDCM.ExposureT.cDbl := StrToFloat(Edit_DCM_ExpT.Text);
    FDCM.Pixel_X := StrToFloat(Edit_DCM_PX.Text);
    FDCM.Pixel_Y := StrToFloat(Edit_DCM_PY.Text);
    FDCM.Pixel_Z.cDbl := StrToFloat(Edit_DCM_PZ.Text);
    FDCM.Width.cWORD := PX;
    FDCM.Height.cWORD := PY;

    FDCM.Img_Pos_X := StrToFloat(Edit_DCM_X.Text);
    FDCM.Img_Pos_Y := StrToFloat(Edit_DCM_Y.Text);
    FDCM.Img_Pos_Z := StrToFloat(Edit_DCM_Z.Text);
  finally

  end;
end;

procedure TForm_PW.DCM2SV(Sender: TObject);
begin
  Edit_DCM_Name.Text := FDCM.Patient_Name.Str;
  Edit_DCM_Date.Text := FDCM.Study_Date.Str;
  Edit_DCM_Time.Text := FDCM.Study_Time.Str;
  Edit_DCM_Energy.Text := FDCM.Energy.cDbl.ToString;
  Edit_DCM_ExpT.Text := FDCM.ExposureT.cDbl.ToString;
  Edit_DCM_PX.Text := FDCM.Pixel_X.ToString;
  Edit_DCM_PY.Text := FDCM.Pixel_Y.ToString;
  Edit_DCM_PZ.Text := FDCM.Pixel_Z.cDbl.ToString;

  Edit_DCM_X.Text := FDCM.Img_Pos_X.ToString;
  Edit_DCM_Y.Text := FDCM.Img_Pos_Y.ToString;
  Edit_DCM_Z.Text := FDCM.Img_Pos_Z.ToString;
end;

procedure TForm_PW.DCM_SAKAS_Import(FN: string; Sender: TObject);
var
  Ini: TIniFile;
  TmpStr : string;
  TmpDbl : double;
begin
  if UpperCase(ExtractFileExt(FN)) = '.TAG' then
  begin
    Ini := TIniFile.Create(FN);
    try
      FDCM.Patient_Name.Str := Ini.ReadString('Sample','Name','');
      FDCM.Study_Part.Str := Ini.ReadString('Sample','Part','');
      FDCM.Study_Date.Str := Ini.ReadString('BL_Cond','Date','');
      FDCM.Study_Time.Str := Ini.ReadString('BL_Cond','Start_Time','');
      FDCM.Energy.cDbl := Ini.ReadFloat('BL_Cond','Energy',10);
      FDCM.ExposureT.cDbl := Ini.ReadFloat('Imager','Exp_T',10);
      FDCM.Manufacturer.Str := Ini.ReadString('BL_Cond','SR_Facility','');
      FDCM.Model_Name.Str := Ini.ReadString('Imager','Name','');

      TmpStr := Ini.ReadString( 'Imager', 'Pixel_Size', '');
      if Ini.ValueExists('Proc_2','BINNING') then
        if Ini.ReadBool('Proc_2','BINNING',true) then
          TmpDbl := StrToFloat(TmpStr)*2/1000
        else
          TmpDbl := StrToFloat(TmpStr)/1000;
      FDCM.Pixel_X := TmpDbl;
      FDCM.Pixel_Y := TmpDbl;
      FDCM.Pixel_Z.cDbl := TmpDbl;
    finally
      Ini.Free;
    end;
    DCM2SV(Sender);
  end;
end;

procedure TForm_PW.SB_DCM_ImportClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    DCM_SAKAS_Import(OpenDialog1.FileName,Sender);
    FDCM.ReConv_Data;
    FDCM.Disp_Data(Sender);
  end;
end;

procedure TForm_PW.SB_DCM_EditorClick(Sender: TObject);
begin
  FDCM.Show;
end;

procedure TForm_PW.SB_DCM_Load_HeadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    FDCM.Get_Data(OpenDialog1.FileName);
    FDCM.Disp_Data(Sender);
    FDCM.ReConv_Data;
    DCM2SV(Sender);
  end;
end;

procedure TForm_PW.SB_DCM_Save_HeadClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SV2DCM(Sender);
    FDCM.ReConv_Data;
    FDCM.Save_Data(SaveDialog1.FileName,false);
  end;
end;

procedure TForm_PW.SB_DCM_STOPClick(Sender: TObject);
begin
  Go:=false;
end;

procedure TForm_PW.SB_DCM_ExportClick(Sender: TObject);
var
  li,lj,lii,ljj,lk,lkk,X1,X2,Y1,Y2, lPX, lPY, lBIN, lST, lEnd:longint;
  BK_X1, BK_X2, BK_Y1, BK_Y2 : longint;
  DCM_DIR, lFN : string;
  TmpDbl,a,b : double;
  lMag:longint;
begin
  lMag := 10;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  if CB_NewF.Checked then
    if not(SaveDialog1.Execute) then exit;

  if CB_UID.Checked then
  begin
    FDCM.Stu_UID.Str := '1.2.392.200080.100.200.'+FDCM.Make_UID(33);
    FDCM.Ser_UID.Str := '1.2.392.200080.100.200.'+FDCM.Make_UID(33);
  end;

  Go := true;
  if not(CB_NewF.Checked) then
  begin
    DCM_Dir := TDirectory.GetParent(ExtractFilePath(ChangeFileExt(FN,'')));
    if DCM_Dir<>'' then
      DCM_Dir := TDirectory.GetParent(ExtractFilePath(DCM_Dir))+'\dcm'
    else
      DCM_Dir := ExtractFileDrive(FN)+'\dcm';

    if not(TDirectory.Exists(DCM_Dir)) then
      MkDir(DCM_Dir);
    DCM_Dir := DCM_Dir+'\';
  end
  else
    DCM_Dir := ExtractFilePath(SaveDialog1.FileName);

  if CB_DCM_ROI.Checked then
  begin
    X1 := StrToInt(Edit_ROI_Left.Text);
    X2 := StrToInt(Edit_ROI_Right.Text);
    Y1 := StrToInt(Edit_ROI_Top.Text);
    Y2 := StrToInt(Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;
  lST := StrToInt(Edit_DCM_ST.Text);
  lEnd := StrToInt(Edit_DCM_End.Text);
  BK_X1 := SS_BK.Left*lMag;
  BK_X2 := (SS_BK.Left+SS_BK.Width)*lMag;
  BK_Y1 := SS_BK.Top*lMag;
  BK_Y2 := (SS_BK.Top+SS_BK.Height)*lMag;

  if CB_DCM_Bin.Checked then
  begin
    lBIN := 2;
    FDCM.Pixel_X := FDCM.Pixel_X*2;
    FDCM.Pixel_Y := FDCM.Pixel_Y*2;
    FDCM.Pixel_Z.cDbl := FDCM.Pixel_Z.cDbl*2;
    Edit_DCM_PX.Text := FDCM.Pixel_X.ToString;
    Edit_DCM_PY.Text := FDCM.Pixel_Y.ToString;
    Edit_DCM_PZ.Text := FDCM.Pixel_Z.cDbl.ToString;
  end
  else
    lBIN := 1;

  for lk:=0 to (lEnd-lST) div lBIN do
  begin
    a := StrToFloat(Edit_DCM_a.Text);
    b := StrToFloat(Edit_DCM_b.Text);
    for lj:=0 to PY-1 do
      for li:=0 to PX-1 do
        Buf1[lj,li] := 0;
    for lkk:=0 to lBIN-1 do
    begin
      Booting := true;
      UD_TB_Img_No.Position := lk*lBIN+lSt+lkk;
      UD_Show_ImgNo.Position := UD_TB_Img_No.Position;
      TB_Img_No.Position := UD_TB_Img_No.Position;
      Booting := false;
      Load_Data(UD_TB_Img_No.Position,Sender);

      if CB_DCM_Mask.Checked then
      begin
        for lj:=0 to PY-1 do
          for li:=0 to PX-1 do
            Buf2[lj,li] := Data[lj,li];
        Do_Mask(Sender);
        for lj:=0 to PY-1 do
          for li:=0 to PX-1 do
            Data[lj,li] := Buf2[lj,li];
      end;

      SB_RedrawClick(Sender);

      TmpDbl := 0;
      if CB_DCM_SubstBK.Checked then
      begin
        for lj:=BK_Y1 to BK_Y2 do
          for li:=BK_X1 to BK_X2 do
            TmpDbl :=TmpDbl+Data[lj,li];
        TmpDbl := TmpDbl/((BK_Y2-BK_Y1+1)*(BK_X2-BK_X1+1));
      end;

      for lj:=0 to PY-1 do
        for li:=0 to PX-1 do
          Buf2[lj,li] := a*Data[lj,li]-TmpDbl-b;

      for lj:=0 to PY-1 do
        for li:=0 to PX-1 do
          Buf1[lj,li] := Buf1[lj,li]+Buf2[lj,li];
    end;

    lPX := PX div lBin;
    lPY := PY div lBin;

    for lj:=0 to lPY-1 do
      for li:=0 to lPX-1 do
      begin
        TmpDbl := 0;
        for ljj:=0 to lBIN-1 do
          for lii:=0 to lBIN-1 do
            TmpDbl := TmpDbl + Buf1[lj*lBin+ljj,li*lBin+lii];
        Buf2[lj,li] := TmpDbl/Sqr(lBIN);
      end;

    SV2DCM(Sender);
    FDCM.Img_Pos_Z := FDCM.Img_Pos_Z+FDCM.Pixel_Z.cDbl*lBIN;
//    FDCM.Slice_Loc.Str := FloatToStr(StrToFloat(FDCM.Slice_Loc.Str)+FDCM.Pixel_Z.cDbl*lBIN);
    FDCM.Slice_Loc.Str := FDCM.Img_Pos_Z.ToString;
    FDCM.Slice_No.cWORD := lk;
    if CB_UID.Checked then
    begin
      FDCM.MSSOP_UID.Str := '1.2.392.200080.100.200.'+FDCM.Make_UID(33);
      FDCM.SOP_UID.Str := '1.2.392.200080.100.200.'+FDCM.Make_UID(33);
    end;

    lPX := (X2-X1+1) div lBin;
    lPY := (Y2-Y1+1) div lBin;
    FDCM.Width.cWORD := lPX;
    FDCM.Height.cWORD := lPY;
    for lj:= 0 to lPY-1 do
      for li:=0 to lPX-1 do
        FDCM.ImgData[lj,li] := Round(Buf2[lj+(Y1 div lBIN),li+(X1 div lBIN)]);

    Edit_DCM_Z.Text := FDCM.Img_Pos_Z.ToString;
    FDCM.ReConv_Data;

    if CB_NewF.Checked then
      lFN := ExtractFileName(ChangeFileExt(SaveDialog1.FileName,''))+'_'+(lk+lST).ToString
    else
    begin
      lFN := FN;
      if AnsiPos('*',FN)<>0 then
      begin
        if FN_Digit<>0 then
          lFN := ReplaceStr(FN,'*',Copy((lk+lST+100000).ToString,6-FN_Digit,FN_Digit))
        else
          lFN := ReplaceStr(FN,'*',(lk+lST).ToString)+FN_ExtStr;
      end
      else
        lFN := lFN+'_'+(lk+lST).ToString;
      lFN := ExtractFileName(lFN);
    end;

    FDCM.Save_Data(DCM_DIR+lFN+'.dcm',true);
    if CB_Log.Checked then
      Memo.Lines.Add('DCM file : '+DCM_DIR+lFN+'.dcm');
    Application.ProcessMessages;
    SB.Panels[2].Text := 'Slice No : '+lk.ToString;
    if not(Go) then
      exit;
  end;
  SB.Panels[2].Text := '';
end;

procedure TForm_PW.Label204Click(Sender: TObject);
begin
  CB_DCM_SubstBK.Checked := not(CB_DCM_SubstBK.Checked);
end;

procedure TForm_PW.TabSheet7Hide(Sender: TObject);
begin
  SS_BK.Visible := false;
end;

procedure TForm_PW.TabSheet7Show(Sender: TObject);
begin
  SS_BK.Visible := true;
end;


end.


