{******************************************************************************}
{                                                                              }
{       Delphi Google Map Viewer Demo                                          }
{                                                                              }
{       Copyright (c) 2021-2024 (Ethea S.r.l.)                                 }
{       Author: Carlo Barazzetta                                               }
{       Contributors:                                                          }
{         littleearth (https://github.com/littleearth)                         }
{         chaupero (https://github.com/chaupero)                               }
{                                                                              }
{       https://github.com/EtheaDev/DelphiGoogleMap                            }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}
unit MainForm_Less;

//Note this Demo is WITHOUT FORM = FORMLESS!

interface
{
uses
  WebView2, System.SysUtils, Winapi.ActiveX, Vcl.Forms,
  Vcl.GoogleMap, Vcl.Edge, Data.DB, Datasnap.DBClient, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Controls, System.Classes, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons;  }

type
  TformMain = {class(} TForm;
  var
    PanelHeader: TPanel;
    ShowPrintUIButton: TButton;
    ShowMapButton: TButton;
    PopupMenu: TPopupMenu;
    HideMapButton: TButton;
    EdgeGoogleMapViewer: TEdgeGoogleMapViewer;
    cdsCustomers: TClientDataSet;
    cdsCustomersCustNo: TFloatField;
    cdsCustomersCompany: TStringField;
    cdsCustomersAddr1: TStringField;
    cdsCustomersAddr2: TStringField;
    cdsCustomersCity: TStringField;
    cdsCustomersState: TStringField;
    cdsCustomersZip: TStringField;
    cdsCustomersCountry: TStringField;
    cdsCustomersPhone: TStringField;
    cdsCustomersFAX: TStringField;
    cdsCustomersTaxRate: TFloatField;
    cdsCustomersContact: TStringField;
    cdsCustomersLastInvoiceDate: TDateTimeField;
    DBGrid: TDBGrid;
    dsCustomers: TDataSource;
    gbMapAttributes: TGroupBox;
    lbZoom: TLabel;
    Zoom: TSpinEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    MemoAddress: TMemo;
    ButtonGotoLocation: TButton;
    Longitude: TEdit;
    LabelLongitude: TLabel;
    LabelAddress: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    StartLat: TEdit;
    StartLng: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DestLat: TEdit;
    DestLng: TEdit;
    cbxTravelMode: TComboBox;
    ButtonRouteLatLng: TButton;
    ButtonGotoAddress: TButton;
    StartAddressMemo: TMemo;
    Label6: TLabel;
    DestinationAddressMemo: TMemo;
    ButtonRouteByAddress: TButton;
    Label8: TLabel;
    DBNavigator: TDBNavigator;
    LoadTableButton: TButton;
    Splitter1: TSplitter;
    CheckBoxDirectionPanel: TCheckBox;
    Button1: TButton;
    Panel1: TPanel;
    FileEdit: TEdit;
    Label7: TLabel;
    LabelLatitude: TLabel;
    Latitude: TEdit;
    PageControlMarker: TPageControl;
    LatLongMarkerTabSheet: TTabSheet;
    TabSheetLabelAnimation: TTabSheet;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    Panel2: TPanel;
    Label9: TLabel;
    editMarkerLat: TEdit;
    Panel3: TPanel;
    Label10: TLabel;
    editMarkerLng: TEdit;
    Panel5: TPanel;
    Label11: TLabel;
    editMarkerDescription: TEdit;
    Panel6: TPanel;
    Label12: TLabel;
    editMarkerLabel: TEdit;
    TabSheetInformation: TTabSheet;
    Panel7: TPanel;
    Label13: TLabel;
    MapTypeIdComboBox: TComboBox;
    comboMarkerAnimation: TComboBox;
    btnAddMarker: TButton;
    TabSheetCustom: TTabSheet;
    cbMarkerCustom: TCheckBox;
    memoMarkerCustomJSON: TMemo;
    Label14: TLabel;
    memoMarkerInformation: TMemo;
    cbCenterOnClick: TCheckBox;
    mnuAddMarker: TMenuItem;
    mapControlGroupBox: TGroupBox;
    CheckBoxTraffic: TCheckBox;
    CheckBoxBicycling: TCheckBox;
    CheckBoxStreeView: TCheckBox;
    CheckBoxFullScreen: TCheckBox;
    CheckBoxZoom: TCheckBox;
    BottomPanel: TPanel;
    CheckBoxMapType: TCheckBox;
    PageControlCircle: TPageControl;
    TabSheet1: TTabSheet;
    GridPanel3: TGridPanel;
    GridPanel4: TGridPanel;
    Panel4: TPanel;
    Label15: TLabel;
    eCircleLat: TEdit;
    Panel8: TPanel;
    Label16: TLabel;
    eCircleLng: TEdit;
    Panel9: TPanel;
    TabSheet2: TTabSheet;
    Panel10: TPanel;
    TabSheet3: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    eCircleRadius: TEdit;
    chkCircleEditable: TCheckBox;
    chkCircleDraggable: TCheckBox;
    chkCicleClickable: TCheckBox;
    chkCircleVisible: TCheckBox;
    eCircleInfo: TMemo;
    TabSheet4: TTabSheet;
    Label17: TLabel;
    eCircleStrokeColor: TEdit;
    Label18: TLabel;
    eCircleStrokeOpacity: TEdit;
    Label19: TLabel;
    eCircleStrokeWeight: TEdit;
    Label22: TLabel;
    eCircleFillColor: TEdit;
    eCircleFillOpacity: TEdit;
    Label23: TLabel;
    PCDrawing: TPageControl;
    TabMarkers: TTabSheet;
    TabCircles: TTabSheet;
    TabPolylines: TTabSheet;
    PageControlPolyline: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel14: TPanel;
    chkPolylineEditable: TCheckBox;
    chkPolylineGeodesic: TCheckBox;
    chkPolylineClickable: TCheckBox;
    chkPolylineVisible: TCheckBox;
    TabSheet7: TTabSheet;
    Label27: TLabel;
    Label29: TLabel;
    ePolylineStrokeColor: TEdit;
    ePolylineStrokeOpacity: TEdit;
    ePolylineStrokeWeight: TEdit;
    TabSheet8: TTabSheet;
    Label32: TLabel;
    ePolylineInfo: TMemo;
    ePolylinePath: TMemo;
    Label28: TLabel;
    chkPolylineFitBounds: TCheckBox;
    GroupBoxDrawing: TGroupBox;
    Polygons: TTabSheet;
    PageControlPolygon: TPageControl;
    TabSheet9: TTabSheet;
    ePolygonPath: TMemo;
    TabSheet10: TTabSheet;
    Panel11: TPanel;
    chkPolygonEditable: TCheckBox;
    chkPolygonClickable: TCheckBox;
    chkPolygonVisible: TCheckBox;
    chkPolygonFitBounds: TCheckBox;
    TabSheet11: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ePolygonStrokeColor: TEdit;
    ePolygonStrokeOpacity: TEdit;
    ePolygonStrokeWeight: TEdit;
    TabSheet12: TTabSheet;
    Label30: TLabel;
    ePolygonInfo: TMemo;
    Label31: TLabel;
    ePolygonFillColor: TEdit;
    Label33: TLabel;
    ePolygonFillOpacity: TEdit;
    Panel12: TPanel;
    ButtonClearMarkers: TButton;
    chMarkerShowHide: TCheckBox;
    Panel13: TPanel;
    chCirclesShowHide: TCheckBox;
    btnAddCircle: TButton;
    Panel15: TPanel;
    chPolylinesShowHide: TCheckBox;
    Panel16: TPanel;
    chPolygonsShowHide: TCheckBox;
    btnClearCircles: TButton;
    btnAddPolyline: TButton;
    btnClearPolylines: TButton;
    btnAddPolygon: TButton;
    btnClearPolygons: TButton;
    TabSheet13: TTabSheet;
    GroupBox3: TGroupBox;
    Label34: TLabel;
    eGeometryFromLat: TEdit;
    Label35: TLabel;
    eGeometryFromLng: TEdit;
    Label36: TLabel;
    eGeometryToLat: TEdit;
    Label37: TLabel;
    eGeometryToLng: TEdit;
    btnGeometryComputeDistanceBetween: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGotoAddressClick(Sender: TObject);
    procedure ButtonGotoLocationClick(Sender: TObject);
    procedure CheckBoxTrafficClick(Sender: TObject);
    procedure CheckBoxBicyclingClick(Sender: TObject);
    procedure CheckBoxStreeViewClick(Sender: TObject);
    procedure ButtonClearMarkersClick(Sender: TObject);
    procedure ZoomChange(Sender: TObject);
    procedure ShowPrintUIButtonClick(Sender: TObject);
    procedure ShowMapButtonClick(Sender: TObject);
    procedure HideMapButtonClick(Sender: TObject);
    procedure MapTypeIdComboBoxChange(Sender: TObject);
    procedure cdsCustomersAfterScroll(DataSet: TDataSet);
    procedure ButtonRouteLatLngClick(Sender: TObject);
    procedure cbxTravelModeChange(Sender: TObject);
    procedure ButtonRouteByAddressClick(Sender: TObject);
    procedure LoadTableButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdgeGoogleMapViewerBeforeShowMap(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBoxDirectionPanelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddMarkerClick(Sender: TObject);
    procedure mnuAddMarkerClick(Sender: TObject);
    procedure CheckBoxFullScreenClick(Sender: TObject);
    procedure CheckBoxZoomClick(Sender: TObject);
    //procedure EdgeGoogleMapViewerContainsFullScreenElementChanged(
      //Sender: TCustomEdgeBrowser; ContainsFullScreenElement: Boolean);
    procedure CheckBoxMapTypeClick(Sender: TObject);
    procedure btnAddCircleClick(Sender: TObject);
    procedure btnClearCirclesClick(Sender: TObject);
    procedure btnClearPolylinesClick(Sender: TObject);
    procedure btnAddPolylineClick(Sender: TObject);
    procedure btnClearPolygonsClick(Sender: TObject);
    procedure btnAddPolygonClick(Sender: TObject);
    procedure chMarkerShowHideClick(Sender: TObject);
    procedure chCirclesShowHideClick(Sender: TObject);
    procedure chPolylinesShowHideClick(Sender: TObject);
    procedure chPolygonsShowHideClick(Sender: TObject);
    procedure btnGeometryComputeDistanceBetweenClick(Sender: TObject);
  //private
   var
    FRighClickLatLng : TLatLng;
    procedure OnMapClick(ASender: TObject; ALatLng : TLatLng);
    procedure OnMapRightClick(ASender: TObject; ALatLng : TLatLng);
    procedure OnMapZoom(ASender: TObject; AZoom : integer);
  //public
    { Public declarations }
  //end;

var
  formMain: TformMain;

implementation

//uses
  //System.IOUtils, Vcl.Dialogs, SecondaryForm;

//{$R *.dfm}

function B2S(value: boolean): string;
begin
  if value then
    Result := 'true'
  else
    Result := 'false';
end;

procedure FormCreate(Sender: TObject);
begin
  Zoom.Value := EdgeGoogleMapViewer.MapZoom;

  //Init checkboxes based on Component Proprerties
  CheckBoxTraffic.Checked := EdgeGoogleMapViewer.MapShowTrafficLayer;
  CheckBoxBicycling.Checked := EdgeGoogleMapViewer.MapShowBicyclingLayer;
  CheckBoxStreeView.Checked := EdgeGoogleMapViewer.MapShowStreetViewControl;
  CheckBoxDirectionPanel.Checked := EdgeGoogleMapViewer.MapShowDirectionsPanel;
  CheckBoxFullScreen.Checked := EdgeGoogleMapViewer.MapShowFullScreenControl;
  CheckBoxZoom.Checked := EdgeGoogleMapViewer.MapShowZoomControl;
  CheckBoxMapType.Checked := EdgeGoogleMapViewer.MapShowTypeControl;

  MemoAddress.Lines.Text := EdgeGoogleMapViewer.MapAddress;
  Latitude.Text := EdgeGoogleMapViewer.CoordToText(EdgeGoogleMapViewer.MapLatitude);
  Longitude.Text := EdgeGoogleMapViewer.CoordToText(EdgeGoogleMapViewer.MapLongitude);
  editMarkerLat.Text := EdgeGoogleMapViewer.CoordToText(-31.9523);
  editMarkerLng.Text  := EdgeGoogleMapViewer.CoordToText(115.8613);
  editMarkerDescription.Text := 'Perth, Western Australia';
  editMarkerLabel.Text := 'Here';
  eCircleLat.Text := EdgeGoogleMapViewer.CoordToText(-31.9523);
  eCircleLng.Text  := EdgeGoogleMapViewer.CoordToText(115.8613);
  eCircleRadius.text:='23';
  comboMarkerAnimation.ItemIndex := 0;
  memoMarkerCustomJSON.Lines.Text := EdgeGoogleMapViewer.DefaultCustomMarkerJSON;
  MapTypeIdComboBox.ItemIndex := Ord(EdgeGoogleMapViewer.MapTypeId);
  StartLat.Text := EdgeGoogleMapViewer.CoordToText(37.7699298);
  StartLng.Text := EdgeGoogleMapViewer.CoordToText(-122.4469157);
  DestLat.Text := EdgeGoogleMapViewer.CoordToText(37.7683909618184);
  DestLng.Text := EdgeGoogleMapViewer.CoordToText(-122.51089453697205);
  StartAddressMemo.Lines.Text := 'Via Santa Cecilia 4, 20061 Carugate, Milano';
  DestinationAddressMemo.Lines.Text := 'Via San Francesco 5, 20061 Carugate, Milano';
  FileEdit.Text := ExtractFilePath(Application.ExeName)+'..\..\Data\customer.xml';
  PageControlMarker.ActivePageIndex := 0;
  EdgeGoogleMapViewer.OnMapClick := @OnMapClick;
  EdgeGoogleMapViewer.OnMapRightClick := @OnMapRightClick;
  EdgeGoogleMapViewer.OnMapZoom := @OnMapZoom;
end;

procedure OnMapClick(ASender : TObject;  ALatLng : TLatLng);
begin
  if cbCenterOnClick.Checked then
  begin
    EdgeGoogleMapViewer.GotoLocation(ALatLng, False)
  end;
end;

procedure OnMapRightClick(ASender : TObject; ALatLng : TLatLng);
begin
  FRighClickLatLng.Latitude := ALatLng.Latitude;
  FRighClickLatLng.Longitude := ALatLng.Longitude;
  //PopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure OnMapZoom(ASender: TObject; AZoom: integer);
begin
  Zoom.Value := AZoom;
end;

procedure FormDestroy(Sender: TObject);
begin
  //activeoleControl := nil;
end;

procedure FormShow(Sender: TObject);
begin
  ButtonGotoAddressClick(Sender);
end;

procedure HideMapButtonClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.HideMap;
end;

procedure LoadTableButtonClick(Sender: TObject);
begin
  cdsCustomers.LoadFromFile(FileEdit.Text);
end;

procedure MapTypeIdComboBoxChange(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapTypeId := TGoogleMapTypeId(MapTypeIdComboBox.ItemIndex);
end;

procedure mnuAddMarkerClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.PutMarker(FRighClickLatLng,'Added from right click menu',maBOUNCE,'','','');
end;

procedure ShowPrintUIButtonClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ShowPrintUI;
end;

procedure ShowMapButtonClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.GotoAddress(MemoAddress.Lines.Text);
end;

procedure ZoomChange(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapZoom := Zoom.Value;
end;

procedure ButtonGotoLocationClick(Sender: TObject);
var
  Location: TLatLng;
begin
  Location.Latitude := EdgeGoogleMapViewer.TextToCoord(Latitude.Text);
  Location.Longitude := EdgeGoogleMapViewer.TextToCoord(Longitude.Text);
  EdgeGoogleMapViewer.GotoLocation(Location, true);
end;

procedure CheckBoxFullScreenClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapShowFullScreenControl :=
    CheckBoxFullScreen.Checked;
end;

procedure CheckBoxMapTypeClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapShowTypeControl :=
    CheckBoxMapType.Checked;
end;

procedure CheckBoxZoomClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapShowZoomControl :=
    CheckBoxZoom.Checked;
end;

procedure chMarkerShowHideClick(Sender: TObject);
begin
    if chMarkerShowHide.Checked then
        EdgeGoogleMapViewer.ShowMarkers
    else
        EdgeGoogleMapViewer.HideMarkers;
end;

procedure chPolygonsShowHideClick(Sender: TObject);
begin
    if chPolygonsShowHide.Checked then
        EdgeGoogleMapViewer.ShowPolygons
    else
        EdgeGoogleMapViewer.HidePolygons;
end;

procedure chPolylinesShowHideClick(Sender: TObject);
begin
    if chPolylinesShowHide.Checked then
        EdgeGoogleMapViewer.ShowPolylines
    else
        EdgeGoogleMapViewer.HidePolylines;
end;

procedure cbxTravelModeChange(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapRouteModeId := TGoogleRouteModeId(cbxTravelMode.ItemIndex);
end;

procedure cdsCustomersAfterScroll(DataSet: TDataSet);
var
  Address: string;
begin
  //Build Address from dataset
  if (cdsCustomersState.Value <> '') then
    Address := cdsCustomersAddr1.AsString+' '+cdsCustomersAddr2.AsString+', '+
      cdsCustomersCity.AsString+', '+cdsCustomersState.AsString+', '+cdsCustomersCountry.AsString
  else
    Address := cdsCustomersAddr1.AsString+' '+cdsCustomersAddr2.AsString+', '+
      cdsCustomersCity.AsString+', '+cdsCustomersCountry.AsString;

  MemoAddress.Lines.Text := Address;
  if EdgeGoogleMapViewer.MapVisible then
    EdgeGoogleMapViewer.GotoAddress(Address);
end;

procedure ButtonRouteByAddressClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapShowDirectionsPanel := CheckBoxDirectionPanel.Checked;
  EdgeGoogleMapViewer.MapStartAddress := StartAddressMemo.Lines.Text;
  EdgeGoogleMapViewer.MapDestinationAddress := DestinationAddressMemo.Lines.Text;
  EdgeGoogleMapViewer.RouteByAddresses;
end;

procedure ButtonRouteLatLngClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.MapShowDirectionsPanel := CheckBoxDirectionPanel.Checked;
  EdgeGoogleMapViewer.MapStartLatitude :=  EdgeGoogleMapViewer.TextToCoord(StartLat.Text);
  EdgeGoogleMapViewer.MapStartLongitude := EdgeGoogleMapViewer.TextToCoord(StartLng.Text);
  EdgeGoogleMapViewer.MapDestinationLatitude := EdgeGoogleMapViewer.TextToCoord (DestLat.Text);
  EdgeGoogleMapViewer.MapDestinationLongitude := EdgeGoogleMapViewer.TextToCoord(DestLng.Text);
  EdgeGoogleMapViewer.MapRouteModeId := TGoogleRouteModeId(cbxTravelMode.ItemIndex);
  EdgeGoogleMapViewer.RouteByLocations;
end;


procedure btnAddCircleClick(Sender: TObject);
var
  LLatLng : TLatLng;
begin
  LLatLng.Latitude := EdgeGoogleMapViewer.TextToCoord(eCircleLat.Text);
  LLatLng.Longitude := EdgeGoogleMapViewer.TextToCoord(eCircleLng.Text);
  EdgeGoogleMapViewer.GotoLocation(LLatLng, false);
  EdgeGoogleMapViewer.PutCircle(
                            LLatLng,
                            EdgeGoogleMapViewer.TextToCoord(eCircleRadius.text),
                            chkCircleEditable.Checked,
                            chkCircleDraggable.Checked,
                            chkCircleVisible.Checked,
                            chkCicleClickable.Checked,
                            eCircleStrokeColor.Text,
                            EdgeGoogleMapViewer.TextToCoord(eCircleStrokeOpacity.text),
                            strtoint(eCircleStrokeWeight.text),
                            eCircleFillColor.Text,
                            EdgeGoogleMapViewer.TextToCoord(eCircleFillOpacity.text),
                            eCircleInfo.Text);
end;


procedure btnAddMarkerClick(Sender: TObject);
var
  LLatLng : TLatLng;
  LCustomJSON : string;
  LAnimation : TGoogleMarkerAnimationId;
begin
  LLatLng.Latitude := EdgeGoogleMapViewer.TextToCoord(editMarkerLat.Text);
  LLatLng.Longitude := EdgeGoogleMapViewer.TextToCoord(editMarkerLng.Text);
  LAnimation := TGoogleMarkerAnimationId(comboMarkerAnimation.ItemIndex);
  LCustomJSON := '';
  if cbMarkerCustom.Checked then
    begin
      LCustomJSON := memoMarkerCustomJSON.Lines.Text;
    end;
  EdgeGoogleMapViewer.GotoLocation(LLatLng, false);
  EdgeGoogleMapViewer.PutMarker(LLatLng,editMarkerDescription.Text, LAnimation ,editMarkerLabel.Text, memoMarkerInformation.Lines.Text, LCustomJSON);
end;

procedure btnAddPolygonClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.PutPolygon(
                      ePolygonPath.lines.Text,
                      chkPolygonEditable.Checked,
                      chkPolygonVisible.Checked,
                      chkPolygonClickable.Checked,
                      chkPolygonFitBounds.Checked,
                      ePolygonStrokeColor.Text,
                      strtofloat(ePolygonStrokeOpacity.text),
                      strtoint(ePolygonStrokeWeight.text),
                      ePolygonFillColor.Text,
                      strtofloat(ePolygonFillOpacity.text),
                      ePolygonInfo.Text);
end;
procedure btnAddPolylineClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.PutPolyline(
                      ePolylinePath.lines.Text,
                      chkPolylineGeodesic.Checked,
                      chkPolylineEditable.Checked,
                      chkPolylineVisible.Checked,
                      chkPolylineClickable.Checked,
                      chkPolylineFitBounds.Checked,
                      ePolylineStrokeColor.Text,
                      strtofloat(ePolylineStrokeOpacity.text),
                      strtoint(ePolylineStrokeWeight.text),
                      ePolylineInfo.Text);
end;

procedure btnClearCirclesClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ClearCircles;
end;

procedure btnClearPolygonsClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ClearPolygons;
end;

procedure btnClearPolylinesClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ClearPolylines;
end;

procedure btnGeometryComputeDistanceBetweenClick(Sender: TObject);
var
  FromLatLng, ToLatLng : TLatLng;
  Distance:Double;
begin
  FromLatLng.Latitude := EdgeGoogleMapViewer.TextToCoord(eGeometryFromLat.Text);
  FromLatLng.Longitude := EdgeGoogleMapViewer.TextToCoord(eGeometryFromLng.Text);
  ToLatLng.Latitude := EdgeGoogleMapViewer.TextToCoord(eGeometryToLat.Text);
  ToLatLng.Longitude := EdgeGoogleMapViewer.TextToCoord(eGeometryToLng.Text);

  Distance := EdgeGoogleMapViewer.ComputeDistanceBetween(FromLatLng,ToLatLng);
  ShowMessageFmt('Distance %8.2f mts',[Distance]);
end;

procedure Button1Click(Sender: TObject);
//var
  //LFormSecondary: TFormSecondary;
begin
  //Application.CreateForm(TFormSecondary, LFormSecondary);
end;

procedure ButtonClearMarkersClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ClearMarkers;
end;

procedure ButtonGotoAddressClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.GotoAddress(MemoAddress.Lines.Text);
end;

procedure CheckBoxStreeViewClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ShowStreetViewControl(CheckBoxStreeView.Checked);
end;

procedure chCirclesShowHideClick(Sender: TObject);
begin
    if chCirclesShowHide.Checked then
        EdgeGoogleMapViewer.ShowCircles
    else
        EdgeGoogleMapViewer.HideCircles;
end;

procedure CheckBoxBicyclingClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ShowBicycling(CheckBoxBicycling.Checked);
 end;


procedure CheckBoxDirectionPanelClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ShowDirectionsPanel(CheckBoxDirectionPanel.Checked);
end;

procedure CheckBoxTrafficClick(Sender: TObject);
begin
  EdgeGoogleMapViewer.ShowTraffic(CheckBoxTraffic.Checked);
 end;

procedure EdgeGoogleMapViewerBeforeShowMap(Sender: TObject);
//var anec: TExecuteScriptEvent;
begin
  if EdgeGoogleMapViewer.ApiKey = '' then
    xraise (Exception.Create('Error: you must put your Google API Key into TEdgeGoogleMapViewer: change initialization section!'));
end;

procedure loadmapsForm;
var alat: TLatLng; 
begin
//object formMain: TformMain
formMain:= TformMain.create(self)
with formmain do begin
  Left := 427
  Top := 268
  Caption:= 
    'Delphi with Edge Google Maps Viewer Component Demo - Copyright (' +
    'c) Ethea S.r.l. for maXbox5'
  ClientHeight:= 900;
  ClientWidth:= 1245
  icon.loadfromresourcename(hinstance, 'XGMAPS');
  Color:= clBtnFace
  Constraints.MinHeight:= 550
  Constraints.MinWidth:= 890
  Font.Charset:= DEFAULT_CHARSET
  Font.Color:= clWindowText
  Font.Height:= -11
  Font.Name:= 'Tahoma'
  Font.Style:= []
  Position:= poScreenCenter
  Visible:= True
  //WindowState:= wsMaximized
  //OnCreate:= @FormCreate;
  //OnDestroy:= @FormDestroy;
  //OnShow:= @FormShow;
  //TextHeight:= 13
  Splitter1:= TSplitter.create(formmain)
  with splitter1 do begin
    parent:= formmain;
    Left:= 0
    //Top:= 1200
    Width:= 80
    Height:= 3
    Cursor:= crVSplit
    Align:= alBottom
  end ;
 end;
  //object EdgeGoogleMapViewer: TEdgeGoogleMapViewer
  EdgeGoogleMapViewer:= TEdgeGoogleMapViewer.create(formmain)
    with EdgeGoogleMapViewer do begin
    parent:= formmain;
    setbounds(0,09,900,300);
    showhint:= true;
    hint:= 'this hint from EdgeGoogleMapViewer - you need an APËI Key';
    RegisterGoogleMapsApiKey('AIzaSyAuFKrYAJhFAEg3vYTxjLHREW26cMP3KCw');
    writ(apikey) 
    //Left:= 0;
    //setbounds
    //Top:= 209
    //Width:= 1445
    //Height:= 370
    Align:= alClient
    //TabOrder:= 1
    //OnContainsFullScreenElementChanged = EdgeGoogleMapViewerContainsFullScreenElementChanged
    alat.latitude := 37.7699298;
    alat.longitude := -122.4469157;
    loaded2;
    //showmap('cologne, germany');
    sleep(500);
    showmap3(alat);
    MapAddress:= 'Via Santa Cecilia 4, Carugate, Milano'
    MapLatitude:= 25.767314000000000000
    MapLongitude:= -80.135694000000000000
    BeforeShowMap:= @EdgeGoogleMapViewerBeforeShowMap
  end 
end;  

                                {
procedure EdgeGoogleMapViewerContainsFullScreenElementChanged(
  Sender: TCustomEdgeBrowser; ContainsFullScreenElement: Boolean);
begin
  PanelHeader.Visible := not ContainsFullScreenElement;
  BottomPanel.Visible := not ContainsFullScreenElement;
  DBGrid.Visible := not ContainsFullScreenElement;
  DBGrid.Top := BottomPanel.Top -1;
end;                           }

initialization
  //Setup UserDataFolder for Temp files
  EdgeGoogleMapViewer:= TEdgeGoogleMapViewer.create(self)
  EdgeGoogleMapViewer.RegisterUserDataFolder({System.IOUtils.TPath.}jxPathGetTempPath+
                                                               ExtractFileName(ParamStr(0)));
  //If you have a Google API Key it's time to setup
  //TEdgeGoogleMapViewer.RegisterGoogleMapsApiKey('xyz');
  EdgeGoogleMapViewer.RegisterGoogleMapsApiKey('AIzaSyAuFKrYAJhxyz__________________');
  //EdgeGoogleMapViewer.OnGetJavascript 
  //EdgeGoogleMapViewer.OnExecutescript 

  //{$WARN SYMBOL_PLATFORM OFF}
  //ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  //Set_ReportMemoryLeaksOnShutdown(DebugHook <> 0)
   Set_ReportMemoryLeaksOnShutdown(true)
  writ( EdgeGoogleMapViewer.CoordToText(-31.9523));
  writ( EdgeGoogleMapViewer.CoordToText(115.8613));
  loadmapsForm();
  //maxform1.googlemaps(self);
End.
