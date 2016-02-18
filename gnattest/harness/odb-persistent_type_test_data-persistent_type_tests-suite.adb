--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body odb.Persistent_Type_Test_Data.Persistent_Type_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.odb.Persistent_Type_Test_Data.Persistent_Type_Tests.Test_Persistent_Type);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Initialize_752cc6 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Finalize_1d29f1 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Initialize_752cc6,
         "odb.ads:18:4:",
         Test_Initialize_752cc6'Access);
      Runner_1.Create
        (Case_2_1_Test_Finalize_1d29f1,
         "odb.ads:19:4:",
         Test_Finalize_1d29f1'Access);

      Result.Add_Test (Case_1_1_Test_Initialize_752cc6'Access);
      Result.Add_Test (Case_2_1_Test_Finalize_1d29f1'Access);

      return Result'Access;

   end Suite;

end odb.Persistent_Type_Test_Data.Persistent_Type_Tests.Suite;
--  end read only
