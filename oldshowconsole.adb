pragma Ada_2005;
with Client;
with Connection;			use Connection;
with Client_Msgs;
--with Ada.Strings.Unbounded;		use Ada.Strings.Unbounded;
with ValueTypes;			use ValueTypes;
with Ada.Text_IO;			use Ada.Text_IO;
with GNAT.OS_Lib;
with Ada.Integer_Text_IO; use  Ada.Integer_Text_IO;

procedure ShowConsole is
  c : Connection.TConnectionRef;
  bConnectionWasTerminated : Boolean;
  value_which_we_set : Integer :=0;
begin
  Connection.GlobalInit;
  --
  c := Client.Connect("ShowConsole", "172.16.1.18", 12345);
  if c /= notConnected then
    --
    declare
      use Client_Msgs;
      msg_CPtr : CConnectMessage_CPtr := new CConnectMessage;
    begin
      msg_CPtr.clientName := ClientName_Pkg.To_Bounded_String("ShowConsole");
      Connection.SendMessage(c, CMessage_CPtr(msg_CPtr), bConnectionWasTerminated);
    end;
    --
    declare
      use Client_Msgs;
      msg_CPtr : CAttachValue_CPtr := new CAttachValue;
    begin
      msg_CPtr.valueName := ValueName_Pkg.To_Bounded_String("h");
      Connection.SendMessage(c, CMessage_CPtr(msg_CPtr), bConnectionWasTerminated);
    end;
    --
    loop
         --delay 1000.0;
         Put_Line("Enter height of surface: ");
         get(value_which_we_set);
         declare
            use Client_Msgs;
            msg_CPtr : CSetValue_CPtr := new CSetValue;
         begin
            msg_CPtr.valueName := ValueName_Pkg.To_Bounded_String("h");
            msg_CPtr.value := (TValue)10;
            Connection.SendMessage(c, CMessage_CPtr(msg_CPtr), );
            Put_Line("We sent changed value to server");
         end;
      end loop;
    --
    Connection.Disconnect(c);
  else
    Put_Line("Connect failed.");
  end if;
  --
  GNAT.OS_Lib.OS_Exit(0);
  --
end ShowConsole;
bConnectionWasTerminated
