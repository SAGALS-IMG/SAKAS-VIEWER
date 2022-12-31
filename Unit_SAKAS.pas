unit Unit_SAKAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, IniFiles, JvExControls, JvEditorCommon, JvEditor, JvHLEditor;

type
  TForm_SAKAS = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Label_FN: TLabel;
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_SaveAs: TBitBtn;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet0: TTabSheet;
    Panel6: TPanel;
    Memo_Sample: TRichEdit;
    Panel10: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Edit_Temp: TEdit;
    Edit_SStatus: TEdit;
    Edit_SPart: TEdit;
    Edit_SName: TEdit;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label38: TLabel;
    CB_SR: TComboBox;
    Edit_BL: TEdit;
    Edit_Date: TEdit;
    Edit_Time: TEdit;
    Edit_Energy: TEdit;
    CB_Crystal: TComboBox;
    Edit_TC3_W: TEdit;
    Edit_TC2_W: TEdit;
    Edit_TC1_W: TEdit;
    Edit_TC1_H: TEdit;
    Edit_TC2_H: TEdit;
    Edit_TC3_H: TEdit;
    Edit_Amp: TEdit;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit_Imager: TEdit;
    Edit_Image_Mag: TEdit;
    Edit_Exp_T: TEdit;
    LEdit_OFFX: TLabeledEdit;
    LEdit_OFFY: TLabeledEdit;
    LEdit_OW: TLabeledEdit;
    LEdit_PW: TLabeledEdit;
    LEdit_PH: TLabeledEdit;
    LEdit_OH: TLabeledEdit;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    Edit_BKEXP_T: TEdit;
    Edit_Pixel_Size: TEdit;
    Edit_BINX: TEdit;
    Edit_BINY: TEdit;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    Label34: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    SB_RFN: TSpeedButton;
    CB_Method: TComboBox;
    LEdit_Pro: TLabeledEdit;
    CB_Rot: TComboBox;
    CB_Rot_Mode: TComboBox;
    Edit_FN_Rotdata: TEdit;
    LEdit_FSN: TLabeledEdit;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    SB_FN: TSpeedButton;
    SB_BKFN1: TSpeedButton;
    SB_BKFN2: TSpeedButton;
    SB_OFFFN: TSpeedButton;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CB_Fromat: TComboBox;
    Edit_FN: TEdit;
    Edit_FNBK1: TEdit;
    Edit_FNBK2: TEdit;
    Edit_FNOFF: TEdit;
    Edit_OFFN: TEdit;
    Edit_ImgN: TEdit;
    Edit_BKN: TEdit;
    Edit_BKInt: TEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    CB_Edit: TCheckBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    JvHLEditor: TJvHLEditor;
    Label41: TLabel;
    Label42: TLabel;
    Rot_Memo: TMemo;
    BB_Load: TBitBtn;
    Label43: TLabel;
    Edit_Sci: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure Load_Karte(FN: string; Sender: TObject);
    procedure Save_Karte(FN: string; Sender: TObject);
    procedure Add_Str(FN:string;Section,Key,Data:string;Sender:TObject);

    procedure SB_FNClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_SaveAsClick(Sender: TObject);
    procedure CB_EditClick(Sender: TObject);
    procedure BB_LoadClick(Sender: TObject);


  private
    { Private �錾 }
  public
    { Public �錾 }
    Tag_FN : string;
  end;

var
  Form_SAKAS: TForm_SAKAS;
implementation

{$R *.dfm}

procedure TForm_SAKAS.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_SAKAS', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_SAKAS', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_SAKAS', 'Width', 600 );
    Height  := Ini.ReadInteger( 'Form_SAKAS', 'Height', 555 );
    if Ini.ReadBool( 'Form_SAKAS', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;
  finally
    Ini.Free;
  end;

  JvHLEditor.Lines.Clear;
  JvHLEditor.ReadOnly := true;
  JvHLEditor.Modified := false;

//  Load_Karte(ChangeFileExt( Application.ExeName, '.INI' ),Sender);
  PageControl1.TabIndex := 0;
end;

procedure TForm_SAKAS.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_SAKAS', 'Top', Top);
    Ini.WriteInteger( 'Form_SAKAS', 'Left', Left);
    Ini.WriteInteger( 'Form_SAKAS', 'Width', Width );
    Ini.WriteInteger( 'Form_SAKAS', 'Height', Height );
    Ini.WriteBool( 'Form_SAKAS', 'InitMax', WindowState = wsMaximized );
  finally
    Ini.Free;
  end;
//  Save_Karte(ChangeFileExt( Application.ExeName, '.INI' ),Sender);
end;

procedure TForm_SAKAS.Load_Karte(FN: string; Sender: TObject);
var
  Ini: TIniFile;
  TmpStr : string;
begin
  Label_FN.Caption := Tag_FN;
  Ini := TIniFile.Create(FN);
  try
    //Sample
    Edit_SName.Text := Ini.ReadString('Sample','Name','');
    Edit_SPart.Text := Ini.ReadString('Sample','Part','');
    Edit_SStatus.Text := Ini.ReadString('Sample','Status','');
    Edit_Temp.Text := Ini.ReadString('Sample','Temp','');
    Memo_Sample.Text := Ini.ReadString('Sample','Memo','');

    //BL Condition
    Edit_Date.Text :=Ini.ReadString('BL_Cond','Date','');
    Edit_Time.Text :=Ini.ReadString('BL_Cond','Start_Time','');

    TmpStr := Ini.ReadString('BL_Cond','SR_Facility','');
    if TmpStr ='SAGA_LS' then
      CB_SR.ItemIndex := 0
    else
      if TmpStr = 'KEK PF' then
        CB_SR.ItemIndex := 1
      else
        if TmpStr = 'KEK PF AR' then
          CB_SR.ItemIndex := 2
        else
          if TmpStr = 'SPring-8' then
            CB_SR.ItemIndex := 3
          else
            if TmpStr = 'Lab.' then
              CB_SR.ItemIndex := 4
            else
              CB_SR.ItemIndex := -1;

    Edit_Amp.Text := Ini.ReadString('BL_Cond', 'Ampere', '');
    Edit_BL.Text := Ini.ReadString( 'BL_Cond', 'BL', 'BL07');
    Edit_Energy.Text := FloatToStr(Ini.ReadFloat( 'BL_Cond', 'Energy', 10.0));

    TmpStr := Ini.ReadString('BL_Cond','Mono','');

    if TmpStr ='Si(111)' then
      CB_Crystal.ItemIndex := 0
    else
      if TmpStr = 'Si(220)' then
        CB_Crystal.ItemIndex := 1
      else
        if TmpStr = 'Si(311)' then
          CB_Crystal.ItemIndex := 2
        else
          if TmpStr = 'Ge(111)' then
            CB_Crystal.ItemIndex := 3
          else
            if TmpStr = 'Metal filter' then
              CB_Crystal.ItemIndex := 4
            else
              CB_Crystal.ItemIndex := 5;

    Edit_TC1_W.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC1_W',10));
    Edit_TC2_W.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC2_W',10));
    Edit_TC3_W.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC3_W',10));
    Edit_TC1_H.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC1_H',1));
    Edit_TC2_H.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC2_H',1));
    Edit_TC3_H.Text := FloatToStr(Ini.ReadFloat('BL_Cond','TC3_H',1));

    //Imager
    Edit_Imager.Text := Ini.ReadString( 'Imager', 'Name', '');
    Edit_Pixel_Size.Text := Ini.ReadString( 'Imager', 'Pixel_Size', '');

    Edit_Image_Mag.Text := FloatToStr(Ini.ReadFloat('Imager','Mag',1.0));
    Edit_Sci.Text :=Ini.ReadString('Imager','Scinti','CsI');

    Edit_Exp_T.Text := FloatToStr(Ini.ReadFloat('Imager','Exp_T',1000));
    Edit_BKEXP_T.Text := FloatToStr(Ini.ReadFloat('Imager','BK_Exp_T',1000));

    Edit_BINX.Text := IntToStr(Ini.ReadInteger( 'Imager', 'BINX', 1));
    Edit_BINY.Text := IntToStr(Ini.ReadInteger( 'Imager', 'BINY', 1));

    LEdit_OW.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Camera_Width', 2048));
    LEdit_OH.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Camera_Height', 2048));
    LEdit_PW.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Image_Width', 2048));
    LEdit_PH.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Image_Height', 2048));
    LEdit_OFFX.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Image_Offset_X', 0));
    LEdit_OFFY.Text := IntToStr(Ini.ReadInteger( 'Imager', 'Image_Offset_Y', 0));

    //Method
    LEdit_Pro.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 1000));
    if Ini.ReadInteger('Method','Pro_angle',180) = 0 then
      CB_Rot.ItemIndex :=0
    else
      CB_Rot.ItemIndex :=1;
    CB_Rot_Mode.ItemIndex := Ini.ReadInteger('Method','Step_Mode',1);
    Edit_FN_Rotdata.Text :=  Ini.ReadString('Method','Rotdata_File_Name','');
    LEdit_FSN.Text :=  Ini.ReadString('Method','FS_Number','');

    //Created_Data
    Edit_FN.Text := Ini.ReadString('Proc_1','File_Name','');
    Edit_ImgN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Image_Num', 1050));
    CB_Fromat.ItemIndex := Ini.ReadInteger('Proc_1','Format',1);
    Edit_BKInt.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Interval', 1050));

    Edit_FNBK1.Text := Ini.ReadString('Proc_1','BK1_File_Name','');
    Edit_FNBK2.Text := Ini.ReadString('Proc_1','BK2_File_Name','');
    Edit_BKN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Image_Num', 100));

    Edit_FNOff.Text := Ini.ReadString('Proc_1','Off_File_Name','');
    Edit_OffN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Off_Image_Num', 100));
  finally
    Ini.Free;
  end;
  //Memo.Lines.LoadFromFile(Tag_FN);
  if Tag_FN<>'' then
    JvHLEditor.Lines.LoadFromFile(Tag_FN);
end;

procedure TForm_SAKAS.Save_Karte(FN: string; Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FN);
  try
    //Sample
    Ini.WriteString('Sample','Name',Edit_SName.Text);
    Ini.WriteString('Sample','Part',Edit_SPart.Text);
    Ini.WriteString('Sample','Status',Edit_SStatus.Text);
    Ini.WriteString('Sample','Temp',Edit_Temp.Text);
    Ini.WriteString('Sample','Memo',Memo_Sample.Text);

    //BL_Condition
    Ini.WriteString('BL_Cond', 'Date', Edit_Date.Text);
    Ini.WriteString( 'BL_Cond', 'Start_Time', Edit_Time.Text);
    case CB_SR.ItemIndex of
      0: Ini.WriteString('BL_Cond','SR_Facility','SAGA LS');
      1: Ini.WriteString('BL_Cond','SR_Facility','KEK PF');
      2: Ini.WriteString('BL_Cond','SR_Facility','KEK PF AR');
      3: Ini.WriteString('BL_Cond','SR_Facility','SPring-8');
      4: Ini.WriteString('BL_Cond','SR_Facility','Lab.');
    end;
    Ini.WriteString('BL_Cond', 'Ampere', Edit_Amp.Text);
    Ini.WriteString('BL_Cond', 'BL', Edit_BL.Text);
    Ini.WriteFloat( 'BL_Cond', 'Energy', StrToFloat(Edit_Energy.Text));
    case CB_Crystal.ItemIndex of
      0:Ini.WriteString('BL_Cond','Mono','Si(111)');
      1:Ini.WriteString('BL_Cond','Mono','Si(220)');
      2:Ini.WriteString('BL_Cond','Mono','Si(311)');
      3:Ini.WriteString('BL_Cond','Mono','Ge(111)');
      4:Ini.WriteString('BL_Cond','Mono','Metal filter');
      5:Ini.WriteString('BL_Cond','Mono','non');
    end;

    Ini.WriteFloat('BL_Cond','TC1_W',StrToFloat(Edit_TC1_W.Text));
    Ini.WriteFloat('BL_Cond','TC2_W',StrToFloat(Edit_TC2_W.Text));
    Ini.WriteFloat('BL_Cond','TC3_W',StrToFloat(Edit_TC3_W.Text));
    Ini.WriteFloat('BL_Cond','TC1_H',StrToFloat(Edit_TC1_H.Text));
    Ini.WriteFloat('BL_Cond','TC2_H',StrToFloat(Edit_TC2_H.Text));
    Ini.WriteFloat('BL_Cond','TC3_H',StrToFloat(Edit_TC3_H.Text));

    //Imager
    Ini.WriteString( 'Imager', 'Name', Edit_Imager.Text);
    Ini.WriteString( 'Imager', 'Pixel_Size', Edit_Pixel_Size.Text);
    Ini.WriteFloat('Imager','Mag',StrToFloat(Edit_Image_Mag.Text));
    Ini.WriteString('Imager','Scinti',Edit_Sci.Text);
    Ini.WriteFloat('Imager','Exp_T',StrToFloat(Edit_Exp_T.Text));
    Ini.WriteFloat('Imager','BK_Exp_T',StrToFloat(Edit_BKExp_T.Text));

    Ini.WriteInteger( 'Imager', 'BINX', StrToInt(Edit_BINX.Text));
    Ini.WriteInteger( 'Imager', 'BINY', StrToInt(Edit_BINY.Text));

    Ini.WriteInteger( 'Imager', 'Camera_Width', StrToInt(LEdit_OW.Text));
    Ini.WriteInteger( 'Imager', 'Camera_Height', StrToInt(LEdit_OH.Text));
    Ini.WriteInteger( 'Imager', 'Image_Width', StrToInt(LEdit_PW.Text));
    Ini.WriteInteger( 'Imager', 'Image_Height', StrToInt(LEdit_PH.Text));
    Ini.WriteInteger( 'Imager', 'Image_Offset_X', StrToInt(LEdit_OffX.Text));
    Ini.WriteInteger( 'Imager', 'Image_Offset_Y', StrToInt(LEdit_OffY.Text));

    //Method
    case CB_Method.ItemIndex of
      0: Ini.WriteString( 'Method', 'Method', 'CT');
      1: Ini.WriteString( 'Method', 'Method', 'FS_CT');
      2: Ini.WriteString( 'Method', 'Method', 'DEI');
    end;
    Ini.WriteInteger('Method', 'Pro_Num', StrToInt(LEdit_Pro.Text));
    if CB_Rot.ItemIndex=0 then
      Ini.WriteInteger('Method','Pro_angle',180)
    else
      Ini.WriteInteger('Method','Pro_angle',360);
    Ini.WriteInteger('Method','Step_Mode',CB_Rot_Mode.ItemIndex);
    Ini.WriteString('Method','Rotdata_File_Name',Edit_FN_Rotdata.Text);
    Ini.WriteString('Method','FS_Num',LEdit_FSN.Text);

    //Created_Data
    Ini.WriteString('Proc_1','File_Name',Edit_FN.Text);
    Ini.WriteInteger('Proc_1', 'Width', StrToInt(LEdit_PW.Text));
    Ini.WriteInteger('Proc_1', 'Height', StrToInt(LEdit_PH.Text));
    Ini.WriteInteger('Proc_1', 'Image_Num', StrToInt(Edit_ImgN.Text));
    Ini.WriteInteger('Proc_1', 'Format',CB_Fromat.ItemIndex);
    Ini.WriteInteger('Proc_1', 'BK_Interval', StrToInt(Edit_BKInt.Text));

    Ini.WriteString('Proc_1','BK1_File_Name',Edit_FNBK1.Text);
    Ini.WriteString('Proc_1','BK2_File_Name',Edit_FNBK2.Text);
    Ini.WriteInteger('Proc_1', 'BK_Image_Num', StrToInt(Edit_BKN.Text));

    Ini.WriteString('Proc_1','Off_File_Name',Edit_FNOff.Text);
    Ini.WriteInteger('Proc_1', 'Off_Image_Num', StrToInt(Edit_OffN.Text));

  finally
    Ini.Free;
  end;
end;

procedure TForm_SAKAS.SB_FNClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    case TSpeedButton(Sender).Tag of
      100 : Edit_FN.Text := OpenDialog1.FileName;
      101 : Edit_FNBK1.Text := OpenDialog1.FileName;
      102 : Edit_FNBK2.Text := OpenDialog1.FileName;
      103 : Edit_FNOFF.Text := OpenDialog1.FileName;
      105 : Edit_FN_Rotdata.Text := OpenDialog1.FileName;
    end;
  end;
end;

procedure TForm_SAKAS.BB_SaveClick(Sender: TObject);
begin
  if Tag_FN='' then
  begin
    BB_SaveAsClick(Sender);
  end
  else
  begin
    if CB_Edit.Checked then
    begin
      if MessageDlg('Save Memo as Tag?',mtConfirmation, [mbOk], 0, mbOk) = mrOK then
      begin
        JvHLEditor.Lines.SaveToFile(Tag_FN);
        Load_Karte(Tag_FN,Sender);
      end;
    end
    else
    begin
      Save_Karte(Tag_FN,Sender);
      JvHLEditor.Lines.LoadFromFile(Tag_FN);
    end;
  end;
  JvHLEditor.Modified := false;
end;

procedure TForm_SAKAS.Add_Str(FN, Section, Key, Data: string; Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FN);
  try
    Ini.WriteString(Section,Key,Data);
  finally
    Ini.Free;
  end;
end;

procedure TForm_SAKAS.BB_LoadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Tag_FN := OpenDialog1.FileName;
    Label_FN.Caption := Tag_FN;
    Load_Karte(Tag_FN,Sender);
    JvHLEditor.Lines.LoadFromFile(Tag_FN);
    JvHLEditor.Modified := false;
  end;
end;

procedure TForm_SAKAS.BB_SaveAsClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    Tag_FN := ChangeFileExt(SaveDialog1.FileName, '.tag' );
    if FileExists(Tag_FN) then
    begin
      if MessageDlg('File already exists, ReWrite?',mtConfirmation, [mbYes, mbCancel], 0, mbCancel)=mrCancel then
        exit;
      DeleteFile(Tag_FN);
    end;
    Label_FN.Caption := Tag_FN;

    if CB_Edit.Checked then
    begin
      JvHLEditor.Lines.SaveToFile(Tag_FN);
      Load_Karte(Tag_FN,Sender);
    end
    else
    begin
      Save_Karte(Tag_FN,Sender);
      JvHLEditor.Lines.LoadFromFile(Tag_FN);
    end;
  end;

end;

procedure TForm_SAKAS.CB_EditClick(Sender: TObject);
begin
  if CB_Edit.Checked then
    JvHLEditor.ReadOnly := false
  else
    JvHLEditor.ReadOnly := true;
end;



end.
