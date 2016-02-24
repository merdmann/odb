pragma Ada_95;
with System;
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
                    "GNAT Version: GPL 2015 (20150428-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test_runner" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#ca2a7db3#;
   pragma Export (C, u00001, "test_runnerB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#f72f352b#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#72fd7b17#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#d59e21a4#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#f4ce8c3a#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#b19b6653#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#5faf4353#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00010, "system__parametersB");
   u00011 : constant Version_32 := 16#8ae48145#;
   pragma Export (C, u00011, "system__parametersS");
   u00012 : constant Version_32 := 16#a207fefe#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#af945ded#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#b612ca65#;
   pragma Export (C, u00014, "ada__exceptionsB");
   u00015 : constant Version_32 := 16#1d190453#;
   pragma Export (C, u00015, "ada__exceptionsS");
   u00016 : constant Version_32 := 16#a46739c0#;
   pragma Export (C, u00016, "ada__exceptions__last_chance_handlerB");
   u00017 : constant Version_32 := 16#3aac8c92#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerS");
   u00018 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00018, "system__exception_tableB");
   u00019 : constant Version_32 := 16#5ad7ea2f#;
   pragma Export (C, u00019, "system__exception_tableS");
   u00020 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00020, "system__exceptionsB");
   u00021 : constant Version_32 := 16#9cade1cc#;
   pragma Export (C, u00021, "system__exceptionsS");
   u00022 : constant Version_32 := 16#37d758f1#;
   pragma Export (C, u00022, "system__exceptions__machineS");
   u00023 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00023, "system__exceptions_debugB");
   u00024 : constant Version_32 := 16#472c9584#;
   pragma Export (C, u00024, "system__exceptions_debugS");
   u00025 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00025, "system__img_intB");
   u00026 : constant Version_32 := 16#f6156cf8#;
   pragma Export (C, u00026, "system__img_intS");
   u00027 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00027, "system__storage_elementsB");
   u00028 : constant Version_32 := 16#d90dc63e#;
   pragma Export (C, u00028, "system__storage_elementsS");
   u00029 : constant Version_32 := 16#b98c3e16#;
   pragma Export (C, u00029, "system__tracebackB");
   u00030 : constant Version_32 := 16#6af355e1#;
   pragma Export (C, u00030, "system__tracebackS");
   u00031 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00031, "system__traceback_entriesB");
   u00032 : constant Version_32 := 16#f4957a4a#;
   pragma Export (C, u00032, "system__traceback_entriesS");
   u00033 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00033, "system__wch_conB");
   u00034 : constant Version_32 := 16#efb3aee8#;
   pragma Export (C, u00034, "system__wch_conS");
   u00035 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00035, "system__wch_stwB");
   u00036 : constant Version_32 := 16#c2a282e9#;
   pragma Export (C, u00036, "system__wch_stwS");
   u00037 : constant Version_32 := 16#92b797cb#;
   pragma Export (C, u00037, "system__wch_cnvB");
   u00038 : constant Version_32 := 16#e004141b#;
   pragma Export (C, u00038, "system__wch_cnvS");
   u00039 : constant Version_32 := 16#6033a23f#;
   pragma Export (C, u00039, "interfacesS");
   u00040 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00040, "system__wch_jisB");
   u00041 : constant Version_32 := 16#60740d3a#;
   pragma Export (C, u00041, "system__wch_jisS");
   u00042 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00042, "system__stack_checkingB");
   u00043 : constant Version_32 := 16#7a71e7d2#;
   pragma Export (C, u00043, "system__stack_checkingS");
   u00044 : constant Version_32 := 16#fa79b673#;
   pragma Export (C, u00044, "aunitB");
   u00045 : constant Version_32 := 16#76cdf7c6#;
   pragma Export (C, u00045, "aunitS");
   u00046 : constant Version_32 := 16#b6c145a2#;
   pragma Export (C, u00046, "aunit__memoryB");
   u00047 : constant Version_32 := 16#22322aba#;
   pragma Export (C, u00047, "aunit__memoryS");
   u00048 : constant Version_32 := 16#e99cd447#;
   pragma Export (C, u00048, "aunit__optionsS");
   u00049 : constant Version_32 := 16#12c8cd7d#;
   pragma Export (C, u00049, "ada__tagsB");
   u00050 : constant Version_32 := 16#ce72c228#;
   pragma Export (C, u00050, "ada__tagsS");
   u00051 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00051, "system__htableB");
   u00052 : constant Version_32 := 16#700c3fd0#;
   pragma Export (C, u00052, "system__htableS");
   u00053 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00053, "system__string_hashB");
   u00054 : constant Version_32 := 16#d25254ae#;
   pragma Export (C, u00054, "system__string_hashS");
   u00055 : constant Version_32 := 16#699628fa#;
   pragma Export (C, u00055, "system__unsigned_typesS");
   u00056 : constant Version_32 := 16#b44f9ae7#;
   pragma Export (C, u00056, "system__val_unsB");
   u00057 : constant Version_32 := 16#793ec5c1#;
   pragma Export (C, u00057, "system__val_unsS");
   u00058 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00058, "system__val_utilB");
   u00059 : constant Version_32 := 16#586e3ac4#;
   pragma Export (C, u00059, "system__val_utilS");
   u00060 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00060, "system__case_utilB");
   u00061 : constant Version_32 := 16#d0c7e5ed#;
   pragma Export (C, u00061, "system__case_utilS");
   u00062 : constant Version_32 := 16#e9d6512d#;
   pragma Export (C, u00062, "aunit__test_filtersB");
   u00063 : constant Version_32 := 16#9a67cba8#;
   pragma Export (C, u00063, "aunit__test_filtersS");
   u00064 : constant Version_32 := 16#6e9501f4#;
   pragma Export (C, u00064, "aunit__simple_test_casesB");
   u00065 : constant Version_32 := 16#f9679d50#;
   pragma Export (C, u00065, "aunit__simple_test_casesS");
   u00066 : constant Version_32 := 16#8872fb1a#;
   pragma Export (C, u00066, "aunit__assertionsB");
   u00067 : constant Version_32 := 16#6db0f35e#;
   pragma Export (C, u00067, "aunit__assertionsS");
   u00068 : constant Version_32 := 16#11329e00#;
   pragma Export (C, u00068, "ada_containersS");
   u00069 : constant Version_32 := 16#58e5360d#;
   pragma Export (C, u00069, "ada_containers__aunit_listsB");
   u00070 : constant Version_32 := 16#c8d9569a#;
   pragma Export (C, u00070, "ada_containers__aunit_listsS");
   u00071 : constant Version_32 := 16#9b1c7ff2#;
   pragma Export (C, u00071, "aunit__memory__utilsB");
   u00072 : constant Version_32 := 16#fb2f6c57#;
   pragma Export (C, u00072, "aunit__memory__utilsS");
   u00073 : constant Version_32 := 16#01adf261#;
   pragma Export (C, u00073, "aunit__test_resultsB");
   u00074 : constant Version_32 := 16#1087836e#;
   pragma Export (C, u00074, "aunit__test_resultsS");
   u00075 : constant Version_32 := 16#9df5edcf#;
   pragma Export (C, u00075, "aunit__time_measureB");
   u00076 : constant Version_32 := 16#07f2df2f#;
   pragma Export (C, u00076, "aunit__time_measureS");
   u00077 : constant Version_32 := 16#649a98f6#;
   pragma Export (C, u00077, "ada__calendarB");
   u00078 : constant Version_32 := 16#e67a5d0a#;
   pragma Export (C, u00078, "ada__calendarS");
   u00079 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00079, "interfaces__cB");
   u00080 : constant Version_32 := 16#4a38bedb#;
   pragma Export (C, u00080, "interfaces__cS");
   u00081 : constant Version_32 := 16#f4bb3578#;
   pragma Export (C, u00081, "system__os_primitivesB");
   u00082 : constant Version_32 := 16#441f0013#;
   pragma Export (C, u00082, "system__os_primitivesS");
   u00083 : constant Version_32 := 16#0881bbf8#;
   pragma Export (C, u00083, "system__task_lockB");
   u00084 : constant Version_32 := 16#9544bb54#;
   pragma Export (C, u00084, "system__task_lockS");
   u00085 : constant Version_32 := 16#1716ff24#;
   pragma Export (C, u00085, "system__win32S");
   u00086 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00086, "system__win32__extS");
   u00087 : constant Version_32 := 16#6b6cea8f#;
   pragma Export (C, u00087, "aunit__testsS");
   u00088 : constant Version_32 := 16#b5b2aca1#;
   pragma Export (C, u00088, "system__finalization_mastersB");
   u00089 : constant Version_32 := 16#80d8a57a#;
   pragma Export (C, u00089, "system__finalization_mastersS");
   u00090 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00090, "system__address_imageB");
   u00091 : constant Version_32 := 16#55221100#;
   pragma Export (C, u00091, "system__address_imageS");
   u00092 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00092, "system__img_boolB");
   u00093 : constant Version_32 := 16#0117fdd1#;
   pragma Export (C, u00093, "system__img_boolS");
   u00094 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00094, "system__ioB");
   u00095 : constant Version_32 := 16#6a8c7b75#;
   pragma Export (C, u00095, "system__ioS");
   u00096 : constant Version_32 := 16#b7ab275c#;
   pragma Export (C, u00096, "ada__finalizationB");
   u00097 : constant Version_32 := 16#19f764ca#;
   pragma Export (C, u00097, "ada__finalizationS");
   u00098 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00098, "ada__streamsB");
   u00099 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00099, "ada__streamsS");
   u00100 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00100, "ada__io_exceptionsS");
   u00101 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00101, "system__finalization_rootB");
   u00102 : constant Version_32 := 16#bb3cffaa#;
   pragma Export (C, u00102, "system__finalization_rootS");
   u00103 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00103, "system__storage_poolsB");
   u00104 : constant Version_32 := 16#01950bbe#;
   pragma Export (C, u00104, "system__storage_poolsS");
   u00105 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00105, "system__pool_globalB");
   u00106 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00106, "system__pool_globalS");
   u00107 : constant Version_32 := 16#2bce1226#;
   pragma Export (C, u00107, "system__memoryB");
   u00108 : constant Version_32 := 16#adb3ea0e#;
   pragma Export (C, u00108, "system__memoryS");
   u00109 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00109, "gnatS");
   u00110 : constant Version_32 := 16#82fca8a5#;
   pragma Export (C, u00110, "gnat__source_infoS");
   u00111 : constant Version_32 := 16#6cae85f3#;
   pragma Export (C, u00111, "gnat__tracebackB");
   u00112 : constant Version_32 := 16#de6aefb8#;
   pragma Export (C, u00112, "gnat__tracebackS");
   u00113 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00113, "ada__exceptions__tracebackB");
   u00114 : constant Version_32 := 16#5b6d87c9#;
   pragma Export (C, u00114, "ada__exceptions__tracebackS");
   u00115 : constant Version_32 := 16#561b585b#;
   pragma Export (C, u00115, "gnat__traceback__symbolicS");
   u00116 : constant Version_32 := 16#66c20986#;
   pragma Export (C, u00116, "system__traceback__symbolicB");
   u00117 : constant Version_32 := 16#b5e41f97#;
   pragma Export (C, u00117, "system__traceback__symbolicS");
   u00118 : constant Version_32 := 16#2c7d263c#;
   pragma Export (C, u00118, "interfaces__c__stringsB");
   u00119 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00119, "interfaces__c__stringsS");
   u00120 : constant Version_32 := 16#7c65ffc9#;
   pragma Export (C, u00120, "system__dwarf_linesB");
   u00121 : constant Version_32 := 16#0a10adc4#;
   pragma Export (C, u00121, "system__dwarf_linesS");
   u00122 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00122, "ada__stringsS");
   u00123 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00123, "ada__strings__boundedB");
   u00124 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00124, "ada__strings__boundedS");
   u00125 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00125, "ada__strings__mapsB");
   u00126 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00126, "ada__strings__mapsS");
   u00127 : constant Version_32 := 16#41937159#;
   pragma Export (C, u00127, "system__bit_opsB");
   u00128 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00128, "system__bit_opsS");
   u00129 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00129, "ada__charactersS");
   u00130 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00130, "ada__characters__latin_1S");
   u00131 : constant Version_32 := 16#cf3b626b#;
   pragma Export (C, u00131, "ada__strings__superboundedB");
   u00132 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00132, "ada__strings__superboundedS");
   u00133 : constant Version_32 := 16#d22169ac#;
   pragma Export (C, u00133, "ada__strings__searchB");
   u00134 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00134, "ada__strings__searchS");
   u00135 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00135, "system__compare_array_unsigned_8B");
   u00136 : constant Version_32 := 16#5dcdfdb7#;
   pragma Export (C, u00136, "system__compare_array_unsigned_8S");
   u00137 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00137, "system__address_operationsB");
   u00138 : constant Version_32 := 16#e7c23209#;
   pragma Export (C, u00138, "system__address_operationsS");
   u00139 : constant Version_32 := 16#eef535cd#;
   pragma Export (C, u00139, "system__img_unsB");
   u00140 : constant Version_32 := 16#f662140d#;
   pragma Export (C, u00140, "system__img_unsS");
   u00141 : constant Version_32 := 16#8ce34df1#;
   pragma Export (C, u00141, "system__object_readerB");
   u00142 : constant Version_32 := 16#45728847#;
   pragma Export (C, u00142, "system__object_readerS");
   u00143 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00143, "interfaces__c_streamsB");
   u00144 : constant Version_32 := 16#8bb5f2c0#;
   pragma Export (C, u00144, "interfaces__c_streamsS");
   u00145 : constant Version_32 := 16#845f5a34#;
   pragma Export (C, u00145, "system__crtlS");
   u00146 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00146, "system__stream_attributesB");
   u00147 : constant Version_32 := 16#221dd20d#;
   pragma Export (C, u00147, "system__stream_attributesS");
   u00148 : constant Version_32 := 16#b3aa7b17#;
   pragma Export (C, u00148, "system__val_lliB");
   u00149 : constant Version_32 := 16#6eea6a9a#;
   pragma Export (C, u00149, "system__val_lliS");
   u00150 : constant Version_32 := 16#06052bd0#;
   pragma Export (C, u00150, "system__val_lluB");
   u00151 : constant Version_32 := 16#13647f88#;
   pragma Export (C, u00151, "system__val_lluS");
   u00152 : constant Version_32 := 16#17d955ab#;
   pragma Export (C, u00152, "aunit__reporterS");
   u00153 : constant Version_32 := 16#1c0d4e63#;
   pragma Export (C, u00153, "aunit__reporter__gnattestB");
   u00154 : constant Version_32 := 16#9cd34a09#;
   pragma Export (C, u00154, "aunit__reporter__gnattestS");
   u00155 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00155, "gnat__ioB");
   u00156 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00156, "gnat__ioS");
   u00157 : constant Version_32 := 16#b602a99c#;
   pragma Export (C, u00157, "system__exn_intB");
   u00158 : constant Version_32 := 16#b6429066#;
   pragma Export (C, u00158, "system__exn_intS");
   u00159 : constant Version_32 := 16#e11af2d7#;
   pragma Export (C, u00159, "aunit__runB");
   u00160 : constant Version_32 := 16#4b2a8016#;
   pragma Export (C, u00160, "aunit__runS");
   u00161 : constant Version_32 := 16#d01edb9b#;
   pragma Export (C, u00161, "aunit__test_suitesB");
   u00162 : constant Version_32 := 16#f3c7e671#;
   pragma Export (C, u00162, "aunit__test_suitesS");
   u00163 : constant Version_32 := 16#a8b4ea59#;
   pragma Export (C, u00163, "gnat__command_lineB");
   u00164 : constant Version_32 := 16#c4427fe3#;
   pragma Export (C, u00164, "gnat__command_lineS");
   u00165 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00165, "ada__characters__handlingB");
   u00166 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00166, "ada__characters__handlingS");
   u00167 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00167, "ada__strings__maps__constantsS");
   u00168 : constant Version_32 := 16#f78329ae#;
   pragma Export (C, u00168, "ada__strings__unboundedB");
   u00169 : constant Version_32 := 16#e303cf90#;
   pragma Export (C, u00169, "ada__strings__unboundedS");
   u00170 : constant Version_32 := 16#6a859064#;
   pragma Export (C, u00170, "system__storage_pools__subpoolsB");
   u00171 : constant Version_32 := 16#e3b008dc#;
   pragma Export (C, u00171, "system__storage_pools__subpoolsS");
   u00172 : constant Version_32 := 16#63f11652#;
   pragma Export (C, u00172, "system__storage_pools__subpools__finalizationB");
   u00173 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00173, "system__storage_pools__subpools__finalizationS");
   u00174 : constant Version_32 := 16#e5ac57f8#;
   pragma Export (C, u00174, "system__atomic_countersB");
   u00175 : constant Version_32 := 16#39b218f0#;
   pragma Export (C, u00175, "system__atomic_countersS");
   u00176 : constant Version_32 := 16#fb75f7f4#;
   pragma Export (C, u00176, "system__machine_codeS");
   u00177 : constant Version_32 := 16#28f088c2#;
   pragma Export (C, u00177, "ada__text_ioB");
   u00178 : constant Version_32 := 16#1a9b0017#;
   pragma Export (C, u00178, "ada__text_ioS");
   u00179 : constant Version_32 := 16#431faf3c#;
   pragma Export (C, u00179, "system__file_ioB");
   u00180 : constant Version_32 := 16#53bf6d5f#;
   pragma Export (C, u00180, "system__file_ioS");
   u00181 : constant Version_32 := 16#ee0f26dd#;
   pragma Export (C, u00181, "system__os_libB");
   u00182 : constant Version_32 := 16#d7b69782#;
   pragma Export (C, u00182, "system__os_libS");
   u00183 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00183, "system__stringsB");
   u00184 : constant Version_32 := 16#8a719d5c#;
   pragma Export (C, u00184, "system__stringsS");
   u00185 : constant Version_32 := 16#09511692#;
   pragma Export (C, u00185, "system__file_control_blockS");
   u00186 : constant Version_32 := 16#5b06e3fe#;
   pragma Export (C, u00186, "gnat__directory_operationsB");
   u00187 : constant Version_32 := 16#75536bb9#;
   pragma Export (C, u00187, "gnat__directory_operationsS");
   u00188 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00188, "ada__strings__fixedB");
   u00189 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00189, "ada__strings__fixedS");
   u00190 : constant Version_32 := 16#a8ce4fe7#;
   pragma Export (C, u00190, "gnat__os_libS");
   u00191 : constant Version_32 := 16#7ebd8839#;
   pragma Export (C, u00191, "system__val_intB");
   u00192 : constant Version_32 := 16#bc6ba605#;
   pragma Export (C, u00192, "system__val_intS");
   u00193 : constant Version_32 := 16#084c16d0#;
   pragma Export (C, u00193, "gnat__regexpS");
   u00194 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00194, "system__regexpB");
   u00195 : constant Version_32 := 16#014a32df#;
   pragma Export (C, u00195, "system__regexpS");
   u00196 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00196, "gnat__stringsS");
   u00197 : constant Version_32 := 16#33489ddc#;
   pragma Export (C, u00197, "gnattest_generatedS");
   u00198 : constant Version_32 := 16#ba305dc7#;
   pragma Export (C, u00198, "gnattest_main_suiteB");
   u00199 : constant Version_32 := 16#eea1e993#;
   pragma Export (C, u00199, "gnattest_main_suiteS");
   u00200 : constant Version_32 := 16#52ee47fb#;
   pragma Export (C, u00200, "odbS");
   u00201 : constant Version_32 := 16#4af1a42d#;
   pragma Export (C, u00201, "odb__chunkB");
   u00202 : constant Version_32 := 16#97268e46#;
   pragma Export (C, u00202, "odb__chunkS");
   u00203 : constant Version_32 := 16#ca632c0b#;
   pragma Export (C, u00203, "odb__object_idB");
   u00204 : constant Version_32 := 16#a7fdfcd4#;
   pragma Export (C, u00204, "odb__object_idS");
   u00205 : constant Version_32 := 16#9fdcf662#;
   pragma Export (C, u00205, "odb__chunk__test_dataB");
   u00206 : constant Version_32 := 16#1e74d07b#;
   pragma Export (C, u00206, "odb__chunk__test_dataS");
   u00207 : constant Version_32 := 16#269b1972#;
   pragma Export (C, u00207, "aunit__test_fixturesB");
   u00208 : constant Version_32 := 16#3b99f1a5#;
   pragma Export (C, u00208, "aunit__test_fixturesS");
   u00209 : constant Version_32 := 16#c5dbcb5e#;
   pragma Export (C, u00209, "odb__chunk__test_data__testsB");
   u00210 : constant Version_32 := 16#ef2f2df0#;
   pragma Export (C, u00210, "odb__chunk__test_data__testsS");
   u00211 : constant Version_32 := 16#2caf2ed4#;
   pragma Export (C, u00211, "odb__chunk__test_data__tests__suiteB");
   u00212 : constant Version_32 := 16#e845f22f#;
   pragma Export (C, u00212, "odb__chunk__test_data__tests__suiteS");
   u00213 : constant Version_32 := 16#8f189ee8#;
   pragma Export (C, u00213, "aunit__test_callerB");
   u00214 : constant Version_32 := 16#581d22b8#;
   pragma Export (C, u00214, "aunit__test_callerS");
   u00215 : constant Version_32 := 16#318c3f19#;
   pragma Export (C, u00215, "odb__object_id__test_dataB");
   u00216 : constant Version_32 := 16#b4a15231#;
   pragma Export (C, u00216, "odb__object_id__test_dataS");
   u00217 : constant Version_32 := 16#6eb69f44#;
   pragma Export (C, u00217, "odb__object_id__test_data__testsB");
   u00218 : constant Version_32 := 16#45d2aa10#;
   pragma Export (C, u00218, "odb__object_id__test_data__testsS");
   u00219 : constant Version_32 := 16#879767d6#;
   pragma Export (C, u00219, "odb__object_id__test_data__tests__suiteB");
   u00220 : constant Version_32 := 16#b5626df9#;
   pragma Export (C, u00220, "odb__object_id__test_data__tests__suiteS");
   u00221 : constant Version_32 := 16#d96fa2dd#;
   pragma Export (C, u00221, "odb__persistentB");
   u00222 : constant Version_32 := 16#4b7b5f73#;
   pragma Export (C, u00222, "odb__persistentS");
   u00223 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00223, "system__concat_4B");
   u00224 : constant Version_32 := 16#8aaaa71a#;
   pragma Export (C, u00224, "system__concat_4S");
   u00225 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00225, "system__concat_3B");
   u00226 : constant Version_32 := 16#ffbed09f#;
   pragma Export (C, u00226, "system__concat_3S");
   u00227 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00227, "system__concat_2B");
   u00228 : constant Version_32 := 16#f66e5bea#;
   pragma Export (C, u00228, "system__concat_2S");
   u00229 : constant Version_32 := 16#994daa60#;
   pragma Export (C, u00229, "system__pool_sizeB");
   u00230 : constant Version_32 := 16#f5e0c463#;
   pragma Export (C, u00230, "system__pool_sizeS");
   u00231 : constant Version_32 := 16#0be0996c#;
   pragma Export (C, u00231, "odb__persistent__persistent_type_test_dataB");
   u00232 : constant Version_32 := 16#b177d5cf#;
   pragma Export (C, u00232, "odb__persistent__persistent_type_test_dataS");
   u00233 : constant Version_32 := 16#7273bcdb#;
   pragma Export (C, u00233, "odb__persistent__persistent_type_test_data__persistent_type_testsB");
   u00234 : constant Version_32 := 16#419c6678#;
   pragma Export (C, u00234, "odb__persistent__persistent_type_test_data__persistent_type_testsS");
   u00235 : constant Version_32 := 16#9f10c9f6#;
   pragma Export (C, u00235, "odb__persistent__persistent_type_test_data__persistent_type_tests__suiteB");
   u00236 : constant Version_32 := 16#e44ac458#;
   pragma Export (C, u00236, "odb__persistent__persistent_type_test_data__persistent_type_tests__suiteS");
   u00237 : constant Version_32 := 16#3175daf3#;
   pragma Export (C, u00237, "odb__persistent__test_dataB");
   u00238 : constant Version_32 := 16#3b3bb074#;
   pragma Export (C, u00238, "odb__persistent__test_dataS");
   u00239 : constant Version_32 := 16#a5359be5#;
   pragma Export (C, u00239, "odb__persistent__test_data__testsB");
   u00240 : constant Version_32 := 16#f46df607#;
   pragma Export (C, u00240, "odb__persistent__test_data__testsS");
   u00241 : constant Version_32 := 16#ba1fdfa0#;
   pragma Export (C, u00241, "odb__persistent__test_data__tests__suiteB");
   u00242 : constant Version_32 := 16#3611dfa9#;
   pragma Export (C, u00242, "odb__persistent__test_data__tests__suiteS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  gnat.source_info%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_int%s
   --  system.exn_int%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%b
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_llu%b
   --  system.val_lli%b
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
   --  ada.exceptions.traceback%s
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
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.superbounded%s
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  interfaces.c.strings%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.win32.ext%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  gnat.directory_operations%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.pool_size%s
   --  system.pool_size%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.superbounded%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.command_line%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  system.dwarf_lines%b
   --  system.object_reader%b
   --  gnat.directory_operations%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.regexp%s
   --  system.regexp%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gnat.command_line%b
   --  gnat.traceback%s
   --  gnat.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  gnat.traceback.symbolic%s
   --  ada_containers%s
   --  ada_containers.aunit_lists%s
   --  aunit%s
   --  aunit.memory%s
   --  aunit.memory%b
   --  aunit%b
   --  aunit.memory.utils%s
   --  aunit.memory.utils%b
   --  ada_containers.aunit_lists%b
   --  aunit.tests%s
   --  aunit.test_filters%s
   --  aunit.options%s
   --  aunit.time_measure%s
   --  aunit.time_measure%b
   --  aunit.test_results%s
   --  aunit.test_results%b
   --  aunit.assertions%s
   --  aunit.assertions%b
   --  aunit.reporter%s
   --  aunit.reporter.gnattest%s
   --  aunit.reporter.gnattest%b
   --  aunit.simple_test_cases%s
   --  aunit.simple_test_cases%b
   --  aunit.test_filters%b
   --  aunit.test_fixtures%s
   --  aunit.test_fixtures%b
   --  aunit.test_caller%s
   --  aunit.test_caller%b
   --  aunit.test_suites%s
   --  aunit.test_suites%b
   --  aunit.run%s
   --  aunit.run%b
   --  gnattest_generated%s
   --  gnattest_main_suite%s
   --  test_runner%b
   --  odb%s
   --  odb.object_id%s
   --  odb.object_id%b
   --  odb.chunk%s
   --  odb.chunk%b
   --  odb.chunk.test_data%s
   --  odb.chunk.test_data%b
   --  odb.chunk.test_data.tests%s
   --  odb.chunk.test_data.tests%b
   --  odb.chunk.test_data.tests.suite%s
   --  odb.chunk.test_data.tests.suite%b
   --  odb.object_id.test_data%s
   --  odb.object_id.test_data%b
   --  odb.object_id.test_data.tests%s
   --  odb.object_id.test_data.tests%b
   --  odb.object_id.test_data.tests.suite%s
   --  odb.object_id.test_data.tests.suite%b
   --  odb.persistent%s
   --  odb.persistent%b
   --  odb.persistent.persistent_type_test_data%s
   --  odb.persistent.persistent_type_test_data%b
   --  odb.persistent.persistent_type_test_data.persistent_type_tests%s
   --  odb.persistent.persistent_type_test_data.persistent_type_tests%b
   --  odb.persistent.persistent_type_test_data.persistent_type_tests.suite%s
   --  odb.persistent.persistent_type_test_data.persistent_type_tests.suite%b
   --  odb.persistent.test_data%s
   --  odb.persistent.test_data%b
   --  odb.persistent.test_data.tests%s
   --  odb.persistent.test_data.tests%b
   --  odb.persistent.test_data.tests.suite%s
   --  odb.persistent.test_data.tests.suite%b
   --  gnattest_main_suite%b
   --  END ELABORATION ORDER


end ada_main;
