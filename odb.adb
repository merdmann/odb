with Ada.Finalization;   use Ada.Finalization;
with Ada.Text_IO; use Ada.Text_IO;

with System; use System;
with System.Storage_Pools; use System.Storage_Pools;
with System.Storage_Elements; use System.Storage_Elements;

package body odb is

   -- this is the array where the elements are kept
   type Storage_Array is array(1..10000) of Character;
   Store : Storage_Array;

   -- Initializes the object after it has been allocated
   procedure Initialize( This : in out Persistent_Type ) is
   begin
      null;
   end Initialize;

   procedure Finalize( This : in out Persistent_Type ) is
   begin
      null;
   end Finalize;

   -- this manages the storage where the objects lives in
   procedure Allocate(
      Pool              : in out Instance_Pool_Type;
      Storage_Address   : out    Address;
      Size              : in     Storage_Count;
      Alignment         : in     Storage_Count ) is
   begin
      Put_Line(
         "Count: " & Storage_Count'Image(Size) &
         " Alignment: " & Storage_Count'Image(Alignment));
      Storage_Address := Store'Address;
   end Allocate;

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
