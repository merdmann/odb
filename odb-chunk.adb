with System; use System;
with System.Storage_Elements; use System.Storage_Elements;
with System.Address_To_Access_Conversions;

with ODB.Object_Id; use ODB.Object_Id;

package body Odb.Chunk is

   package T is new System.Address_To_Access_Conversions(Chunk_Type);

   ----------------------
   -- Chunk_To_Address --
   ----------------------
   function Chunk_To_Address( Chunk : Chunk_Access ) return Address is
      Result : Address := Null_Address;
   begin
      return Chunk.Data(1)'Address;
   end Chunk_To_Address;

   ----------------------
   -- Address_To_Chunk --
   ----------------------
   function Address_To_Chunk( Addr : in Address ) return Chunk_Access is
      Chunk : Address := Addr - (4 + Object_Id_Type'Size/8);
   begin
      return Chunk_Access(T.To_Pointer(Chunk));
   end Address_To_Chunk;

   -------------------
   -- Get_Object_Id --
   -------------------
   function Get_Object_Id( Chunk : in Chunk_Access ) return Object_Id_Type is
   begin
      return Chunk.Id;
   end Get_Object_Id;

   -------------------
   -- Set_Object_Id --
   -------------------
   procedure Set_Object_Id( Chunk : in Chunk_Access; Id : in Object_Id_Type ) is
   begin
      Chunk.Id := Id;
   end Set_Object_Id;


end Odb.Chunk;
