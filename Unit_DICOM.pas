unit Unit_DICOM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.ExtCtrls, Math,
  Vcl.Buttons;

type
  TDCMData = record
    Group_Tag : Smallint	;
    Element_Tag : Smallint	;
    Length : Longint	;
    Data : string;
    Name : string;
    VR : string;
    Str : boolean;
  end;
  TCodeString = record
    Code : WORD;
    Str : string
  end;
  TCodeWORD = record
    Code : WORD;
    cWORD : WORD;
  end;
  TCodeDouble = record
    Code : WORD;
    cDbl : double;
  end;

  TForm_DICOM = class(TForm)
    StatusBar1: TStatusBar;
    SG: TStringGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    SG_B: TStringGrid;
    Panel3: TPanel;
    SB_DCM_Update: TSpeedButton;
    SB_DCM_Redraw: TSpeedButton;

    procedure FormCreate(Sender: TObject);

    procedure Disp_Data(Sender: TObject);
    procedure Get_Data(FN:string);

    procedure ReConv_Data;

    procedure Save_Data(FN:string;ImgSave:boolean);

    function Get_Group_Length(Group_ID:byte):longint;
    function Make_UID(UID_Len:longint):string;
    procedure SB_DCM_RedrawClick(Sender: TObject);
    procedure SB_DCM_UpdateClick(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
    OData :array[0..50000] of byte;
    ODN : longint;

    DCMData : array[0..500] of TDCMData;
    DataNum : longint;

    ImgData : array[0..4100,0..4100] of SmallInt;

    FileName : string;

    Patient_Name : TCodeString;
    Patient_ID   : TCodeString;
    Patient_Sex  : TCodeString;
    Patient_Age  : TCodeString;

    Study_Date : TCodeString;
    Series_Date : TCodeString;
    Acq_Date : TCodeString;
    Img_Date : TCodeString;
    Study_Time : TCodeString;
    Series_Time : TCodeString;
    Acq_Time : TCodeString;
    Img_Time : TCodeString;
    Study_ID   : TCodeString;

    MSSOP_UID,SOP_UID, Stu_UID, Ser_UID : TCodeString;

    Modality : TCodeString  ;
    Manufacturer:TCodeString;
    Model_Name : TCodeString;
    Device_SN : TCodeString;

    Width, Height, Slice_No : TCodeWORD;
    BIT_Sored, Bit_Allocated, High_Bit : TCodeWORD;

    Slice_Loc : TCodeString;
    Study_Part : TCodeString;

    Img_Pos : TCodeString;
    Img_Pos_X,Img_Pos_Y,Img_Pos_Z : double;

    Pixel : TCodeString;
    Pixel_X, Pixel_Y : double;
    Pixel_Z : TCodeDouble;

    ExposureT : TCodeDouble;
    Diameter : TCodeDouble;
    Energy : TCodeDouble;
  end;


var
  Form_DCM: TForm_DICOM;
implementation

{$R *.dfm}

procedure TForm_DICOM.FormCreate(Sender: TObject);
var
  i:longint;
begin
  SG.ColWidths[0] := 60;
  SG.ColWidths[1] := 60;
  SG.ColWidths[2] := 40;
  SG.ColWidths[3] := 30;
  SG.ColWidths[4] := 30;
  SG.ColWidths[5] := 200;
  SG.ColWidths[6] := SG.Width-450;
  SG.Cells[0,0] := 'Element';
  SG.Cells[1,0] := 'Group';
  SG.Cells[2,0] := 'VR';
  SG.Cells[3,0] := 'Typ';
  SG.Cells[4,0] := 'Len';
  SG.Cells[5,0] := 'Name';
  SG.Cells[6,0] := 'Data';


  SG_B.ColWidths[0] := 40;
  SG_B.ColWidths[17] := SG_B.Width-30*17-50;
  for i:=0 to 15 do
    SG_B.Cells[i+1,0]:=  IntToHex(i,2);
end;


procedure TForm_DICOM.Disp_Data(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to ((ODN-1) div 16+1) do
    SG_B.Cells[0,li+1] := IntToHEX(li,4);

  for li:=0 to ODN-1 do
  begin
    SG_B.Cells[(li mod 16)+1,(li div 16)+1] := IntToHex(OData[li],2);
    if (li mod 16)=0 then
      SG_B.Cells[17,(li div 16)+1] := Char(OData[li])
    else
      SG_B.Cells[17,(li div 16)+1] := SG_B.Cells[17,(li div 16)+1]+Char(OData[li]);
  end;

  for li:=0 to DataNum do
  begin
    SG.Cells[0,li+1] := IntToHex(DCMData[li].Group_Tag,4);
    SG.Cells[1,li+1] := IntToHex(DCMData[li].Element_Tag,4);
    SG.Cells[2,li+1] := DCMData[li].VR;
    if DCMData[li].Str then
      SG.Cells[3,li+1] := 'Chr'
    else
      SG.Cells[3,li+1] := 'Bin';

    SG.Cells[4,li+1] := DCMData[li].Length.ToString;
    SG.Cells[5,li+1] := DCMData[li].Name;
    SG.Cells[6,li+1] := DCMData[li].Data;
  end;
end;

procedure TForm_DICOM.Get_Data(FN: string);
var
  i, TmpInt:longint;
  FS: TFileStream;
  Buf: array[0..4096] of byte	;
  TmpStr, OrigStr : string;
begin
  //BINARY表示
  FileName := FN;
  i:=0;
  FS := TFileStream.Create(FN, fmOpenRead);
  repeat
    FS.ReadBuffer(OData[i],1);
    Inc(i);
  until (((OData[i-1])=$7F) and ((OData[i-2])=$E0)) or (i>10000);
  ODN := FS.Position+4;
  FS.Free;
//  if ODN>10000 then
//  begin
//    exit;
//  end;


  //ヘッダーの余白読み飛ばし
  FS := TFileStream.Create(FN, fmOpenRead);
  repeat
    FS.Read(Buf,4);
  until ((Buf[0] = $44) and (Buf[1] = $49) and (Buf[2] = $43) and (Buf[3] = $4D));

  DataNum := 0;

  //File Meta elements Group Len
  repeat
    FS.Read(Buf,4);
    DCMData[DataNum].Group_Tag := Buf[1]*256+Buf[0];
    DCMData[DataNum].Element_Tag :=Buf[3]*256+Buf[2];

    FS.Read(Buf,4);
    if ((Buf[0] >42) and (Buf[0]<127)) and (((Buf[1] >42) and (Buf[1]<127)) or (Buf[1]=32)) then
    begin
      DCMData[DataNum].VR := Chr(Buf[0])+Chr(Buf[1]);
      DCMData[DataNum].Length := Buf[2]+Buf[3]*256;
      if (DCMData[DataNum].Group_Tag=0002) and (DCMData[DataNum].Element_Tag=0001) then
        DCMData[DataNum].Length :=6;
    end
    else
    begin
      DCMData[DataNum].VR := '';
      DCMData[DataNum].Length := Buf[0]+Buf[1]*256+Buf[2]*256*256+Buf[3]*256*256*256;
    end;

    if DCMData[DataNum].Length<1024 then
    begin
      FS.Read(Buf,DCMData[DataNum].Length);

      if ((Buf[0] >42) and (Buf[0]<127)) and (((Buf[1] >42) and (Buf[1]<127)) or (Buf[1]=32)) then
      begin
        DCMData[DataNum].Str := true;
        DCMData[DataNum].Data :='';
        for i:=0 to DCMData[DataNum].Length-1 do
          DCMData[DataNum].Data := DCMData[DataNum].Data+Chr(Buf[i]);
      end
      else
      begin
        DCMData[DataNum].Str := false;
        TmpInt := 0;
        for i:=0 to DCMData[DataNum].Length-1 do
          if i<5 then
            TmpInt := TmpInt + Buf[i]*Round(Power(256,i));
        DCMData[DataNum].Data := IntToStr(TmpInt);
      end;
    end;

    {if (DCMData[DataNum].Group_Tag=$10) and (DCMData[DataNum].Element_Tag=$40) then
    begin
      Inc(DataNum);
      DCMData[DataNum].Group_Tag := $10;
      DCMData[DataNum].Element_Tag :=$1010;
      DCMData[DataNum].Data := '10M';
      DCMData[DataNum].Str := true;
      DCMData[DataNum].Length := Length(DCMData[DataNum].Data);
    end;}

    Inc(DataNum);
  until (DCMData[DataNum-1].Group_Tag = $7FE0);
  DataNum := DataNum-1;
  DCMData[DataNum].Data := DCMData[DataNum].Length.ToString;
  DCMData[DataNum].Length := 4;
  DCMData[DataNum].Name := 'Pixel data';

  FS.Free;

  //メタデータの分類
  for i:=0 to DataNum-1 do
  begin
    case DCMData[i].Group_Tag of
      $02 : case DCMData[i].Element_Tag of
            $00 : DCMData[i].Name := 'File Meta Elements Group Len';
            $01 : DCMData[i].Name := 'File Meta Info Version';
            $02 : DCMData[i].Name := 'Media Storage SOP Class UID';
            $03 : begin
                    DCMData[i].Name := 'Media Storage SOP Inst UID';
                    DCMData[i].Str := true;
                    MSSOP_UID.Code := i;
                    MSSOP_UID.Str := DCMData[i].Data;
                  end;
            $10 : DCMData[i].Name := 'Transfer Syntax UID';
            $12 : DCMData[i].Name := 'Implementation Class UID';
            $13 : DCMData[i].Name := 'Implementation Version Name';
            $16 : DCMData[i].Name := 'Source App Entity Title';
      end;

      $08 : case DCMData[i].Element_Tag of
            $00 : DCMData[i].Name := 'Identifying Group Length';
            $01 : DCMData[i].Name := 'Length to End';
            $05 : DCMData[i].Name := 'Specific Character Set';
            $08 : DCMData[i].Name := 'Image Type';
            $10 : DCMData[i].Name := 'Recognition Code';
            $12 : DCMData[i].Name := 'Instance Creation Date';
            $13 : DCMData[i].Name := 'Instance Creation Time';
            $14 : DCMData[i].Name := 'Instance Creator UID';
            $16 : DCMData[i].Name := 'SOP Class UID';
            $18 : begin
                    DCMData[i].Name := 'SOP Instance UID';
                    DCMData[i].Str := true;
                    SOP_UID.Str := DCMData[i].Data;
                    SOP_UID.Code := i;
                  end;
            $20 : begin
                    DCMData[i].Name := 'Study Date';
                    DCMData[i].Str := true;
                    Study_Date.Str := DCMData[i].Data;
                    Study_Date.Code := i;
                  end;
            $21 : begin
                    DCMData[i].Name := 'Series Date';
                    DCMData[i].Str := true;
                    Series_Date.Str := DCMData[i].Data;
                    Series_Date.Code := i;
                  end;
            $22 : begin
                    DCMData[i].Name := 'Acquisition Date';
                    DCMData[i].Str := true;
                    Acq_Date.Str := DCMData[i].Data;
                    Acq_Date.Code := i;
                  end;
            $23 : begin
                    DCMData[i].Name := 'Image Date';
                    DCMData[i].Str := true;
                    Img_Date.Str := DCMData[i].Data;
                    Img_Date.Code := i;
                  end;
            $30 : begin
                    DCMData[i].Name := 'Study Time';
                    DCMData[i].Str := true;
                    Study_Time.Str :=  DCMData[i].Data;
                    Study_Time.Code := i;
                  end;
            $31 : begin
                    DCMData[i].Name := 'Series Time';
                    DCMData[i].Str := true;
                    Series_Time.Str :=  DCMData[i].Data;
                    Series_Time.Code := i;
                  end;
            $32 : begin
                    DCMData[i].Name := 'Acquisition Time';
                    DCMData[i].Str := true;
                    Acq_Time.Str :=  DCMData[i].Data;
                    Acq_Time.Code := i;
                  end;
            $33 : begin
                    DCMData[i].Name := 'Image Time';
                    DCMData[i].Str := true;
                    Img_Time.Str :=  DCMData[i].Data;
                    Img_Time.Code := i;
                  end;
            $40 : DCMData[i].Name := 'Data Set Type';
            $41 : DCMData[i].Name := 'Data Set Subtype';
            $50 : DCMData[i].Name := 'Accession Number';
            $60 : begin
                    DCMData[i].Name := 'Modality';
                    DCMData[i].Str := true;
                    Modality.Str := DCMData[i].Data;
                    Modality.Code := i;
                  end;
            $64 : DCMData[i].Name := 'Conversion Type';
            $70 : begin
                    DCMData[i].Name := 'Manufacturer';
                    DCMData[i].Str := true;
                    Manufacturer.Str  := DCMData[i].Data;
                    Manufacturer.Code := i;
                  end;
            $80 : DCMData[i].Name := 'Institution Name';
            $81 : DCMData[i].Name := 'City Name';
            $90 : DCMData[i].Name := 'Referring Physician''s Name';
           $1010: DCMData[i].Name := 'Station Name';
           $1030: DCMData[i].Name := 'Study Description';
           $103e: DCMData[i].Name := 'Series Description';
           $1040: DCMData[i].Name := 'Institutional Dept. Name';
           $1050: DCMData[i].Name := 'Performing Physician''s Name';
           $1060: DCMData[i].Name := 'Name Phys(s) Read Study';
           $1070: DCMData[i].Name := 'Operator''s Name';
           $1080: DCMData[i].Name := 'Admitting Diagnosis Description';
           $1090: begin
                    DCMData[i].Name := 'Manufacturer''s Model Name';
                    DCMData[i].Str := true;
                    Model_Name.Str  := DCMData[i].Data;
                    Model_Name.Code := i;
                  end;
           $1140: DCMData[i].Name := 'Referenced Image Sequence';
           $2120: DCMData[i].Name := 'Stage Name';
           $2122: DCMData[i].Name := 'Stage Number';
           $2124: DCMData[i].Name := 'Number of Stages';
           $2128: DCMData[i].Name := 'View Number';
           $212A: DCMData[i].Name := 'Number of Views in stage';
           $2204: DCMData[i].Name := 'Transducer Orientation';
      end;

      $10 : case DCMData[i].Element_Tag of
            $00 : DCMData[i].Name := 'Patient Group Length';
            $10 : begin
                    DCMData[i].Name := 'Patient Name';
                    DCMData[i].Str := true;
                    Patient_Name.Str := DCMData[i].Data;
                    Patient_Name.Code := i;
                  end;
            $20 : begin
                    DCMData[i].Name := 'Patient ID';
                    DCMData[i].Str := true;
                    Patient_ID.Str := DCMData[i].Data;
                    Patient_ID.Code := i;
                  end;
            $30 : DCMData[i].Name := 'Patient Date of Birth';
            $40 : begin
                    DCMData[i].Name := 'Patient Sex';
                    DCMData[i].Str := true;
                    Patient_Sex.Str := DCMData[i].Data;
                    Patient_Sex.Code := i;
                  end;
           $1010: begin
                    DCMData[i].Name := 'Patient Age';
                    DCMData[i].Str := true;
                    Patient_Age.Str := DCMData[i].Data;
                    Patient_Age.Code := i;
                  end;
           $1030: DCMData[i].Name := 'Patient Weight';
           $21b0: DCMData[i].Name := 'Additional Patient History';
      end;

      $18 : case DCMData[i].Element_Tag of
            $00 :  DCMData[i].Name := 'Acquisition Group Length';
            $10 :  DCMData[i].Name := 'Contrast/Bolus Agent';
            $15 :  begin
                     DCMData[i].Name := 'Body Part Examined';
                     DCMData[i].Str := true;
                     Study_Part.Str := DCMData[i].Data;
                     Study_Part.Code := i;
                   end;
            $20 :  DCMData[i].Name := 'Scanning Sequence';
            $21 :  DCMData[i].Name := 'Sequence Variant';
            $22 :  DCMData[i].Name := 'Scan Options';
            $23 :  DCMData[i].Name := 'MR Acquisition Type';
            $24 :  DCMData[i].Name := 'Sequence Name';
            $25 :  DCMData[i].Name := 'Angio Flag';
            $30 :  DCMData[i].Name := 'Radionuclide';
            $50 :  begin
                     DCMData[i].Name := 'Slice Thickness';
                     Pixel_Z.cDbl := StrToFloat(DCMData[i].Data);
                     Pixel_Z.Code := i;
                   end;
            $60 :  begin
                     DCMData[i].Name := 'KVP';
                     Energy.cDbl := StrToFloat(DCMData[i].Data);
                     Energy.Code := i;
                   end;
            $70 :  DCMData[i].Name := 'Counts Accumulated';
            $71 :  DCMData[i].Name := 'Acquisition Condition';
            $80 :  DCMData[i].Name := 'Repetition Time';
            $81 :  DCMData[i].Name := 'Echo Time';
            $82 :  DCMData[i].Name := 'Inversion Time';
            $83 :  DCMData[i].Name := 'Number of Averages';
            $84 :  DCMData[i].Name := 'Imaging Frequency';
            $85 :  DCMData[i].Name := 'Imaged Nucleus';
            $86 :  DCMData[i].Name := 'Echo Number';
            $87 :  DCMData[i].Name := 'Magnetic Field Strength';
            $88 :  DCMData[i].Name := 'Spacing Between Slices';
            $89 :  DCMData[i].Name := 'Number of Phase Encoding Steps';
            $90 :  DCMData[i].Name := 'Data collection diameter';
            $91 :  DCMData[i].Name := 'Echo Train Length';
            $93 :  DCMData[i].Name := 'Percent Sampling';
            $94 :  DCMData[i].Name := 'Percent Phase Field View';
            $95 :  DCMData[i].Name := 'Pixel Bandwidth';
            $1000: DCMData[i].Name := 'Device Serial Number';
            $1020: DCMData[i].Name := 'Software Version';
            $1030: DCMData[i].Name := 'Protocol Name';
            $1040: DCMData[i].Name := 'Contrast/Bolus Route';
            $1050: DCMData[i].Name := 'Spatial Resolution';
            $1062: DCMData[i].Name := 'Nominal Interval';
            $1063: DCMData[i].Name := 'Frame Time';
            $1088: DCMData[i].Name := 'Heart Rate';
            $1090: DCMData[i].Name := 'Cardiac Number of Images';
            $1094: DCMData[i].Name := 'Trigger Window';
            $1100: begin
                     DCMData[i].Name := 'Reconstruction Diameter';
                     Diameter.cDbl := StrToFloat(DCMData[i].Data);
                     Diameter.Code := i;
                   end;
            $1110: DCMData[i].Name := 'Distance Source to Detector';
            $1111: DCMData[i].Name := 'Distance Source to Patient';
            $1120: DCMData[i].Name := 'Gantry/Detector Tilt';
            $1130: DCMData[i].Name := 'Table Height';
            $1140: DCMData[i].Name := 'Rotation Direction';
            $1149: DCMData[i].Name := 'Field of View Dimension[s]';
            $1150: begin
                     DCMData[i].Name := 'Exposure Time';
                     ExposureT.cDbl := StrToFloat(DCMData[i].Data);
                     ExposureT.Code := i;
                   end;
            $1151: DCMData[i].Name := 'X-ray Tube Current';
            $1152: DCMData[i].Name := 'Exposure';
            $1160: DCMData[i].Name := 'Filter Type';
            $1170: DCMData[i].Name := 'Generator Power';
            $1190: DCMData[i].Name := 'Focal Spot[s]';
            $1200: DCMData[i].Name := 'Date of Last Calibration';
            $1201: DCMData[i].Name := 'Time of Last Calibration';
            $1210: DCMData[i].Name := 'Convolution Kernel';
            $1250: DCMData[i].Name := 'Receiving Coil';
            $1251: DCMData[i].Name := 'Transmitting Coil';
            $1260: DCMData[i].Name := 'Plate Type';
            $1261: DCMData[i].Name := 'Phosphor Type';
            $1310: DCMData[i].Name := 'Acquisition Matrix';
            $1312: DCMData[i].Name := 'Phase Encoding Direction';
            $1314: DCMData[i].Name := 'Flip Angle';
            $1315: DCMData[i].Name := 'Variable Flip Angle Flag';
            $1316: DCMData[i].Name := 'SAR';
            $1400: DCMData[i].Name := 'Aquisition Device Processing Description';
            $1401: DCMData[i].Name := 'Aquisition Device Processing Code';
            $1402: DCMData[i].Name := 'Cassette Orientation';
            $1403: DCMData[i].Name := 'Cassette Size';
            $5020: DCMData[i].Name := 'Processing Function';
            $5100: DCMData[i].Name := 'Patient Position';
            $5101: DCMData[i].Name := 'View Position';
            $6000: DCMData[i].Name := 'Sensitivity';
      end;

      $20 : case DCMData[i].Element_Tag of
    					$00 :  DCMData[i].Name := 'Relationship Group Length';
              $0d :  begin
                       DCMData[i].Name := 'Study Instance UID';
                       DCMData[i].Str := true;
                       Stu_UID.Str := DCMData[i].Data;
                       Stu_UID.Code := i ;
                     end;
              $0e :  begin
                       DCMData[i].Name := 'Series Instance UID';
                       DCMData[i].Str := true;
                       Ser_UID.Code := i;
                       Ser_UID.Str := DCMData[i].Data;
                     end;
              $10 :  begin
                       DCMData[i].Name := 'Study ID';
                       DCMData[i].Str := true;
                       Study_ID.Str := DCMData[i].Data;
                       Study_ID.Code := i;
                     end;
              $11 :  DCMData[i].Name := 'Series Number';
              $12 :  DCMData[i].Name := 'Acquisition Number';
              $13 :  begin
                       DCMData[i].Name := 'Image Number';
                       Slice_No.cWORD:= StrToInt(Trim(DCMData[i].Data));
                       Slice_No.Code := i;
                     end;
              $20 :  DCMData[i].Name := 'Patient Orientation';
              $30 :  DCMData[i].Name := 'Image Position';
              $32 :  begin
                       DCMData[i].Name := 'Image Position Patient';
                       DCMData[i].Str := true;
                       Img_Pos.Str:= DCMData[i].Data;
                       Img_Pos.Code := i;
                      end;
              $35 :  DCMData[i].Name := 'Image Orientation';
              $37 :  DCMData[i].Name := 'Image Orientation (Patient)';
              $50 :  DCMData[i].Name := 'Location';
              $52 :  DCMData[i].Name := 'Frame of Reference UID';
              $91 :  DCMData[i].Name := 'Echo Train Length';
              $70 :  DCMData[i].Name := 'Image Geometry Type';
              $60 :  DCMData[i].Name := 'Laterality';
            $1002: DCMData[i].Name := 'Images in Acquisition';
            $1040: DCMData[i].Name :=  'Position Reference';
            $1041: begin
                     DCMData[i].Name := 'Slice Location';
                     DCMData[i].Str := true;
                     Slice_Loc.Str := DCMData[i].Data;
                     Slice_Loc.Code := i;
                   end;
            $3401: DCMData[i].Name := 'Modifying Device ID';
            $3402: DCMData[i].Name := 'Modified Image ID';
            $3403: DCMData[i].Name := 'Modified Image Date';
            $3404: DCMData[i].Name := 'Modifying Device Mfg.';
            $3405: DCMData[i].Name := 'Modified Image Time';
            $3406: DCMData[i].Name := 'Modified Image Desc.';
            $4000: DCMData[i].Name := 'Image Comments';
            $5000: DCMData[i].Name := 'Original Image ID';
	   	end;

      $28 : case DCMData[i].Element_Tag of
            	$00 : DCMData[i].Name := 'Image Presentation Group Length';
              $02 : DCMData[i].Name := 'Samples Per Pixel';
              $04 : DCMData[i].Name := 'Photometric Interpretation';{help}
              $05 : DCMData[i].Name := 'Image Dimensions (ret)';
              $06 : DCMData[i].Name := 'Planar Configuration';
              $08 : DCMData[i].Name := 'Number of Frames';
              $09 : DCMData[i].Name := 'Frame Increment Pointer';
              $11 : begin
                      DCMData[i].Name := 'Rows';
                      Width.cWORD := StrToInt(Trim(DCMData[i].Data));
                      Width.Code := i;
                    end;
              $10 : begin
                      DCMData[i].Name := 'Columns';
                      Height.cWORD := StrToInt(Trim(DCMData[i].Data));
                      Height.Code := i;
                    end;
              $30 : begin
                      DCMData[i].Name := 'Pixel Spacing';
                      DCMData[i].Str := true;
                      Pixel.Code := i;
                      Pixel.Str := DCMData[i].Data;
                    end;
              $31 : DCMData[i].Name := 'Zoom Factor';
              $32 : DCMData[i].Name := 'Zoom Center';
              $34 : DCMData[i].Name :='Pixel Aspect Ratio';
              $40 : DCMData[i].Name := 'Image Format [ret]';
              $50 : DCMData[i].Name := 'Manipulated Image [ret]';
              $51 : DCMData[i].Name := 'Corrected Image';
              $60 : DCMData[i].Name := 'Compression Code [ret]';
             $0100: begin
                      DCMData[i].Name := 'Bits Allocated';
                      Bit_Allocated.cWORD :=StrToInt(Trim(DCMData[i].Data));
                      Bit_Allocated.Code := i;
                    end;
           	 $0101: begin
                      DCMData[i].Name := 'Bits Stored';
                      BIT_Sored.cWORD := StrToInt(Trim(DCMData[i].Data));
                      BIT_Sored.Code := i;
                    end;
             $0102: begin
                      DCMData[i].Name := 'High Bit';
                      High_Bit.cWORD := StrToInt(Trim(DCMData[i].Data));
                      High_Bit.Code := i;
                    end;
             $0103: DCMData[i].Name := 'Pixel Representation';
             $0104: DCMData[i].Name := 'Smallest Valid Pixel Value';
             $0105: DCMData[i].Name := 'Largest Valid Pixel Value';
             $0106: DCMData[i].Name := 'Smallest Image Pixel Value';
             $0107: DCMData[i].Name := 'Largest Image Pixel Value';
             $0120: DCMData[i].Name := 'Pixel Padding Value';
             $0200: DCMData[i].Name := 'Image Location [ret]';
             $1050: DCMData[i].Name := 'Window Center';
             $1051: DCMData[i].Name := 'Window Width';
             $1052: DCMData[i].Name := 'Rescale Intercept';
             $1053: DCMData[i].Name := 'Rescale Slope';
             $1100: DCMData[i].Name := 'Gray Lookup Table [ret]';
             $1101: DCMData[i].Name := 'Red Palette Descriptor';
             $1102: DCMData[i].Name := 'Green Palette Descriptor';
             $1103: DCMData[i].Name := 'Blue Palette Descriptor';
             $1200: DCMData[i].Name := 'Gray Lookup Data [ret]';
             $1201: DCMData[i].Name := 'Red Table';
             $1202: DCMData[i].Name := 'Blue Table';
             $1203: DCMData[i].Name := 'Green Table';
    	end;
    end;

  end;

  OrigStr := Img_Pos.Str;
  TmpStr := '';
  i:=1;
  repeat
    TmpStr := TmpStr+OrigStr[i];
    Inc(i);
  until OrigStr[i]='\';
  Img_Pos_X := StrToFloat(TmpStr);
  Inc(i);
  TmpStr := '';
  repeat
    TmpStr := TmpStr+OrigStr[i];
    Inc(i);
  until OrigStr[i]='\';
  Img_Pos_Y := StrToFloat(TmpStr);
  TmpStr := '';
  repeat
    Inc(i);
    TmpStr := TmpStr+OrigStr[i];
  until i=Length(OrigStr);
  Img_Pos_Z := StrToFloat(TmpStr);


  OrigStr := Pixel.Str;
  TmpStr := '';
  i:=1;
  repeat
    TmpStr := TmpStr+OrigStr[i];
    Inc(i);
  until OrigStr[i]='\';
  Pixel_X := StrToFloat(TmpStr);
  TmpStr := '';
  repeat
    Inc(i);
    TmpStr := TmpStr+OrigStr[i];
  until i=Length(OrigStr);
  Pixel_Y := StrToFloat(TmpStr);
end;

function TForm_DICOM.Get_Group_Length(Group_ID: byte): longint;
var
  TmpInt, i :longint;
begin
  TmpInt :=0;
  i:=0;
  repeat
    if DCMData[i].Group_Tag = Group_ID then
    begin
      if DCMData[i].Element_Tag<>0 then
        TmpInt := TmpInt + 8+ DCMData[i].Length;
    end;
    Inc(i);
  until i>DataNum;
  Get_Group_Length := TmpInt;
end;

function TForm_DICOM.Make_UID(UID_Len: Integer): string;
var
  j:longint;
  TmpStr : string;
begin
  Randomize;
  TmpStr :='';
  for j:=0 to 9 do
    TmpStr := TmpStr+IntToStr(Random(10));
  for j:=0 to (UID_Len-10) div 4 do
  begin
    TmpStr := TmpStr+'.';
    TmpStr := TmpStr+IntToStr(Random(10));
    TmpStr := TmpStr+IntToStr(Random(10));
    TmpStr := TmpStr+IntToStr(Random(10));
  end;
  Make_UID := TmpStr;
end;

procedure TForm_DICOM.ReConv_Data;
var
  i:longint;
begin
  DCMData[MSSOP_UID.Code].Data := MSSOP_UID.Str;
  DCMData[SOP_UID.Code].Data := SOP_UID.Str;
  DCMData[Stu_UID.Code].Data := Stu_UID.Str;
  DCMData[Ser_UID.Code].Data := Ser_UID.Str;

  DCMData[Patient_Name.Code].Data := Format('%-6s',[Patient_Name.Str]);
  DCMData[Patient_ID.Code].Data := Patient_ID.Str;
  DCMData[Patient_Sex.Code].Data := Patient_SEX.Str;
  if Patient_AGE.Code<>0 then
    DCMData[Patient_AGE.Code].Data := Patient_AGE.Str;

  DCMData[Study_Date.Code].Data := Study_Date.Str;
  DCMData[Series_Date.Code].Data := Study_Date.Str;
  DCMData[Acq_Date.Code].Data := Study_Date.Str;
  DCMData[Img_Date.Code].Data := Study_Date.Str;

  DCMData[Study_Time.Code].Data := Study_Time.Str;
  DCMData[Series_Time.Code].Data := Study_Time.Str;
  DCMData[Acq_Time.Code].Data := Study_Time.Str;
  DCMData[Img_Time.Code].Data := Study_Time.Str;

  DCMData[Study_ID.Code].Data := Study_ID.Str;
  DCMData[Study_Part.Code].Data := Format('%-8s',[Study_Part.Str]);

  DCMData[Modality.Code].Data := Modality.Str;
  DCMData[Energy.Code].Data := Energy.cDbl.ToString;

  DCMData[Pixel.Code].Data := Format('%0:.4f\%1:.4f',[Pixel_X,Pixel_Y]);
  DCMData[Pixel_Z.Code].Data := Format('%.4f',[Pixel_Z.cDbl]);

  DCMData[Img_Pos.Code].Data := Format('%0:.4f\%1:.4f\%2:.4f',[Img_Pos_X,Img_Pos_Y,Img_Pos_Z]);

  DCMData[Slice_Loc.Code].Data := Slice_Loc.Str;
  DCMData[Slice_No.Code].Data := Slice_No.cWORD.ToString;
  DCMData[ExposureT.Code].Data := Format('%.4f',[ExposureT.cDbl]);
  DCMData[Diameter.Code].Data := Format('%.4f',[Diameter.cDbl]);

  DCMData[Width.Code].Data := Width.cWORD.ToString;
  DCMData[Height.Code].Data := Height.cWORD.ToString;

  //データ長の再設定
  for i:= 0 to DataNum-1 do
    if DCMData[i].Str then
    begin
      DCMData[i].Length := Length(DCMData[i].Data);
      if Odd(DCMData[i].Length) then
      begin
        Inc(DCMData[i].Length);
        DCMData[i].Data := DCMData[i].Data+' ';
      end;
    end;

  //Groupのデータ長の再設定
  for i:=0 to DataNum-1 do
    if DCMData[i].Element_Tag=0 then
      DCMData[i].Data := IntToStr(Get_Group_Length(DCMData[i].Group_Tag));

end;

procedure TForm_DICOM.Save_Data(FN: string; ImgSave: boolean);
var
  i,j, lPW, lPH, TmpInt:longint;
  FS : TFileStream;
  lData :array[0..4100] of SmallInt;
  Buf: array[0..4095] of Byte	;
  TmpStr : string;
begin
  FS := TfileStream.Create(FN,fmCreate);
  lPW := Width.cWORD;
  lPH := Height.cWORD;

  for i:=0 to 127 do
    Buf[i]:= $0;
  FS.Write(Buf,128);

  //'DICM'書き込み
  Buf[0] := $44;  Buf[1] := $49;  Buf[2] := $43;  Buf[3] := $4D;
  FS.Write(Buf,4);

  //Calc elements length
  for i:=0 to DataNum-1 do
    if DCMData[i].Element_Tag=0 then
      DCMData[i].Data := IntToStr(Get_Group_Length(DCMData[i].Group_Tag));

  for i:=0 to DataNum-1 do
  begin
    Buf[0] := DCMData[i].Group_Tag mod 256;
    Buf[1] := DCMData[i].Group_Tag div 256;
    Buf[2] := DCMData[i].Element_Tag mod 256;
    Buf[3] := DCMData[i].Element_Tag div 256;
    FS.Write(Buf,4);

    if DCMData[i].VR<>'' then
    begin
      TmpStr := DCMData[i].VR;
      Buf[0] := Ord(TmpStr[1]);
      Buf[1] := Ord(TmpStr[2]);
      Buf[2] := DCMData[i].Length mod 256;
      Buf[3] := DCMData[i].Length div 256;
      FS.Write(Buf,4);
    end
    else
    begin
      Buf[0] := DCMData[i].Length mod 256;
      Buf[1] := DCMData[i].Length div 256;
      Buf[2] := 0;
      Buf[3] := 0;
      FS.Write(Buf,4);
    end;

    for j:=0 to 4095 do
      Buf[j] := 0;
    if DCMData[i].Str then
    begin
      TmpStr := DCMData[i].Data;
      for j:=1 to DCMData[i].Length do
        Buf[j-1] := Ord(TmpStr[j]);
      FS.Write(Buf,DCMData[i].Length);
    end
    else
    begin
      TmpInt := StrToInt(DCMData[i].Data);
      Buf[0] := TmpInt mod 256;
      for j:=1 to DCMData[i].Length-1 do
        Buf[j] := TmpInt div Round(Power(256,j));
      FS.Write(Buf,DCMData[i].Length);
    end;
  end;

  //画像データの書き込み
  Buf[0] := $E0;    Buf[1] := $7F;    Buf[2] := $10;  Buf[3] := $00;
  FS.Write(Buf,4);

  Buf[0] := lPH*lPW*2 mod 256;
  Buf[1] := lPH*lPW*2 div 256;
  Buf[2] := lPH*lPW*2 div 256 div 256;
  Buf[3] := lPH*lPW*2 div 256 div 256 div 256;
  FS.Write(Buf,4);
  if ImgSave then
  begin
    for j:=0 to lPH-1 do
    begin
      for i:=0 to lPW-1 do
        lData[i] := ImgData[j,i];
      FS.WriteBuffer(lData,lPW*2);
    end;
  end;

  FS.Free;
end;


procedure TForm_DICOM.SB_DCM_RedrawClick(Sender: TObject);
begin
  Disp_Data(Sender);
end;

procedure TForm_DICOM.SB_DCM_UpdateClick(Sender: TObject);
var
  li : longint;
begin
  for li:=0 to DataNum do
  begin
//    if DCMData[li].Str then
      DCMData[li].Data := SG.Cells[6,li+1];
  end;
  ReConv_Data;
  Disp_Data(Sender);
end;

end.
