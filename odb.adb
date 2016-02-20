with Ada.Finalization;   use Ada.Finalization;
with Ada.Text_IO; use Ada.Text_IO;

with System; use System;
with System.Storage_Pools; use System.Storage_Pools;
with System.Storage_Elements; use System.Storage_Elements;
with System.Address_To_Access_Conversions;


with ODB.Object_Id; use ODB.Object_Id;

package body odb is

   type Chunk_Type( Size : Storage_Offset ) is record
      Id   : Object_Id_Type := Id_Not_Used;
      Data : Storage_Array( 1 .. Size );
   end record;

   type Chunk_Access is access Chunk_Type;

   package T is new System.Address_To_Access_Conversions(Chunk_Type);

   --------------------------
   -- Storage_Control_Type --
   --------------------------
   type Storage_Control_Type is record
      Id : Object_Id_Type := Id_Not_Used;
      Data : Address;
   end record;

   type Storage_Control_Array is array( 1..2000 ) of Storage_Control_Type;

   SCB : Storage_Control_Array ;

   ------------------
   -- Allocate_SCB --
   ------------------
   function Allocate_SCB return Natural is
      Result : Natural := 0;
   begin
      for i in Storage_Control_Array'Range loop
         if SCB(i).id = Id_Not_Used then
            SCB(i).Id := New_Object_ID(i);
            Result := i;
            exit;
         end if;
      end loop;

      return Result;
   end Allocate_SCB;

   function Deallocate_SCB( Addr : in Address ) return Natural is
      Result : Natural := 0;
   begin
         return Result;
   end Deallocate_SCB;


   ----------------
   -- Initialize --
   ----------------
   procedure Initialize( This : in out Persistent_Type ) is
   begin
      null;
   end Initialize;

   --------------
   -- Finalize --
   --------------
   procedure Finalize( This : in out Persistent_Type ) is
   begin
      null;
   end Finalize;

   -- this manages the storage where the objects lives in

   --------------
   -- Allocate --
   --------------
   procedure Allocate(
      Pool              : in out Instance_Pool_Type;
      Storage_Address   : out    Address;
      Size              : in     Storage_Count;
      Alignment         : in     Storage_Count ) is

      Id : Natural := 0;
   begin
      Put_Line(
         "Count: " & Storage_Count'Image(Size) &
                 " Alignment: " & Storage_Count'Image(Alignment));

      Storage_Address := T.To_Address( new Chunk_Type( Storage_Offset(Size) ));

      Id := Allocate_SCB;
      SCB(Id).Data := Storage_Address;

   end Allocate;

   ----------------
   -- Deallocate --
   ----------------
   procedure Deallocate(
      Pool            : in out Instance_Pool_Type;
      Storage_Address : in     Address;
      Size            : in     Storage_Count;
      Alignment       : in     Storage_Count ) is
   begin

      null;

   end Deallocate;

   function Storage_Size (
      Pool : in Instance_Pool_Type ) return Storage_Count is
   begin
      return Storage_Count(0);
   end Storage_Size;

end odb;
