--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into ODB.Chunk.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with Ada.Text_IO; use Ada.Text_IO;

package body ODB.Chunk.Test_Data.Tests is


--  begin read only
   procedure Test_Chunk_To_Address (Gnattest_T : in out Test);
   procedure Test_Chunk_To_Address_6f3714 (Gnattest_T : in out Test) renames Test_Chunk_To_Address;
--  id:2.2/6f37148285568bd0/Chunk_To_Address/1/0/
   procedure Test_Chunk_To_Address (Gnattest_T : in out Test) is
   --  odb-chunk.ads:11:4:Chunk_To_Address
--  end read only

      pragma Unreferenced (Gnattest_T);

      Chunk : Chunk_Access := new Chunk_Type(10);
      Addr  : constant Address := Chunk_To_Address( Chunk );
   begin

      -- Basic tests
      AUnit.Assertions.Assert( Chunk /= null, "0001_Allocated" );
      AUnit.Assertions.Assert( Addr /= Null_Address, "0002_Not a null Address" );

      -- Fill the chunk with a test pattern
      for i in Chunk.Data'Range loop
         Chunk.Data(i) := Storage_Element(i*2);
      end loop;

      -- Check that Chunk_To_Address really point to the data section
      declare
         S : Storage_Array(Chunk.Data'Range);
         for S'Address use Addr;
      begin
         for i in S'range loop
            AUnit.Assertions.Assert
              ( S(i) = Storage_Element(i*2), "0003_Data Segment not well populated");
         end loop;
      end ;

--  begin read only
   end Test_Chunk_To_Address;
--  end read only


--  begin read only
   procedure Test_Address_To_Chunk (Gnattest_T : in out Test);
   procedure Test_Address_To_Chunk_60c8a8 (Gnattest_T : in out Test) renames Test_Address_To_Chunk;
--  id:2.2/60c8a8dc6892de84/Address_To_Chunk/1/0/
   procedure Test_Address_To_Chunk (Gnattest_T : in out Test) is
   --  odb-chunk.ads:12:4:Address_To_Chunk
--  end read only
      pragma Unreferenced (Gnattest_T);

      Chunk : Chunk_Access := new Chunk_Type(10);
      Addr  : Address := Chunk_To_Address( Chunk );
   begin

      -- here we initialize the data section with a unique pattern
      for i in Chunk.Data'Range loop
         Chunk.Data(i) := Storage_Element(i*2);
      end loop;

      declare
         C : Chunk_Access := Address_To_Chunk(Addr);
      begin
         AUnit.Assertions.Assert
           ( C = Chunk, "0004 Same object");

         for i in C.Data'range loop
            AUnit.Assertions.Assert
              ( C.Data(i) = Storage_Element(i*2), "0005_Data Segment not well populated");
         end loop;
      end ;

--  begin read only
   end Test_Address_To_Chunk;
--  end read only

end ODB.Chunk.Test_Data.Tests;
