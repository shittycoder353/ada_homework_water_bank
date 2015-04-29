pragma Ada_2005;
with Client;
with Connection;			use Connection;
with Client_Msgs;
with ValueTypes;			use ValueTypes;
with Ada.Text_IO;			use Ada.Text_IO;
with GNAT.OS_Lib;
with Ada.Numerics.Float_Random;	use Ada.Numerics.Float_Random;
use Ada.Text_IO;
with Ada.Float_Text_IO;          use Ada.Float_Text_IO;
procedure Nadrz is
  c : Connection.TConnectionRef;
  bConnectionWasTerminated : Boolean;
   hladina : Long_Float := 500.0;
   odtok : Long_Float := 0.0;
   Rnd_Odtok : Generator;
   dT : Duration;
begin
  Connection.GlobalInit;
  --
  c := Client.Connect("Nadrz", "172.16.1.116", 12345);
  if c /= notConnected then
    --
    declare
      use Client_Msgs;
      msg_CPtr : CConnectMessage_CPtr := new CConnectMessage; --informativna sprava

    begin
      msg_CPtr.clientName := ClientName_Pkg.To_Bounded_String("Nadrz");
      Connection.SendMessage(c, CMessage_CPtr(msg_CPtr), bConnectionWasTerminated);
    end;
    --
    loop
      delay 10.0;
      --
      if hladina > 0.0 then
            odtok := 100.0*Long_Float(Random(Rnd_Odtok));	-- 0.0 .. 1.0
      end if;
      if hladina < 0.0 then
           hladina := 0.0;
      end if;
      --
      declare
        use Client_Msgs;
        msg_CPtr : CSetValue_CPtr := new CSetValue;
      begin
        msg_CPtr.valueName := ValueName_Pkg.To_Bounded_String("VyskaHladiny");
        msg_CPtr.value := validValue;
        msg_CPtr.value.value := Long_Float(hladina);
        Connection.SendMessage(c, CMessage_CPtr(msg_CPtr), bConnectionWasTerminated); --posle hodnotu
        Put_Line(Long_Float'Image(odtok));
      end;
      --
    end loop;
    --
    Connection.Disconnect(c);
  else
    Put_Line("Connect failed.");
  end if;
  --
  GNAT.OS_Lib.OS_Exit(0);
  --
end Nadrz;

