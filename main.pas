unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.CheckLst, Vcl.Buttons, IniFiles, System.Types, System.StrUtils, System.IOUtils, Unit_PW;

type
  TForm_main = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label01: TLabel;
    Label12: TLabel;
    CB_Log: TCheckBox;
    SB_Dir: TSpeedButton;
    SB_TagList_Reload: TSpeedButton;
    SB_Open: TSpeedButton;
    SB_Img_Reg: TSpeedButton;
    SB_Img_Seg: TSpeedButton;
    SB_SKS_Editor: TSpeedButton;
    SB_Help: TSpeedButton;

    CB_Ext: TComboBox;
    Edit_Dir: TEdit;
    Edit_Load_ST: TEdit;
    UD_Load_ST: TUpDown;
    CLB_File: TCheckListBox;

    GroupBox2: TGroupBox;
    Label02: TLabel;
    Label03: TLabel;
    Label04: TLabel;
    Label05: TLabel;
    Label06: TLabel;
    Label07: TLabel;
    Label08: TLabel;
    Label09: TLabel;
    Label11: TLabel;
    Label_Ar1: TLabel;
    Label_Sample_Name: TLabel;
    Label_Method_Name: TLabel;
    CB_Proc: TComboBox;
    Edit_FN: TEdit;
    Edit_ST: TEdit;
    Edit_End: TEdit;
    Edit_ImgN: TEdit;
    SB_FOpen: TSpeedButton;
    RG_Format: TRadioGroup;
    Edit_Dig: TEdit;
    UD_Dig: TUpDown;
    Edit_Ext: TEdit;
    CB_AutoDir: TCheckBox;

    LEdit_OW: TLabeledEdit;
    LEdit_PW: TLabeledEdit;
    LEdit_PH: TLabeledEdit;
    LEdit_OH: TLabeledEdit;
    LEdit_OFFX: TLabeledEdit;
    LEdit_OFFY: TLabeledEdit;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    Shape1: TShape;
    Shape2: TShape;

    GroupBox3: TGroupBox;
    CLB_PW: TCheckListBox;

    SB: TStatusBar;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure SB_DirClick(Sender: TObject);
    procedure SB_TagList_ReloadClick(Sender: TObject);
    procedure SB_FOpenClick(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure CLB_FileClick(Sender: TObject);

    procedure Read_Proc_Cond(Proc_N:byte; IniF: TIniFile; Sender: TObject);
    procedure OpenTag(Sender: TObject);
    procedure CB_ProcChange(Sender: TObject);

    procedure SB_OpenClick(Sender: TObject);
    procedure SB_SKS_EditorClick(Sender: TObject);
    procedure SB_Img_RegClick(Sender: TObject);
    procedure SB_Img_SegClick(Sender: TObject);
    procedure LB_PWClick(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form_main: TForm_main;
  PW : array of TForm_PW;

  TagFN : string;

implementation

{$R *.dfm}

uses Unit_ABOUT, Unit_SAKAS, Unit_Regist, Unit_Seg;
procedure TForm_main.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_main', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_main', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_main', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_main', 'Height', 500 );
    if Ini.ReadBool( 'Form_main', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_Dir.Text := Ini.ReadString( 'Param', 'Tag_Dir', '' );

    LEdit_OW.Text  := Ini.ReadString( 'Param', 'OW', '1000' );
    LEdit_OH.Text  := Ini.ReadString( 'Param', 'OH', '500' );
    LEdit_PW.Text  := Ini.ReadString( 'Param', 'PW', '1000' );
    LEdit_PH.Text  := Ini.ReadString( 'Param', 'PH', '500' );
    LEdit_OFFX.Text  := Ini.ReadString( 'Param', 'OFFX', '0' );
    LEdit_OFFY.Text  := Ini.ReadString( 'Param', 'OFFY', '0' );

    Edit_FN.Text  := Ini.ReadString( 'Param', 'FN', '' );
    Edit_ST.Text :=  Ini.ReadString( 'Param', 'Slice_ST', '0' );
    Edit_End.Text :=  Ini.ReadString( 'Param', 'Slice_End', '0' );
    RG_Format.ItemIndex :=Ini.ReadInteger( 'Param', 'Image_Format', 0 );

    UD_Load_ST.Position :=Ini.ReadInteger( 'Param', 'Load_ST', 0 );
    CB_Log.Checked := Ini.ReadBool('Param', 'Log', false );
  finally
    Ini.Free;
  end;
end;

procedure TForm_main.FormDestroy(Sender: TObject);
var
   Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_main', 'Top', Top);
    Ini.WriteInteger( 'Form_main', 'Left', Left);
    Ini.WriteInteger( 'Form_main', 'Width', Width );
    Ini.WriteInteger( 'Form_main', 'Height', Height );

    Ini.WriteString( 'Param', 'Tag_Dir', Edit_Dir.Text );

    Ini.WriteString( 'Param', 'OW', LEdit_OW.Text );
    Ini.WriteString( 'Param', 'OH', LEdit_OH.Text );
    Ini.WriteString( 'Param', 'PW', LEdit_PW.Text );
    Ini.WriteString( 'Param', 'PH', LEdit_PH.Text );
    Ini.WriteString( 'Param', 'OFFX', LEdit_OFFX.Text );
    Ini.WriteString( 'Param', 'OFFY', LEdit_OFFY.Text );

    Ini.WriteString( 'Param', 'FN', Edit_FN.Text );
    Ini.WriteString( 'Param', 'Slice_ST', Edit_ST.Text );
    Ini.WriteString( 'Param', 'Slice_End', Edit_End.Text );
    Ini.WriteInteger( 'Param', 'Image_Format', RG_Format.ItemIndex );
    Ini.WriteInteger( 'Param', 'Load_ST', UD_Load_ST.Position );
    Ini.WriteBool('Param', 'Log', CB_Log.Checked );
  finally
    Ini.Free;
  end;
end;

procedure TForm_main.SB_DirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit_Dir.Text := ExtractFilePath(OpenDialog1.FileName);
    if Edit_Dir.Text<>'' then
      SB_TagList_ReloadClick(Sender);
  end;
end;

procedure TForm_main.SB_TagList_ReloadClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if Edit_Dir.Text<>'' then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(Edit_Dir.Text);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

procedure TForm_main.SB_FOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_FN.Text := OpenDialog1.FileName;
end;

procedure TForm_main.SB_HelpClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm_main.SB_SKS_EditorClick(Sender: TObject);
begin
  if CLB_File.ItemIndex>=0 then
  begin
    Form_SAKAS.Tag_FN := CLB_File.Items[CLB_File.ItemIndex];
    if Form_SAKAS.Tag_FN<>'' then
      Form_SAKAS.Load_Karte(Form_SAKAS.Tag_FN,Sender);
    Form_SAKAS.Show;
  end;
end;


procedure TForm_main.Read_Proc_Cond(Proc_N: byte; IniF: TIniFile;
  Sender: TObject);
var
  lFN, OFN,  CFN, FileToFind, lStr : string;
  LDirList : TStringDynArray;
  li : longint;
begin
  Edit_ImgN.Text :=  IniF.ReadString( 'Proc_'+Proc_N.ToString, 'Image_Num', '');
  Edit_ST.Text :=  IniF.ReadString( 'Proc_'+Proc_N.ToString, 'ST', '0');
  Edit_End.Text :=  IniF.ReadString( 'Proc_'+Proc_N.ToString, 'End', '');
  RG_Format.ItemIndex := IniF.ReadInteger( 'Proc_'+Proc_N.ToString, 'Format', 1);
  Label_Method_Name.Caption := IniF.ReadString('Proc_'+Proc_N.ToString, 'Method', '');

  if Edit_End.Text ='' then
    Edit_End.Text := (StrToInt(Edit_ImgN.Text)-1).ToString;
  if Edit_ImgN.Text ='' then
    Edit_ImgN.Text := (StrToInt(Edit_End.Text)-StrToInt(Edit_ST.Text)+1).ToString;

  LEdit_OW.Text := IntToStr(IniF.ReadInteger( 'Proc_'+Proc_N.ToString, 'Width', 2048));
  LEdit_OH.Text := IntToStr(IniF.ReadInteger( 'Proc_'+Proc_N.ToString, 'Height', 2048));
  LEdit_PW.Text := LEdit_OW.Text;
  LEdit_PH.Text := LEdit_OH.Text;
  LEdit_OFFX.Text := '0';
  LEdit_OFFY.Text := '0';

  UD_Load_ST.Max := StrToInt(Edit_End.Text);
  UD_Load_ST.Min := StrToInt(Edit_ST.Text);
  UD_Load_ST.Position :=UD_Load_ST.Min;

  OFN := IniF.ReadString( 'Proc_'+Proc_N.ToString, 'File_Name', '');

  if CB_AutoDir.Checked then
  begin
    //ファイルパス検索用に実ファイル名を作成
    if UD_Dig.Position<>0 then
      lFN := ReplaceStr(OFN,'*',Copy((100000+StrToInt(Edit_ST.Text)).ToString,6-UD_Dig.Position,UD_Dig.Position))
    else
      lFN := ReplaceStr(OFN,'*',Edit_ST.Text);
    CFN := lFN;
    FileToFind := FileSearch(lFN, GetCurrentDir);
    if FileToFind='' then
    begin
      lStr := ExtractFileDir(TagFN);
      if Copy(lStr,Length(lStr),1)<>'\' then
        lStr := lStr+'\';
      lFN := lStr + ExtractFileName(lFN);
      FileToFind := FileSearch(lFN, GetCurrentDir);
      if FileToFind<>'' then
        OFN := lFN
      else
      begin
        if TDirectory.Exists(ChangeFileExt(TagFN, '')+'_cal') then
        begin
          LDirList := TDirectory.GetDirectories(ChangeFileExt(TagFN, '')+'_cal');
          OFN := 'Files NOT found';
          for li:=0 to Length(LDirList)-1 do
          begin
            lFN := LDirList[li]+'\'+ExtractFileName(CFN);
            FileToFind := FileSearch(lFN, GetCurrentDir);
            if FileToFind<>'' then
              OFN :=  ExtractFileDir(FileToFind)+'\'+ExtractFileName(IniF.ReadString( 'Proc_'+Proc_N.ToString, 'File_Name', ''));
          end;
        end
        else
        begin
          Edit_FN.Text := 'Files NOT found';
          exit;
        end;
      end;
      Edit_FN.Text := OFN;
    end
    else
    if Pos('*',OFN)<>0 then
      Edit_FN.Text := ExtractFileDir(FileToFind)+'\'+ExtractFileName(OFN)
    else
      Edit_FN.Text := OFN;
  end
  else
    Edit_FN.Text := OFN;
end;

procedure TForm_main.OpenTag(Sender: TObject);
var
  k:byte;
  PreIndex: SmallInt;
  Ini: TIniFile;
begin
  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    Ini := TIniFile.Create(TagFN);

    try
      Label_Sample_Name.Caption :=Ini.ReadString( 'Sample', 'Name', '');

      k:=1;
      PreIndex := CB_Proc.ItemIndex;
      CB_Proc.Items.Clear;
      repeat
        if Ini.SectionExists('Proc_'+k.ToString) then
          CB_Proc.Items.Add('Proc_'+k.ToString);
        Inc(k);
      until k>50;

      if PreIndex = -1 then PreIndex :=0;
      if PreIndex <= CB_Proc.Items.Count-1 then
        CB_Proc.ItemIndex := PreIndex
      else
        CB_Proc.ItemIndex :=0;

      if CB_Proc.ItemIndex >= 0 then
        Read_Proc_Cond(CB_Proc.ItemIndex+1,Ini,Sender);
    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_main.CB_ProcChange(Sender: TObject);
var
  Ini: TIniFile;
begin
  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    Ini := TIniFile.Create(TagFN);

    try
      if CB_Proc.ItemIndex >= 0 then
        Read_Proc_Cond(CB_Proc.ItemIndex+1,Ini,Sender);

    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_main.CLB_FileClick(Sender: TObject);
begin
  TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
  OpenTag(Sender);
  if Form_SAKAS.Showing then
    SB_SKS_EditorClick(Sender);
end;



procedure TForm_main.SB_OpenClick(Sender: TObject);
var
  TPW : longint;
  lFN : string;
begin
  lFN := Edit_FN.Text;

  if lFN='' then
    exit;

  if UD_Dig.Position<>0 then
    lFN := ReplaceStr(lFN,'*',Copy((100000+UD_Load_ST.Position).ToString,6-UD_Dig.Position,UD_Dig.Position))
  else
    lFN := ReplaceStr(lFN,'*',UD_Load_ST.Position.ToString);

  if not(FileExists(lFN)) then
  begin
    ShowMessage('File NOT found!');
    exit;
  end;

  SetLength(PW,CLB_PW.Items.Count+1);
  CLB_PW.Items.Add((CLB_PW.Items.Count+1).ToString+': '+lFN);
  CLB_PW.ItemIndex := CLB_PW.Items.Count-1;

  TPW := CLB_PW.ItemIndex;
  PW[TPW] := TForm_PW.Create(Self);
  PW[TPW].CB_Log.Checked := CB_Log.Checked;

  PW[TPW].FN := Edit_FN.Text;
  PW[TPW].FN_Digit := UD_Dig.Position;
  PW[TPW].FN_ExtStr := Edit_Ext.Text;
  PW[TPW].FileType := RG_Format.ItemIndex;
  PW[TPW].Proc_N := CB_Proc.ItemIndex;
  PW[TPW].Sample_Name := Label_Sample_Name.Caption;
  PW[TPW].Method_Name := Label_Method_Name.Caption;

  PW[TPW].PX := StrToInt(LEdit_PW.Text);
  PW[TPW].PY := StrToInt(LEdit_PH.Text);
  PW[TPW].STZ := StrToInt(Edit_ST.Text);
  PW[TPW].EndZ := StrToInt(Edit_End.Text);

  PW[TPW].PZ := PW[TPW].ENDZ-PW[TPW].STZ+1;
  PW[TPW].Caption := PW[TPW].FN;
  PW[TPW].Init_PW(Sender);

  PW[TPW].UD_Show_ImgNo.Position := UD_Load_ST.Position;
  PW[TPW].UD_TB_Img_No.Position := UD_Load_ST.Position;
  PW[TPW].TB_Img_No.Position := UD_Load_ST.Position;
  PW[TPW].Load_Data(UD_Load_ST.Position, Sender);

  PW[TPW].CB_Reset(Sender);
  PW[TPW].LUT_Reset(Sender);
  PW[TPW].Draw_Data(Sender);
  PW[TPW].Disp_Info(Sender);

  PW[TPW].Edit_Tr_ST.Text := PW[TPW].STZ.ToString;
  PW[TPW].Edit_Tr_End.Text := PW[TPW].EndZ.ToString;
  PW[TPW].Edit_Fil_ST.Text := PW[TPW].STZ.ToString;
  PW[TPW].Edit_Fil_End.Text := PW[TPW].EndZ.ToString;
  PW[TPW].Edit_FFT_ST.Text := PW[TPW].STZ.ToString;
  PW[TPW].Edit_FFT_End.Text := PW[TPW].EndZ.ToString;
  PW[TPW].Edit_Ana_ST.Text := PW[TPW].STZ.ToString;
  PW[TPW].Edit_Ana_End.Text := PW[TPW].EndZ.ToString;

  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    PW[TPW].DCM_SAKAS_Import(TagFN, Sender);
    PW[TPW].SV2DCM(Sender);
    PW[TPW].FDCM.ReConv_Data;
    PW[TPW].FDCM.Disp_Data(Sender);
  end;
  PW[TPW].Edit_DCM_ST.Text:= PW[TPW].STZ.ToString;
  PW[TPW].Edit_DCM_End.Text := PW[TPW].EndZ.ToString;

  PW[TPW].Booting := false;
  PW[TPW].Show;
end;

procedure TForm_main.SB_Img_RegClick(Sender: TObject);
begin
  Form_Regist.Show;
end;

procedure TForm_main.SB_Img_SegClick(Sender: TObject);
begin
  Form_Seg.Show;
end;

procedure TForm_main.LB_PWClick(Sender: TObject);
var
  TPW : longint;
begin
  TPW := CLB_PW.ItemIndex;
  PW[TPW].Show;
end;

end.
