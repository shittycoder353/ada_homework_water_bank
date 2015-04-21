with Ada.Text_IO;		use Ada.Text_IO;

with Server_Services;

package body Client_Msgs is

  ------------
  -- Action --
  ------------

  procedure Action (Self : in CConnectMessage) is
    use ClientName_Pkg;
  begin
    Put_Line("New client : " & To_String(Self.clientName));
  end Action;


  ------------
  -- Action --
  ------------

  procedure Action (Self : in CAttachValue) is
  begin
    Server_Services.AttachValue(GetConnectionRef(Self), Self.valueName);
  end Action;

  ------------
  -- Action --
  ------------

  procedure Action (Self : in CChangeValue) is
  begin
    Put_Line("!!! CChangeValue was received from " & GetConnectionName(GetConnectionRef(Self)));
  end Action;

  ------------
  -- Action --
  ------------

  procedure Action (Self : in CSetValue) is
  begin
    Server_Services.SetValue(GetConnectionRef(Self), Self.valueName, Self.value);
  end Action;

end Client_Msgs;
