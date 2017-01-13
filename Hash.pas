unit Hash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DCPcrypt2, DCPsha1, DCPmd5;

type
  THash_frm = class(TForm)
    Label1: TLabel;
    Edt_Original: TEdit;
    Edt_SHA1: TEdit;
    Button1: TButton;
    SHA1: TDCP_sha1;
    Label2: TLabel;
    MD5: TDCP_md5;
    Label3: TLabel;
    Edt_MD5: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hash_frm: THash_frm;

implementation

{$R *.dfm}

procedure THash_frm.Button1Click(Sender: TObject);
var
  Digest: array[0..19] of byte;  // RipeMD-160 produces a 160bit digest (20bytes)
  DigestMD5: array[0..20] of byte;
  i: integer;
  s: string;
begin
  showmessage('asd');
  //SHA1
  SHA1.Init;                                   // initialize it
  SHA1.UpdateStr(Edt_Original.Text);       // hash the stream contents
  SHA1.Final(Digest);                          // produce the digest
  s:= '';
  for i:= 0 to 19 do
    s:= s + IntToHex(Digest[i],2);
  Edt_SHA1.Text:= s;                              // display the digest

  //MD5
  MD5.Init;
  MD5.UpdateStr(Edt_Original.Text);
  MD5.Final(DigestMD5);
  s:= '';
  for i:= 0 to 20 do
    s:= s + IntToHex(DigestMD5[i],2);
  Edt_MD5.Text:= s;                              // display the digest
end;

end.
