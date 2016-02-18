--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into odb.Persistent_Type_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body odb.Persistent_Type_Test_Data.Persistent_Type_Tests is


--  begin read only
   procedure Test_Initialize (Gnattest_T : in out Test_Persistent_Type);
   procedure Test_Initialize_752cc6 (Gnattest_T : in out Test_Persistent_Type) renames Test_Initialize;
--  id:2.2/752cc6071261d2b6/Initialize/1/0/
   procedure Test_Initialize (Gnattest_T : in out Test_Persistent_Type) is
   --  odb.ads:18:4:Initialize
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Initialize;
--  end read only


--  begin read only
   procedure Test_Finalize (Gnattest_T : in out Test_Persistent_Type);
   procedure Test_Finalize_1d29f1 (Gnattest_T : in out Test_Persistent_Type) renames Test_Finalize;
--  id:2.2/1d29f15228a8f8f4/Finalize/1/0/
   procedure Test_Finalize (Gnattest_T : in out Test_Persistent_Type) is
   --  odb.ads:19:4:Finalize
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Finalize;
--  end read only

end odb.Persistent_Type_Test_Data.Persistent_Type_Tests;
