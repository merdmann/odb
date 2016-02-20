package body ODB.Object_Id is

   Generation : Natural := 0;

   -------------------
   -- New_Object_Id --
   -------------------
   function New_Object_Id( Index : in Natural ) return Object_Id_Type is
      Result : Object_Id_Type;
   begin
      Generation := Generation + 1;

      Result.Generation := Generation;
      Result.Id := Index;

      return Result;
   end New_Object_Id;

   ---------------
   -- Get_Index --
   ---------------
   function Get_Index( Object_Id : in Object_Id_Type ) return Natural is
   begin
      return Object_Id.Id;
   end Get_Index;


end ODB.Object_Id;
