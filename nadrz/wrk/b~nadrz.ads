pragma Ada_95;
with System;
with System.Scalar_Values;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Pro 7.3.0w (20140613-47)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_nadrz" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#551dbc6d#;
   pragma Export (C, u00001, "nadrzB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#5c291747#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#030467d8#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#474dd4b1#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#65712768#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#e791e294#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#1d14e809#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#b61f263f#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#a46739c0#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#3aac8c92#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#5fc8ae56#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#a207fefe#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#04927f81#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#21e2a329#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#b19b6653#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#f4a9613f#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#720be452#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#d177c5be#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#f1d1c843#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#37abc3a0#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#37d758f1#;
   pragma Export (C, u00028, "system__exceptions__machineS");
   u00029 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00029, "system__exceptions_debugB");
   u00030 : constant Version_32 := 16#ec2ab7e8#;
   pragma Export (C, u00030, "system__exceptions_debugS");
   u00031 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00031, "system__img_intB");
   u00032 : constant Version_32 := 16#5d134e94#;
   pragma Export (C, u00032, "system__img_intS");
   u00033 : constant Version_32 := 16#b98c3e16#;
   pragma Export (C, u00033, "system__tracebackB");
   u00034 : constant Version_32 := 16#c1f5778d#;
   pragma Export (C, u00034, "system__tracebackS");
   u00035 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00035, "system__traceback_entriesB");
   u00036 : constant Version_32 := 16#5f935826#;
   pragma Export (C, u00036, "system__traceback_entriesS");
   u00037 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00037, "system__wch_conB");
   u00038 : constant Version_32 := 16#44b58c84#;
   pragma Export (C, u00038, "system__wch_conS");
   u00039 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00039, "system__wch_stwB");
   u00040 : constant Version_32 := 16#69a4a085#;
   pragma Export (C, u00040, "system__wch_stwS");
   u00041 : constant Version_32 := 16#1d0f0c20#;
   pragma Export (C, u00041, "system__wch_cnvB");
   u00042 : constant Version_32 := 16#4b023677#;
   pragma Export (C, u00042, "system__wch_cnvS");
   u00043 : constant Version_32 := 16#ef8b39d4#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00044, "system__wch_jisB");
   u00045 : constant Version_32 := 16#cb722f56#;
   pragma Export (C, u00045, "system__wch_jisS");
   u00046 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00046, "interfaces__cB");
   u00047 : constant Version_32 := 16#c5802530#;
   pragma Export (C, u00047, "interfaces__cS");
   u00048 : constant Version_32 := 16#d950d226#;
   pragma Export (C, u00048, "system__os_primitivesB");
   u00049 : constant Version_32 := 16#ef19227f#;
   pragma Export (C, u00049, "system__os_primitivesS");
   u00050 : constant Version_32 := 16#0881bbf8#;
   pragma Export (C, u00050, "system__task_lockB");
   u00051 : constant Version_32 := 16#3e429938#;
   pragma Export (C, u00051, "system__task_lockS");
   u00052 : constant Version_32 := 16#bc10dd48#;
   pragma Export (C, u00052, "system__win32S");
   u00053 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00053, "system__win32__extS");
   u00054 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00054, "system__tracesB");
   u00055 : constant Version_32 := 16#add5c6fc#;
   pragma Export (C, u00055, "system__tracesS");
   u00056 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00056, "ada__numericsS");
   u00057 : constant Version_32 := 16#ac5daf3d#;
   pragma Export (C, u00057, "ada__numerics__float_randomB");
   u00058 : constant Version_32 := 16#ac27f55b#;
   pragma Export (C, u00058, "ada__numerics__float_randomS");
   u00059 : constant Version_32 := 16#7d41de2c#;
   pragma Export (C, u00059, "system__random_numbersB");
   u00060 : constant Version_32 := 16#eef0a888#;
   pragma Export (C, u00060, "system__random_numbersS");
   u00061 : constant Version_32 := 16#eef535cd#;
   pragma Export (C, u00061, "system__img_unsB");
   u00062 : constant Version_32 := 16#5d643661#;
   pragma Export (C, u00062, "system__img_unsS");
   u00063 : constant Version_32 := 16#c2900a96#;
   pragma Export (C, u00063, "system__unsigned_typesS");
   u00064 : constant Version_32 := 16#7d397bc7#;
   pragma Export (C, u00064, "system__random_seedB");
   u00065 : constant Version_32 := 16#b1e6ecb1#;
   pragma Export (C, u00065, "system__random_seedS");
   u00066 : constant Version_32 := 16#8e3884c7#;
   pragma Export (C, u00066, "system__val_unsB");
   u00067 : constant Version_32 := 16#d238e7ad#;
   pragma Export (C, u00067, "system__val_unsS");
   u00068 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00068, "system__val_utilB");
   u00069 : constant Version_32 := 16#f36818a8#;
   pragma Export (C, u00069, "system__val_utilS");
   u00070 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00070, "system__case_utilB");
   u00071 : constant Version_32 := 16#7bc1c781#;
   pragma Export (C, u00071, "system__case_utilS");
   u00072 : constant Version_32 := 16#3c73e194#;
   pragma Export (C, u00072, "ada__real_timeB");
   u00073 : constant Version_32 := 16#41de19c7#;
   pragma Export (C, u00073, "ada__real_timeS");
   u00074 : constant Version_32 := 16#90213489#;
   pragma Export (C, u00074, "system__arith_64B");
   u00075 : constant Version_32 := 16#f00e3270#;
   pragma Export (C, u00075, "system__arith_64S");
   u00076 : constant Version_32 := 16#5266e242#;
   pragma Export (C, u00076, "system__taskingB");
   u00077 : constant Version_32 := 16#2ddef248#;
   pragma Export (C, u00077, "system__taskingS");
   u00078 : constant Version_32 := 16#1da6a0d9#;
   pragma Export (C, u00078, "system__task_primitivesS");
   u00079 : constant Version_32 := 16#9d17a46c#;
   pragma Export (C, u00079, "system__os_interfaceS");
   u00080 : constant Version_32 := 16#877b0450#;
   pragma Export (C, u00080, "interfaces__c__stringsB");
   u00081 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00081, "interfaces__c__stringsS");
   u00082 : constant Version_32 := 16#620a8e52#;
   pragma Export (C, u00082, "system__task_primitives__operationsB");
   u00083 : constant Version_32 := 16#db31c76c#;
   pragma Export (C, u00083, "system__task_primitives__operationsS");
   u00084 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00084, "system__float_controlB");
   u00085 : constant Version_32 := 16#bf34ed6a#;
   pragma Export (C, u00085, "system__float_controlS");
   u00086 : constant Version_32 := 16#1826115c#;
   pragma Export (C, u00086, "system__interrupt_managementB");
   u00087 : constant Version_32 := 16#a0a25a36#;
   pragma Export (C, u00087, "system__interrupt_managementS");
   u00088 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00088, "system__multiprocessorsB");
   u00089 : constant Version_32 := 16#67643125#;
   pragma Export (C, u00089, "system__multiprocessorsS");
   u00090 : constant Version_32 := 16#b5dc4d53#;
   pragma Export (C, u00090, "system__task_infoB");
   u00091 : constant Version_32 := 16#882ea7a1#;
   pragma Export (C, u00091, "system__task_infoS");
   u00092 : constant Version_32 := 16#1a64bd81#;
   pragma Export (C, u00092, "system__tasking__debugB");
   u00093 : constant Version_32 := 16#33589e0b#;
   pragma Export (C, u00093, "system__tasking__debugS");
   u00094 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00094, "system__concat_2B");
   u00095 : constant Version_32 := 16#5d687986#;
   pragma Export (C, u00095, "system__concat_2S");
   u00096 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00096, "system__concat_3B");
   u00097 : constant Version_32 := 16#54b8f2f3#;
   pragma Export (C, u00097, "system__concat_3S");
   u00098 : constant Version_32 := 16#ebdc12b4#;
   pragma Export (C, u00098, "system__crtlS");
   u00099 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00099, "system__img_enum_newB");
   u00100 : constant Version_32 := 16#3e84a896#;
   pragma Export (C, u00100, "system__img_enum_newS");
   u00101 : constant Version_32 := 16#d50becb1#;
   pragma Export (C, u00101, "system__stack_usageB");
   u00102 : constant Version_32 := 16#8f04a8fa#;
   pragma Export (C, u00102, "system__stack_usageS");
   u00103 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00103, "system__ioB");
   u00104 : constant Version_32 := 16#c18a5919#;
   pragma Export (C, u00104, "system__ioS");
   u00105 : constant Version_32 := 16#12c8cd7d#;
   pragma Export (C, u00105, "ada__tagsB");
   u00106 : constant Version_32 := 16#ce72c228#;
   pragma Export (C, u00106, "ada__tagsS");
   u00107 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00107, "system__htableB");
   u00108 : constant Version_32 := 16#db0a1dbc#;
   pragma Export (C, u00108, "system__htableS");
   u00109 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00109, "system__string_hashB");
   u00110 : constant Version_32 := 16#795476c2#;
   pragma Export (C, u00110, "system__string_hashS");
   u00111 : constant Version_32 := 16#df5e05ba#;
   pragma Export (C, u00111, "ada__text_ioB");
   u00112 : constant Version_32 := 16#82b6c5ef#;
   pragma Export (C, u00112, "ada__text_ioS");
   u00113 : constant Version_32 := 16#237e6c85#;
   pragma Export (C, u00113, "ada__streamsB");
   u00114 : constant Version_32 := 16#1d4ce63f#;
   pragma Export (C, u00114, "ada__streamsS");
   u00115 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00115, "ada__io_exceptionsS");
   u00116 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00116, "interfaces__c_streamsB");
   u00117 : constant Version_32 := 16#c08803c7#;
   pragma Export (C, u00117, "interfaces__c_streamsS");
   u00118 : constant Version_32 := 16#31d59c9b#;
   pragma Export (C, u00118, "system__file_ioB");
   u00119 : constant Version_32 := 16#f8b94f33#;
   pragma Export (C, u00119, "system__file_ioS");
   u00120 : constant Version_32 := 16#b7ab275c#;
   pragma Export (C, u00120, "ada__finalizationB");
   u00121 : constant Version_32 := 16#19f764ca#;
   pragma Export (C, u00121, "ada__finalizationS");
   u00122 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00122, "system__finalization_rootB");
   u00123 : constant Version_32 := 16#103addc6#;
   pragma Export (C, u00123, "system__finalization_rootS");
   u00124 : constant Version_32 := 16#6436028b#;
   pragma Export (C, u00124, "system__os_libB");
   u00125 : constant Version_32 := 16#6c8c55de#;
   pragma Export (C, u00125, "system__os_libS");
   u00126 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00126, "system__stringsB");
   u00127 : constant Version_32 := 16#2177bf30#;
   pragma Export (C, u00127, "system__stringsS");
   u00128 : constant Version_32 := 16#55f9b986#;
   pragma Export (C, u00128, "system__file_control_blockS");
   u00129 : constant Version_32 := 16#b5b2aca1#;
   pragma Export (C, u00129, "system__finalization_mastersB");
   u00130 : constant Version_32 := 16#2bde8716#;
   pragma Export (C, u00130, "system__finalization_mastersS");
   u00131 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00131, "system__address_imageB");
   u00132 : constant Version_32 := 16#fe24336c#;
   pragma Export (C, u00132, "system__address_imageS");
   u00133 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00133, "system__img_boolB");
   u00134 : constant Version_32 := 16#aa11dfbd#;
   pragma Export (C, u00134, "system__img_boolS");
   u00135 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00135, "system__storage_poolsB");
   u00136 : constant Version_32 := 16#aa9329d2#;
   pragma Export (C, u00136, "system__storage_poolsS");
   u00137 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00137, "system__pool_globalB");
   u00138 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00138, "system__pool_globalS");
   u00139 : constant Version_32 := 16#2bce1226#;
   pragma Export (C, u00139, "system__memoryB");
   u00140 : constant Version_32 := 16#06b5c862#;
   pragma Export (C, u00140, "system__memoryS");
   u00141 : constant Version_32 := 16#6a859064#;
   pragma Export (C, u00141, "system__storage_pools__subpoolsB");
   u00142 : constant Version_32 := 16#e3b008dc#;
   pragma Export (C, u00142, "system__storage_pools__subpoolsS");
   u00143 : constant Version_32 := 16#63f11652#;
   pragma Export (C, u00143, "system__storage_pools__subpools__finalizationB");
   u00144 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00144, "system__storage_pools__subpools__finalizationS");
   u00145 : constant Version_32 := 16#9cb0e1f4#;
   pragma Export (C, u00145, "clientB");
   u00146 : constant Version_32 := 16#1a6386a3#;
   pragma Export (C, u00146, "clientS");
   u00147 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00147, "gnatS");
   u00148 : constant Version_32 := 16#8f29e4d8#;
   pragma Export (C, u00148, "gnat__socketsB");
   u00149 : constant Version_32 := 16#f82cbc33#;
   pragma Export (C, u00149, "gnat__socketsS");
   u00150 : constant Version_32 := 16#f8b8cc5a#;
   pragma Export (C, u00150, "gnat__sockets__linker_optionsS");
   u00151 : constant Version_32 := 16#1b550d7f#;
   pragma Export (C, u00151, "gnat__sockets__thinB");
   u00152 : constant Version_32 := 16#133c7ac6#;
   pragma Export (C, u00152, "gnat__sockets__thinS");
   u00153 : constant Version_32 := 16#0a2632e6#;
   pragma Export (C, u00153, "gnat__sockets__thin_commonB");
   u00154 : constant Version_32 := 16#5de24e36#;
   pragma Export (C, u00154, "gnat__sockets__thin_commonS");
   u00155 : constant Version_32 := 16#5de653db#;
   pragma Export (C, u00155, "system__communicationB");
   u00156 : constant Version_32 := 16#b10676fc#;
   pragma Export (C, u00156, "system__communicationS");
   u00157 : constant Version_32 := 16#994daa60#;
   pragma Export (C, u00157, "system__pool_sizeB");
   u00158 : constant Version_32 := 16#5ee6e60f#;
   pragma Export (C, u00158, "system__pool_sizeS");
   u00159 : constant Version_32 := 16#34adba78#;
   pragma Export (C, u00159, "system__val_intB");
   u00160 : constant Version_32 := 16#176d8469#;
   pragma Export (C, u00160, "system__val_intS");
   u00161 : constant Version_32 := 16#9d31e4a7#;
   pragma Export (C, u00161, "system__os_constantsS");
   u00162 : constant Version_32 := 16#dfb02f8b#;
   pragma Export (C, u00162, "system__scalar_valuesB");
   u00163 : constant Version_32 := 16#e16ca901#;
   pragma Export (C, u00163, "system__scalar_valuesS");
   u00164 : constant Version_32 := 16#8a013bb1#;
   pragma Export (C, u00164, "connectionB");
   u00165 : constant Version_32 := 16#7133b9ec#;
   pragma Export (C, u00165, "connectionS");
   u00166 : constant Version_32 := 16#d9fb597b#;
   pragma Export (C, u00166, "ada__command_lineB");
   u00167 : constant Version_32 := 16#d59e21a4#;
   pragma Export (C, u00167, "ada__command_lineS");
   u00168 : constant Version_32 := 16#5e196e91#;
   pragma Export (C, u00168, "ada__containersS");
   u00169 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00169, "ada__stringsS");
   u00170 : constant Version_32 := 16#261c554b#;
   pragma Export (C, u00170, "ada__strings__unboundedB");
   u00171 : constant Version_32 := 16#e303cf90#;
   pragma Export (C, u00171, "ada__strings__unboundedS");
   u00172 : constant Version_32 := 16#c093955c#;
   pragma Export (C, u00172, "ada__strings__searchB");
   u00173 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00173, "ada__strings__searchS");
   u00174 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00174, "ada__strings__mapsB");
   u00175 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00175, "ada__strings__mapsS");
   u00176 : constant Version_32 := 16#ea955335#;
   pragma Export (C, u00176, "system__bit_opsB");
   u00177 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00177, "system__bit_opsS");
   u00178 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00178, "ada__charactersS");
   u00179 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00179, "ada__characters__latin_1S");
   u00180 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00180, "system__compare_array_unsigned_8B");
   u00181 : constant Version_32 := 16#f6cbdfdb#;
   pragma Export (C, u00181, "system__compare_array_unsigned_8S");
   u00182 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00182, "system__address_operationsB");
   u00183 : constant Version_32 := 16#4cc41065#;
   pragma Export (C, u00183, "system__address_operationsS");
   u00184 : constant Version_32 := 16#5073d598#;
   pragma Export (C, u00184, "system__machine_codeS");
   u00185 : constant Version_32 := 16#e5ac57f8#;
   pragma Export (C, u00185, "system__atomic_countersB");
   u00186 : constant Version_32 := 16#92b43a9c#;
   pragma Export (C, u00186, "system__atomic_countersS");
   u00187 : constant Version_32 := 16#c7ca2705#;
   pragma Export (C, u00187, "system__stream_attributesB");
   u00188 : constant Version_32 := 16#11363599#;
   pragma Export (C, u00188, "system__stream_attributesS");
   u00189 : constant Version_32 := 16#d01a6cec#;
   pragma Export (C, u00189, "connection_msgsB");
   u00190 : constant Version_32 := 16#ee1739ac#;
   pragma Export (C, u00190, "connection_msgsS");
   u00191 : constant Version_32 := 16#13f48dbb#;
   pragma Export (C, u00191, "gnat__os_libS");
   u00192 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00192, "system__concat_4B");
   u00193 : constant Version_32 := 16#21ac8576#;
   pragma Export (C, u00193, "system__concat_4S");
   u00194 : constant Version_32 := 16#9ee6eca8#;
   pragma Export (C, u00194, "system__strings__stream_opsB");
   u00195 : constant Version_32 := 16#66ff5ac3#;
   pragma Export (C, u00195, "system__strings__stream_opsS");
   u00196 : constant Version_32 := 16#c8984275#;
   pragma Export (C, u00196, "ada__streams__stream_ioB");
   u00197 : constant Version_32 := 16#02d76996#;
   pragma Export (C, u00197, "ada__streams__stream_ioS");
   u00198 : constant Version_32 := 16#5933ea28#;
   pragma Export (C, u00198, "system__tasking__protected_objectsB");
   u00199 : constant Version_32 := 16#1d7c0e4c#;
   pragma Export (C, u00199, "system__tasking__protected_objectsS");
   u00200 : constant Version_32 := 16#7ed69973#;
   pragma Export (C, u00200, "system__soft_links__taskingB");
   u00201 : constant Version_32 := 16#e47ef8be#;
   pragma Export (C, u00201, "system__soft_links__taskingS");
   u00202 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00202, "ada__exceptions__is_null_occurrenceB");
   u00203 : constant Version_32 := 16#9a9e8fd3#;
   pragma Export (C, u00203, "ada__exceptions__is_null_occurrenceS");
   u00204 : constant Version_32 := 16#3ea9332d#;
   pragma Export (C, u00204, "system__tasking__protected_objects__entriesB");
   u00205 : constant Version_32 := 16#7671a6ef#;
   pragma Export (C, u00205, "system__tasking__protected_objects__entriesS");
   u00206 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00206, "system__restrictionsB");
   u00207 : constant Version_32 := 16#1344a388#;
   pragma Export (C, u00207, "system__restrictionsS");
   u00208 : constant Version_32 := 16#e7aedb66#;
   pragma Export (C, u00208, "system__tasking__initializationB");
   u00209 : constant Version_32 := 16#a75a01f7#;
   pragma Export (C, u00209, "system__tasking__initializationS");
   u00210 : constant Version_32 := 16#9d8adc03#;
   pragma Export (C, u00210, "system__tasking__task_attributesB");
   u00211 : constant Version_32 := 16#ebe2c101#;
   pragma Export (C, u00211, "system__tasking__task_attributesS");
   u00212 : constant Version_32 := 16#6f8919f6#;
   pragma Export (C, u00212, "system__tasking__protected_objects__operationsB");
   u00213 : constant Version_32 := 16#eb67f071#;
   pragma Export (C, u00213, "system__tasking__protected_objects__operationsS");
   u00214 : constant Version_32 := 16#72d3cb03#;
   pragma Export (C, u00214, "system__tasking__entry_callsB");
   u00215 : constant Version_32 := 16#97ca5703#;
   pragma Export (C, u00215, "system__tasking__entry_callsS");
   u00216 : constant Version_32 := 16#94c4f9d9#;
   pragma Export (C, u00216, "system__tasking__queuingB");
   u00217 : constant Version_32 := 16#4fdeb9ae#;
   pragma Export (C, u00217, "system__tasking__queuingS");
   u00218 : constant Version_32 := 16#c6ee4b22#;
   pragma Export (C, u00218, "system__tasking__utilitiesB");
   u00219 : constant Version_32 := 16#e1f3a279#;
   pragma Export (C, u00219, "system__tasking__utilitiesS");
   u00220 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00220, "system__traces__taskingB");
   u00221 : constant Version_32 := 16#417829ba#;
   pragma Export (C, u00221, "system__traces__taskingS");
   u00222 : constant Version_32 := 16#3cc73d8e#;
   pragma Export (C, u00222, "system__tasking__rendezvousB");
   u00223 : constant Version_32 := 16#0f35ecc7#;
   pragma Export (C, u00223, "system__tasking__rendezvousS");
   u00224 : constant Version_32 := 16#cd12cb65#;
   pragma Export (C, u00224, "system__tasking__stagesB");
   u00225 : constant Version_32 := 16#401a77c8#;
   pragma Export (C, u00225, "system__tasking__stagesS");
   u00226 : constant Version_32 := 16#a0eb510f#;
   pragma Export (C, u00226, "client_msgsB");
   u00227 : constant Version_32 := 16#fd9c5fa2#;
   pragma Export (C, u00227, "client_msgsS");
   u00228 : constant Version_32 := 16#fa23de8c#;
   pragma Export (C, u00228, "system__fat_lfltS");
   u00229 : constant Version_32 := 16#9ab97975#;
   pragma Export (C, u00229, "system__img_realB");
   u00230 : constant Version_32 := 16#9860ffb4#;
   pragma Export (C, u00230, "system__img_realS");
   u00231 : constant Version_32 := 16#80f37066#;
   pragma Export (C, u00231, "system__fat_llfS");
   u00232 : constant Version_32 := 16#f1f88835#;
   pragma Export (C, u00232, "system__img_lluB");
   u00233 : constant Version_32 := 16#8b590a55#;
   pragma Export (C, u00233, "system__img_lluS");
   u00234 : constant Version_32 := 16#0fb8c821#;
   pragma Export (C, u00234, "system__powten_tableS");
   u00235 : constant Version_32 := 16#7d56f577#;
   pragma Export (C, u00235, "valuetypesS");
   u00236 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00236, "ada__strings__boundedB");
   u00237 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00237, "ada__strings__boundedS");
   u00238 : constant Version_32 := 16#a9b52bad#;
   pragma Export (C, u00238, "ada__strings__superboundedB");
   u00239 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00239, "ada__strings__superboundedS");
   u00240 : constant Version_32 := 16#dc11d781#;
   pragma Export (C, u00240, "system__fat_fltS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.arith_64%s
   --  system.atomic_counters%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.val_int%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.superbounded%s
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.communication%s
   --  system.communication%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.os_constants%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.win32.ext%s
   --  system.task_primitives.operations%b
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  ada.streams.stream_io%s
   --  system.file_io%s
   --  ada.streams.stream_io%b
   --  gnat.sockets%s
   --  gnat.sockets.linker_options%s
   --  system.pool_size%s
   --  system.pool_size%b
   --  system.random_numbers%s
   --  ada.numerics.float_random%s
   --  ada.numerics.float_random%b
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.scalar_values%s
   --  system.scalar_values%b
   --  system.secondary_stack%s
   --  system.file_io%b
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.superbounded%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.command_line%b
   --  system.secondary_stack%b
   --  system.random_numbers%b
   --  system.address_image%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  gnat.sockets.thin_common%s
   --  gnat.sockets.thin_common%b
   --  gnat.sockets.thin%s
   --  gnat.sockets.thin%b
   --  gnat.sockets%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.strings.stream_ops%s
   --  system.strings.stream_ops%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.utilities%s
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  connection%s
   --  client%s
   --  client%b
   --  connection_msgs%s
   --  connection_msgs%b
   --  connection%b
   --  valuetypes%s
   --  client_msgs%s
   --  client_msgs%b
   --  nadrz%b
   --  END ELABORATION ORDER


end ada_main;
