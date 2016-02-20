pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E182 : Short_Integer; pragma Import (Ada, E182, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exception_table_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__io_exceptions_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "ada__strings_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__strings__maps_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "ada__strings__maps__constants_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__tags_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__streams_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "interfaces__c_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "interfaces__c__strings_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exceptions_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "system__file_control_block_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "system__file_io_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "system__finalization_root_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "ada__finalization_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "system__storage_pools_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "system__finalization_masters_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__storage_pools__subpools_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "ada__calendar_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "gnat__directory_operations_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__object_reader_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__dwarf_lines_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "system__pool_global_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "system__pool_size_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__secondary_stack_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__strings__unbounded_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__regexp_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "gnat__command_line_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__text_io_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada_containers__aunit_lists_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "aunit_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "aunit__memory_E");
   E072 : Short_Integer; pragma Import (Ada, E072, "aunit__memory__utils_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "aunit__tests_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "aunit__test_filters_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "aunit__time_measure_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "aunit__test_results_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "aunit__assertions_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "aunit__reporter_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "aunit__reporter__gnattest_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "aunit__simple_test_cases_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "aunit__test_fixtures_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "aunit__test_caller_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "aunit__test_suites_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "aunit__run_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "gnattest_main_suite_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "odb_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "odb__object_id_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "odb__persistent_type_test_data_E");
   E217 : Short_Integer; pragma Import (Ada, E217, "odb__persistent_type_test_data__persistent_type_tests_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "odb__persistent_type_test_data__persistent_type_tests__suite_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "odb__persistent_type_test_data__persistent_type_tests__suite__finalize_body");
      begin
         E219 := E219 - 1;
         F1;
      end;
      E217 := E217 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "odb__persistent_type_test_data__persistent_type_tests__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "odb__persistent_type_test_data__finalize_body");
      begin
         E213 := E213 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "odb__persistent_type_test_data__finalize_spec");
      begin
         F4;
      end;
      E201 := E201 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "odb__finalize_spec");
      begin
         F5;
      end;
      E162 := E162 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "aunit__test_suites__finalize_spec");
      begin
         F6;
      end;
      E215 := E215 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "aunit__test_fixtures__finalize_spec");
      begin
         F7;
      end;
      E063 := E063 - 1;
      E065 := E065 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "aunit__simple_test_cases__finalize_spec");
      begin
         F8;
      end;
      E154 := E154 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "aunit__reporter__gnattest__finalize_spec");
      begin
         F9;
      end;
      E067 := E067 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "aunit__assertions__finalize_spec");
      begin
         F10;
      end;
      E074 := E074 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "aunit__test_results__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "aunit__test_filters__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "aunit__tests__finalize_spec");
      begin
         E087 := E087 - 1;
         F13;
      end;
      E178 := E178 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "ada__text_io__finalize_spec");
      begin
         F14;
      end;
      E195 := E195 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "system__regexp__finalize_spec");
      begin
         F15;
      end;
      E169 := E169 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "ada__strings__unbounded__finalize_spec");
      begin
         F16;
      end;
      declare
         procedure F17;
         pragma Import (Ada, F17, "system__object_reader__finalize_body");
      begin
         E142 := E142 - 1;
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "system__file_io__finalize_body");
      begin
         E180 := E180 - 1;
         F18;
      end;
      E089 := E089 - 1;
      E171 := E171 - 1;
      E211 := E211 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__pool_size__finalize_spec");
      begin
         F19;
      end;
      E106 := E106 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "system__pool_global__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "system__storage_pools__subpools__finalize_spec");
      begin
         F21;
      end;
      declare
         procedure F22;
         pragma Import (Ada, F22, "system__finalization_masters__finalize_spec");
      begin
         F22;
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

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
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

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

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

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E019 := E019 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E100 := E100 + 1;
      Ada.Strings'Elab_Spec;
      E122 := E122 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E167 := E167 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E099 := E099 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E021 := E021 + 1;
      System.File_Control_Block'Elab_Spec;
      E185 := E185 + 1;
      System.Finalization_Root'Elab_Spec;
      E102 := E102 + 1;
      Ada.Finalization'Elab_Spec;
      E097 := E097 + 1;
      System.Storage_Pools'Elab_Spec;
      E104 := E104 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E078 := E078 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E106 := E106 + 1;
      System.Pool_Size'Elab_Spec;
      E211 := E211 + 1;
      E171 := E171 + 1;
      System.Finalization_Masters'Elab_Body;
      E089 := E089 + 1;
      System.File_Io'Elab_Body;
      E180 := E180 + 1;
      E119 := E119 + 1;
      E080 := E080 + 1;
      Ada.Tags'Elab_Body;
      E050 := E050 + 1;
      E126 := E126 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Os_Lib'Elab_Body;
      E182 := E182 + 1;
      System.Secondary_Stack'Elab_Body;
      E009 := E009 + 1;
      System.Dwarf_Lines'Elab_Body;
      E121 := E121 + 1;
      System.Object_Reader'Elab_Body;
      E142 := E142 + 1;
      Gnat.Directory_Operations'Elab_Body;
      E187 := E187 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E169 := E169 + 1;
      System.Regexp'Elab_Spec;
      E195 := E195 + 1;
      Gnat.Command_Line'Elab_Spec;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E178 := E178 + 1;
      Gnat.Command_Line'Elab_Body;
      E164 := E164 + 1;
      E047 := E047 + 1;
      E045 := E045 + 1;
      E072 := E072 + 1;
      E070 := E070 + 1;
      Aunit.Tests'Elab_Spec;
      E087 := E087 + 1;
      Aunit.Test_Filters'Elab_Spec;
      Aunit.Time_Measure'Elab_Spec;
      E076 := E076 + 1;
      Aunit.Test_Results'Elab_Spec;
      Aunit.Test_Results'Elab_Body;
      E074 := E074 + 1;
      Aunit.Assertions'Elab_Spec;
      Aunit.Assertions'Elab_Body;
      E067 := E067 + 1;
      Aunit.Reporter'Elab_Spec;
      E152 := E152 + 1;
      Aunit.Reporter.Gnattest'Elab_Spec;
      Aunit.Reporter.Gnattest'Elab_Body;
      E154 := E154 + 1;
      Aunit.Simple_Test_Cases'Elab_Spec;
      E065 := E065 + 1;
      E063 := E063 + 1;
      Aunit.Test_Fixtures'Elab_Spec;
      E215 := E215 + 1;
      E221 := E221 + 1;
      Aunit.Test_Suites'Elab_Spec;
      E162 := E162 + 1;
      E160 := E160 + 1;
      odb'elab_spec;
      E203 := E203 + 1;
      odb'elab_body;
      E201 := E201 + 1;
      odb.persistent_type_test_data'elab_spec;
      odb.persistent_type_test_data'elab_body;
      E213 := E213 + 1;
      odb.persistent_type_test_data.persistent_type_tests'elab_spec;
      E217 := E217 + 1;
      odb.persistent_type_test_data.persistent_type_tests.suite'elab_body;
      E219 := E219 + 1;
      Gnattest_Main_Suite'Elab_Body;
      E199 := E199 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_runner");

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
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\gnattest_generated.o
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\test_runner.o
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\odb-persistent_type_test_data.o
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\odb-persistent_type_test_data-persistent_type_tests.o
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\odb-persistent_type_test_data-persistent_type_tests-suite.o
   --   C:\Users\merdmann\Sources\odb\gnattest\harness\gnattest_main_suite.o
   --   -LC:\Users\merdmann\Sources\odb\gnattest\harness\
   --   -LC:\Users\merdmann\Sources\odb\gnattest\harness\
   --   -LC:\gnat\2015\lib\aunit\
   --   -LC:\Users\merdmann\Sources\odb\lib\
   --   -LC:/gnat/2015/lib/gcc/i686-pc-mingw32/4.9.3/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
