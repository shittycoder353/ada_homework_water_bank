pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~server_test.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~server_test.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E074 : Short_Integer; pragma Import (Ada, E074, "system__os_lib_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__soft_links_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "system__fat_flt_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "system__fat_lflt_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "system__fat_llf_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__exception_table_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "ada__containers_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__io_exceptions_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__strings_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "ada__strings__maps_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "ada__tags_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__streams_E");
   E072 : Short_Integer; pragma Import (Ada, E072, "interfaces__c_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "interfaces__c__strings_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "system__finalization_root_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__finalization_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "system__storage_pools_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "system__finalization_masters_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "system__storage_pools__subpools_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__task_info_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__calendar_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__calendar__delays_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "system__pool_global_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "system__file_control_block_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "ada__streams__stream_io_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "system__file_io_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "gnat__sockets_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "system__pool_size_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__secondary_stack_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "ada__strings__unbounded_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "gnat__sockets__thin_common_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "gnat__sockets__thin_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "system__strings__stream_ops_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "system__tasking__initialization_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__real_time_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__text_io_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "system__tasking__protected_objects_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__tasking__protected_objects__entries_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "system__tasking__queuing_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "system__tasking__stages_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "connection_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "connection_msgs_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "server_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "valuetypes_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "client_msgs_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "server_services_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E164 := E164 - 1;
      E169 := E169 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "server_services__finalize_body");
      begin
         E166 := E166 - 1;
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "client_msgs__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "connection__finalize_body");
      begin
         E097 := E097 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "connection_msgs__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "connection__finalize_spec");
      begin
         F5;
      end;
      E214 := E214 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F6;
      end;
      E058 := E058 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__text_io__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "gnat__sockets__finalize_body");
      begin
         E237 := E237 - 1;
         F8;
      end;
      E145 := E145 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "ada__strings__unbounded__finalize_spec");
      begin
         F9;
      end;
      E079 := E079 - 1;
      E093 := E093 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__file_io__finalize_body");
      begin
         E066 := E066 - 1;
         F10;
      end;
      E244 := E244 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__pool_size__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gnat__sockets__finalize_spec");
      begin
         F12;
      end;
      E195 := E195 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "ada__streams__stream_io__finalize_spec");
      begin
         F13;
      end;
      declare
         procedure F14;
         pragma Import (Ada, F14, "system__file_control_block__finalize_spec");
      begin
         E077 := E077 - 1;
         F14;
      end;
      E089 := E089 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "system__pool_global__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "system__storage_pools__subpools__finalize_spec");
      begin
         F16;
      end;
      declare
         procedure F17;
         pragma Import (Ada, F17, "system__finalization_masters__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, True, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, True, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, False, False, True, True, False, False, False, 
           False, False, True, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, False, True, 
           True, True, False, True, True, False, True, True, 
           True, True, False, True, False, True, False, False, 
           True, True, False, True, True, False, False, False, 
           True, False, True, True, True, False, False, True, 
           False, False, True, False, True, True, False, True, 
           True, True, False, True, False, False, False, True, 
           False, True, True, False, True, False),
         Count => (0, 0, 0, 1, 0, 1, 1, 0, 2, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      System.Scalar_Values.Initialize ('I', 'N');

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Fat_Flt'Elab_Spec;
      E188 := E188 + 1;
      System.Fat_Lflt'Elab_Spec;
      E191 := E191 + 1;
      System.Fat_Llf'Elab_Spec;
      E178 := E178 + 1;
      System.Exception_Table'Elab_Body;
      E024 := E024 + 1;
      Ada.Containers'Elab_Spec;
      E112 := E112 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E061 := E061 + 1;
      Ada.Strings'Elab_Spec;
      E143 := E143 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E060 := E060 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E026 := E026 + 1;
      System.Finalization_Root'Elab_Spec;
      E070 := E070 + 1;
      Ada.Finalization'Elab_Spec;
      E068 := E068 + 1;
      System.Storage_Pools'Elab_Spec;
      E087 := E087 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E132 := E132 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E101 := E101 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E099 := E099 + 1;
      System.Pool_Global'Elab_Spec;
      E089 := E089 + 1;
      System.File_Control_Block'Elab_Spec;
      E077 := E077 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E195 := E195 + 1;
      Gnat.Sockets'Elab_Spec;
      System.Pool_Size'Elab_Spec;
      E244 := E244 + 1;
      System.File_Io'Elab_Body;
      E066 := E066 + 1;
      E093 := E093 + 1;
      System.Finalization_Masters'Elab_Body;
      E079 := E079 + 1;
      E122 := E122 + 1;
      E072 := E072 + 1;
      Ada.Tags'Elab_Body;
      E045 := E045 + 1;
      E149 := E149 + 1;
      System.Soft_Links'Elab_Body;
      E014 := E014 + 1;
      System.Os_Lib'Elab_Body;
      E074 := E074 + 1;
      System.Secondary_Stack'Elab_Body;
      E018 := E018 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E145 := E145 + 1;
      Gnat.Sockets.Thin_Common'Elab_Spec;
      E242 := E242 + 1;
      Gnat.Sockets.Thin'Elab_Body;
      E240 := E240 + 1;
      Gnat.Sockets'Elab_Body;
      E237 := E237 + 1;
      System.Strings.Stream_Ops'Elab_Body;
      E193 := E193 + 1;
      System.Tasking.Initialization'Elab_Body;
      E218 := E218 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E114 := E114 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E058 := E058 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E206 := E206 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E214 := E214 + 1;
      System.Tasking.Queuing'Elab_Body;
      E226 := E226 + 1;
      System.Tasking.Stages'Elab_Body;
      E234 := E234 + 1;
      Connection'Elab_Spec;
      Connection_Msgs'Elab_Spec;
      Connection'Elab_Body;
      E097 := E097 + 1;
      E006 := E006 + 1;
      Valuetypes'Elab_Spec;
      E198 := E198 + 1;
      Client_Msgs'Elab_Spec;
      Server_Services'Elab_Body;
      E166 := E166 + 1;
      E169 := E169 + 1;
      E164 := E164 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_server_test");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\connection.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\server.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\server_test.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\valuetypes.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\server_services.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\client_msgs.o
   --   D:\Skola\Semestralka\ada_homework_water_bank\server\wrk\connection_msgs.o
   --   -LD:\Skola\Semestralka\ada_homework_water_bank\server\wrk\
   --   -LD:\Skola\Semestralka\ada_homework_water_bank\server\wrk\
   --   -LD:/GNATPRO/7.3.0w-20140613/lib/gcc/i686-pc-mingw32/4.7.4/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -lws2_32
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
