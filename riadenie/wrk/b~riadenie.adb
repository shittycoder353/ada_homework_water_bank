pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~riadenie.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~riadenie.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E118 : Short_Integer; pragma Import (Ada, E118, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "system__fat_lflt_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__fat_llf_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "ada__containers_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__io_exceptions_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "ada__strings__maps_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "ada__tags_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__streams_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "interfaces__c_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "interfaces__c__strings_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "system__finalization_root_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__finalization_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "system__storage_pools_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "system__finalization_masters_E");
   E086 : Short_Integer; pragma Import (Ada, E086, "system__storage_pools__subpools_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__task_info_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__pool_global_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__file_control_block_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "ada__streams__stream_io_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__file_io_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "gnat__sockets_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__pool_size_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__strings__unbounded_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "gnat__sockets__thin_common_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "gnat__sockets__thin_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "system__strings__stream_ops_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "system__tasking__initialization_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "ada__real_time_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__text_io_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "system__tasking__protected_objects_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "system__tasking__protected_objects__entries_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__tasking__queuing_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__tasking__stages_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "connection_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "client_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "connection_msgs_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "valuetypes_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "client_msgs_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E218 := E218 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "client_msgs__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "connection__finalize_body");
      begin
         E152 := E152 - 1;
         F2;
      end;
      E181 := E181 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "connection_msgs__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "connection__finalize_spec");
      begin
         F4;
      end;
      E196 := E196 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F5;
      end;
      E111 := E111 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__text_io__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gnat__sockets__finalize_body");
      begin
         E130 := E130 - 1;
         F7;
      end;
      E058 := E058 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__strings__unbounded__finalize_spec");
      begin
         F8;
      end;
      E090 := E090 - 1;
      E086 := E086 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E116 := E116 - 1;
         F9;
      end;
      E141 := E141 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__pool_size__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gnat__sockets__finalize_spec");
      begin
         F11;
      end;
      E188 := E188 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "ada__streams__stream_io__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "system__file_control_block__finalize_spec");
      begin
         E121 := E121 - 1;
         F13;
      end;
      E123 := E123 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "system__pool_global__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "system__storage_pools__subpools__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "system__finalization_masters__finalize_spec");
      begin
         F16;
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
         Count => (0, 0, 0, 1, 0, 1, 1, 0, 1, 0),
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
      System.Fat_Lflt'Elab_Spec;
      E219 := E219 + 1;
      System.Fat_Llf'Elab_Spec;
      E222 := E222 + 1;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E155 := E155 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E099 := E099 + 1;
      Ada.Strings'Elab_Spec;
      E056 := E056 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E098 := E098 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Finalization_Root'Elab_Spec;
      E101 := E101 + 1;
      Ada.Finalization'Elab_Spec;
      E096 := E096 + 1;
      System.Storage_Pools'Elab_Spec;
      E103 := E103 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E173 := E173 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      E123 := E123 + 1;
      System.File_Control_Block'Elab_Spec;
      E121 := E121 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E188 := E188 + 1;
      Gnat.Sockets'Elab_Spec;
      System.Pool_Size'Elab_Spec;
      E141 := E141 + 1;
      System.File_Io'Elab_Body;
      E116 := E116 + 1;
      E086 := E086 + 1;
      System.Finalization_Masters'Elab_Body;
      E090 := E090 + 1;
      E135 := E135 + 1;
      E047 := E047 + 1;
      Ada.Tags'Elab_Body;
      E069 := E069 + 1;
      E062 := E062 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      System.Os_Lib'Elab_Body;
      E118 := E118 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E058 := E058 + 1;
      Gnat.Sockets.Thin_Common'Elab_Spec;
      E137 := E137 + 1;
      Gnat.Sockets.Thin'Elab_Body;
      E133 := E133 + 1;
      Gnat.Sockets'Elab_Body;
      E130 := E130 + 1;
      System.Strings.Stream_Ops'Elab_Body;
      E186 := E186 + 1;
      System.Tasking.Initialization'Elab_Body;
      E200 := E200 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E157 := E157 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E111 := E111 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E190 := E190 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E196 := E196 + 1;
      System.Tasking.Queuing'Elab_Body;
      E208 := E208 + 1;
      System.Tasking.Stages'Elab_Body;
      E216 := E216 + 1;
      Connection'Elab_Spec;
      E127 := E127 + 1;
      Connection_Msgs'Elab_Spec;
      E181 := E181 + 1;
      Connection'Elab_Body;
      E152 := E152 + 1;
      Valuetypes'Elab_Spec;
      E228 := E228 + 1;
      Client_Msgs'Elab_Spec;
      E218 := E218 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_riadenie");

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
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\client.o
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\connection_msgs.o
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\connection.o
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\valuetypes.o
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\client_msgs.o
   --   D:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\riadenie.o
   --   -LD:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\
   --   -LD:\Skola-ada\semestralka2\ada_homework_water_bank\riadenie\wrk\
   --   -LC:/Programy/7.3.0w-20140613/lib/gcc/i686-pc-mingw32/4.7.4/adalib/
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
