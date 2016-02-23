with Ada.Finalization;   use Ada.Finalization;
with Ada.Text_IO; use Ada.Text_IO;

with System; use System;
with System.Storage_Pools; use System.Storage_Pools;
with System.Storage_Elements; use System.Storage_Elements;
with System.Address_To_Access_Conversions;


with ODB.Object_Id; use ODB.Object_Id;
with ODB.Chunk;  use ODB.Chunk;

package body ODB.Persistent is

   ----------------
   -- Chunk_Type --
   ----------------
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
      Id    : Object_Id_Type := Id_Not_Used;
      Chunk : Chunk_Access;
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

   --------------
   -- Find_SCB --
   --------------
   function Find_SCB( Addr : in Address ) return Natural is
      Result : Natural := 0;
   begin
      for i in Storage_Control_Array'Range loop
         if SCB(i).Chunk.Data(1)'Address = Addr then
           Result := i;
           exit;
         end if;
      end loop;

      return Result;
   end Find_SCB;


   -------------------
   -- Get_Object_Id --
   -------------------
   function Get_Object_Id( Item : in Persistent_Type'Class ) return Object_Id_Type is
      Index : Natural := 1;
   begin
      return SCB(Index).Id;
   end Get_Object_Id;

   ----------------
   -- Initialize --
   ----------------
   procedure Initialize( This : in out Persistent_Type ) is
   begin
      Put_Line("Persisten_Type: Initialize");
   end Initialize;

   --------------
   -- Finalize --
   --------------
   procedure Finalize( This : in out Persistent_Type ) is
   begin
      Put_Line("Persisten_Type: Finalize");
   end Finalize;

   --------------
   -- Allocate --
   --------------
   procedure Allocate(
      Pool              : in out Instance_Pool_Type;
      Storage_Address   : out    Address;
      Size              : in     Storage_Count;
      Alignment         : in     Storage_Count ) is

      Id : Natural := 0;
      Chunk : Chunk_Access := new Chunk_Type(Storage_Offset( Size ));
   begin
      Put_Line(
         "Count: " & Storage_Count'Image(Size) &
                 " Alignment: " & Storage_Count'Image(Alignment));

      Storage_Address := Chunk.Data(1)'Address;

      Id := Allocate_SCB;
      Chunk.Id := New_Object_Id(id);
      SCB(Id).Chunk := Chunk;
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

end ODB.Persistent;
