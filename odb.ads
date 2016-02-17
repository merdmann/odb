with Ada.Finalization;   use Ada.Finalization;

with System;                                    use System;
with System.Storage_Pools; use System.Storage_Pools;
with System.Storage_Elements; use System.Storage_Elements;


package odb is

   -- the base type for all persistent objectss
   type Persistent_Type is tagged private;
   type Persistent_Access is access Persistent_Type'Class;


private
   type Persistent_Type is new Controlled with null record;

   procedure Initialize( This : in out Persistent_Type );
   procedure Finalize( This   : in out Persistent_Type );

   -- this is the storage where all persisten objects are kept
   type Instance_Pool_Type is new Root_Storage_Pool with null record;

   procedure Allocate(
      Pool            : in out Instance_Pool_Type;
      Storage_Address : out    Address;
      Size            : in     Storage_Count;
      Alignment       : in     Storage_Count );

   procedure Deallocate(
      Pool            : in out Instance_Pool_Type;
      Storage_Address : in     Address;
      Size            : in     Storage_Count;
      Alignment       : in     Storage_Count );

   function Storage_Size (
      Pool : in Instance_Pool_Type ) return Storage_Count;

   Instance_Pool: Instance_Pool_Type;
   for Persistent_Access'Storage_Pool use Instance_Pool;


end odb;
