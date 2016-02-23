--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body ODB.Chunk.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.ODB.Chunk.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Chunk_To_Address_6f3714 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Address_To_Chunk_60c8a8 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Chunk_To_Address_6f3714,
         "odb-chunk.ads:11:4:",
         Test_Chunk_To_Address_6f3714'Access);
      Runner_1.Create
        (Case_2_1_Test_Address_To_Chunk_60c8a8,
         "odb-chunk.ads:12:4:",
         Test_Address_To_Chunk_60c8a8'Access);

      Result.Add_Test (Case_1_1_Test_Chunk_To_Address_6f3714'Access);
      Result.Add_Test (Case_2_1_Test_Address_To_Chunk_60c8a8'Access);

      return Result'Access;

   end Suite;

end ODB.Chunk.Test_Data.Tests.Suite;
--  end read only
