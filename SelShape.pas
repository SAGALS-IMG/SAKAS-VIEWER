{------------------------------------------------------------
  TSelShape  ��`�̈�I��p�R���|�[�l���g

** �v���p�e�B **
  SizeSense            : ���T�C�Y�̈���@
  MinWidth, MinHeight  : ���T�C�Y�\�ȍŏ���������
  MinTop,   MinLeft    :       �V      ��[�����[
  MaxBottom,MaxRight   :       �V      ���[���E�[
                         Max��0�ɂ���Ɛe�R���g���[���̃N���C�A���g
                         �̈�Ɍ���ł���B
  SelOption
    ResizeX,ResizeY    : X,Y�����ւ̃��T�C�Y
    MoveX,  MoveY      : X,Y�����ւ̈ړ� 

  98/07  by N.Watari  (watariya@geocities.co.jp)
-------------------------------------------------------------}
unit SelShape;

interface

uses
  Windows, Classes, Controls, ExtCtrls, Graphics;

type
  TSelMode = (SelM, SelN, SelS, SelW, SelE, SelNE, SelNW, SelSE, SelSW);
  TSelOptSet = (ResizeX, ResizeY, MoveX, MoveY);
  TSelOpt    = set of TSelOptSet;

type
  TSelShape = class(TShape)
  private
    { Private �錾 }
    FSizeSense: Integer;
    FMinWidth : Integer;
    FMinHeight: Integer;
    FMinTop   : Integer;
    FMinLeft  : Integer;
    FMaxBot   : Integer;
    FMaxRit   : Integer;
    FSelOpt   : TSelOpt;
    FSelDrag  : Boolean;
    FSelMode  : TSelMode;
    PreX, PreY: Integer;
    procedure SelChgTop(Y: Integer);
    procedure SelChgBot(Y: Integer);
    procedure SelChgLft(X: Integer);
    procedure SelChgRit(X: Integer);
    procedure SelChgMov(X, Y: Integer);
  protected
    { Protected �錾 }
  public
    { Public �錾 }
    constructor Create(AOwner: TComponent); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp  (Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  published
    { Published �錾 }
    property SizeSense:  Integer read FSizeSense write FSizeSense;
    property MinWidth:   Integer read FMinWidth  write FMinWidth;
    property MinHeight:  Integer read FMinHeight write FMinHeight;
    property MinTop:     Integer read FMinTop    write FMinTop;
    property MinLeft:    Integer read FMinLeft   write FMinLeft;
    property MaxBottom:  Integer read FMaxBot    write FMaxBot;
    property MaxRight :  Integer read FMaxRit    write FMaxRit;
    property SelOption: TSelOpt read FSelOpt    write FSelOpt;
  end;

procedure Register;

implementation


constructor TSelShape.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSizeSense := 5;
  FMinWidth  := 5;
  FMinHeight := 5;
  FMaxRit    := 0;
  FMaxBot    := 0;
  FMinTop    := 0;
  FMinLeft   := 0;
  FSelDrag := False;
  FSelOpt := [ResizeX, ResizeY, MoveX, MoveY];
  Brush.Style := bsClear;
end;

procedure TSelShape.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  CPoint: TPoint;
  Rect : TRect;
begin
  inherited MouseDown(Button, Shift, X, Y);
  FSelDrag := True;
  PreX := X;
  PreY := Y;
  CPoint.X := 0;
  CPoint.Y := 0;
  CPoint := Parent.ClientToScreen(Cpoint);
  Rect.Left  := CPoint.X;
  Rect.Top   := CPoint.Y;
  Rect.Right := CPoint.X + Parent.Width;
  Rect.Bottom:= CPoint.Y + Parent.Height;
  ClipCursor(@Rect);
end;

procedure TSelShape.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);
  FSelDrag := False;
  ClipCursor(nil);
end;

procedure TSelShape.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseMove(Shift, X, Y);
  if FSelDrag then
  begin
    case FSelMode of                                  // �c�����ύX
        SelN, SelNW, SelNE: SelChgTop(Y-PreY);
        SelS, SelSW, SelSE: SelChgBot(Y-PreY);
    end;
    case FSelMode of                                  // �������ύX
      SelW, SelNW, SelSW: SelChgLft(X-PreX);
      SelE, SelNE, SelSE: SelChgRit(X-PreX);
    end;
    if FSelMode = SelM then
      SelChgMov(X-PreX,Y-PreY);
  end
  else
  begin
    if X <= FSizeSense then                           //�}�E�X��
    begin
      if Y <= FSizeSense then                         //        ��
        FSelMode := SelNW
      else if (Height - Y) <= FSizeSense then         //        ��
        FSelMode := SelSW
      else                                            //        ��
        FSelMode := SelW;
    end
    else if (Width - X) <= FSizeSense then            //�}�E�X�E
    begin
      if Y <= FSizeSense then                         //        ��
        FSelMode := SelNE
      else if (Height - Y) <= FSizeSense then         //        ��
        FSelMode := SelSE
      else                                            //        ��
        FSelMode := SelE;
    end
    else                                              //�}�E�X����
    begin
      if Y <= FSizeSense then                         //        ��
        FSelMode := SelN
      else if (Height - Y) <= FSizeSense then         //        ��
        FSelMode := SelS
      else                                            //        ��
        FSelMode := SelM;
    end;
  end;
  if not (ResizeX in FSelOpt) then
  begin
    case FselMode of
      SelNW, SelNE : FselMode := SelN;
      SelSW, SelSE : FSelMode := SelS;
      SelW,  SelE  : FSelMode := SelM;
    end;
  end;
  if not (ResizeY in FSelOpt) then
  begin
    case FselMode of
      SelNW, SelSW : FselMode := SelW;
      SelNE, SelSE : FSelMode := SelE;
      SelN,  SelS  : FSelMode := SelM;
    end;
  end;
  case FSelMode of
    SelM:          Cursor := crDefault;
    SelNW, SelSE:  Cursor := crSizeNWSE;
    SelSW, SelNE:  Cursor := crSizeNESW;
    SelN,  SelS :  Cursor := crSizeNS;
    SelW,  SelE :  Cursor := crSizeWE;
  end;
end;

procedure TSelShape.SelChgTop(Y: Integer);                 //��ɐL�k
begin
  if (Top + Y < FMinTop) then
    Y := FMinTop - Top;
  if (Height - Y < FMinHeight) then Exit;
  Top    := Top    + Y;
  Height := Height - Y;
end;

procedure TSelShape.SelChgBot(Y: Integer);                 //���ɐL�k
begin
  if (Height + Y < FMinHeight) then Exit;
  if (FMaxBot <= FMinTop) then                                  //MaxBot�w��Ȃ�
  begin                                                         //  Max�͐eCntrl
    if (Top + Height + Y > Parent.ClientHeight) then
      Y := Parent.ClientHeight - (Top + Height);
  end
  else                                                          //MaxBot�w�肠��
    if (Top + Height + Y > FMaxBot) then
      Y := FMaxBot - (Top + Height);
  Height := Height + Y;
  PreY := PreY + Y;
end;

procedure TSelShape.SelChgLft(X: Integer);                 //���ɐL�k
begin
  if (Left + X < FMinLeft) then
    X := FMinLeft - Left;
  if (Width - X < FMinWidth) then Exit;
    Left    := Left    + X;
    Width := Width - X;
end;

procedure TSelShape.SelChgRit(X: Integer);                 //�E�ɐL�k
begin
  if (Width + X < FMinWidth) then Exit;
  if (FMaxRit <= FMinLeft) then                                 //MaxRit�w��Ȃ�
  begin                                                         //  Max�͐eCntrl
    if (Left + Width + X > Parent.ClientWidth) then
      X := Parent.ClientWidth -(Left + Width);
  end
  else                                                          //MaxRit�w�肠��
    if (Left + Width + X > FMaxRit) then
      X := FMaxRit - (Left + Width);
    Width := Width + X;
    PreX := PreX + X;
end;

procedure TSelShape.SelChgMov(X, Y: Integer);
begin
  if (MoveY in FSelOpt) then
  begin
    if (Top + Y < FMinTop) then                               //****** �c
      Y := FMinTop - Top;
    if (FMaxBot <= FMinTop) then                                  //MaxBot�w��Ȃ�
    begin                                                         //  Max�͐eCntrl
      if (Top + Height + Y > Parent.ClientHeight) then
        Y := Parent.ClientHeight - (Top + Height);
    end
    else                                                          //MaxBot�w�肠��
      if (Top + Height + Y > FMaxBot) then
        Y := FMaxBot - (Top + Height);
    Top := Top + y;
  end;
  if (MoveX in FSelOpt) then
  begin
    if (Left + X < FMinLeft) then                             //****** ��
      X := FMinLeft - Left;
    if (FMaxRit <= FMinLeft) then                                 //MaxRit�w��Ȃ�
    begin                                                         //  Max�͐eCntrl
      if (Left + Width + X > Parent.ClientWidth) then
        X := Parent.ClientWidth -(Left + Width);
    end
    else                                                          //MaxRit�w�肠��
      if (Left + Width + X > FMaxRit) then
        X := FMaxRit - (Left + Width);
    Left := Left + X;
  end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TSelShape]);
end;

end.
