--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body ODB.Object_Id.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.ODB.Object_Id.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_New_Object_Id_6f1305 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Get_Index_1653cc : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_New_Object_Id_6f1305,
         "odb-object_id.ads:7:4:",
         Test_New_Object_Id_6f1305'Access);
      Runner_1.Create
        (Case_2_1_Test_Get_Index_1653cc,
         "odb-object_id.ads:8:4:",
         Test_Get_Index_1653cc'Access);

      Result.Add_Test (Case_1_1_Test_New_Object_Id_6f1305'Access);
      Result.Add_Test (Case_2_1_Test_Get_Index_1653cc'Access);

      return Result'Access;

   end Suite;

end ODB.Object_Id.Test_Data.Tests.Suite;
--  end read only
