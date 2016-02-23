--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into ODB.Persistent.Test_Data.

with Ada.Text_IO; use Ada.Text_IO;
with AUnit.Assertions; use AUnit.Assertions;

with ODB.Persistent; use ODB.Persistent;

package body ODB.Persistent.Test_Data.Tests is

   package MyPersistent is
      type O_Type is new Persistent_Type with record
         Counter : Natural := 0;
      end record;

      procedure Initialize( This : in out O_Type );
      procedure Finalize( This : in out O_Type );
   end MyPersistent;

   package body MyPersistent is
      procedure Initialize( This : in out O_Type ) is
      begin
          Put_Line("MyPersistence: Initialize");
      end Initialize;

      procedure Finalize( This : in out O_Type ) is
      begin
         Put_Line("MyPersistence: Finalize");
      end Finalize;
   end MyPersistent;

   use MyPersistent;

--  begin read only
   procedure Test_Get_Object_Id (Gnattest_T : in out Test);
   procedure Test_Get_Object_Id_c36693 (Gnattest_T : in out Test) renames Test_Get_Object_Id;
--  id:2.2/c36693c7b06c04f9/Get_Object_Id/1/0/
   procedure Test_Get_Object_Id (Gnattest_T : in out Test) is
   --  odb-persistent.ads:15:4:Get_Object_Id
--  end read only

      O1 : Persistent_Access := new O_Type;
      O2 : Persistent_Access := new O_Type;
   begin
      -- The object id of two seperatly allocated objects are different
      AUnit.Assertions.Assert
        (Get_Object_Id(O1.all) /= Get_Object_Id(O2.all),
         "1001 Objects are not identical");



--  begin read only
   end Test_Get_Object_Id;
--  end read only

end ODB.Persistent.Test_Data.Tests;
