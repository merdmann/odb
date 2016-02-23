--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with ODB.Chunk.Test_Data.Tests.Suite;
with ODB.Object_Id.Test_Data.Tests.Suite;
with ODB.Persistent.Persistent_Type_Test_Data.Persistent_Type_Tests.Suite;
with ODB.Persistent.Test_Data.Tests.Suite;

package body Gnattest_Main_Suite is

   Result : aliased AUnit.Test_Suites.Test_Suite;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Result.Add_Test (ODB.Chunk.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (ODB.Object_Id.Test_Data.Tests.Suite.Suite);
      Result.Add_Test (ODB.Persistent.Persistent_Type_Test_Data.Persistent_Type_Tests.Suite.Suite);
      Result.Add_Test (ODB.Persistent.Test_Data.Tests.Suite.Suite);

      return Result'Access;

   end Suite;

end Gnattest_Main_Suite;
--  end read only
