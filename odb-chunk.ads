with System; use System;
with System.Storage_Elements; use System.Storage_Elements;

with ODB.Object_Id; use ODB.Object_Id;

package ODB.Chunk is

   type Chunk_Type( Size : Storage_Offset ) is private;
   type Chunk_Access is access all Chunk_Type;

   -- return the address of the payload data
   function Chunk_To_Address( Chunk : Chunk_Access ) return Address;

   -- convert the payload data address to chunk access
   function Address_To_Chunk( Addr : in Address ) return Chunk_Access;

   -- get the object id
   function Get_Object_Id( Chunk : in Chunk_Access ) return Object_Id_Type;

   -- set the object id
   procedure Set_Object_Id( Chunk : in Chunk_Access; Id : in Object_Id_Type );

private
   type Chunk_Type( Size : Storage_Offset ) is record
      Id   : Object_Id_Type := Id_Not_Used;
      Data : Storage_Array( 1 .. Size );
   end record;

   Word : constant := 4;  --  storage element is byte, 4 bytes per word

end ODB.Chunk;
