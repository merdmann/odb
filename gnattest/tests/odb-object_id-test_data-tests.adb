--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into ODB.Object_Id.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;

package body ODB.Object_Id.Test_Data.Tests is


--  begin read only
   procedure Test_New_Object_Id (Gnattest_T : in out Test);
   procedure Test_New_Object_Id_6f1305 (Gnattest_T : in out Test) renames Test_New_Object_Id;
--  id:2.2/6f1305c7b68f5d13/New_Object_Id/1/0/
   procedure Test_New_Object_Id (Gnattest_T : in out Test) is
   --  odb-object_id.ads:7:4:New_Object_Id
--  end read only

      pragma Unreferenced (Gnattest_T);

      Id1 : Object_Id_Type := New_Object_Id(1);
      Id2 : Object_Id_Type := New_Object_Id(1);

   begin
      AUnit.Assertions.Assert
        (Id1 /= Id2, "0100 Not Identical");


--  begin read only
   end Test_New_Object_Id;
--  end read only


--  begin read only
   procedure Test_Get_Index (Gnattest_T : in out Test);
   procedure Test_Get_Index_1653cc (Gnattest_T : in out Test) renames Test_Get_Index;
--  id:2.2/1653cc719fa8f92d/Get_Index/1/0/
   procedure Test_Get_Index (Gnattest_T : in out Test) is
   --  odb-object_id.ads:8:4:Get_Index
--  end read only

      pragma Unreferenced (Gnattest_T);

      The_Index : constant Natural := 22;
      Id1 : Object_Id_Type := New_Object_Id(The_Index);
      Id2 : Object_Id_Type := New_Object_Id(The_Index);
   begin
      -- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --
      -- 0001 : Returns the given index
      -- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --
      AUnit.Assertions.Assert
        (Get_Index(Id1) = The_Index, "0001 Returns The_Index");

      -- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --
      -- 0002 : The Index of two objects create with the same index is eq. --
      -- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --
      AUnit.Assertions.Assert
        (Get_Index(Id1) = Get_Index(Id2), "0002 Index is identical");


--  begin read only
   end Test_Get_Index;
--  end read only

end ODB.Object_Id.Test_Data.Tests;
