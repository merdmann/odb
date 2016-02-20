package ODB.Object_Id is

   type Object_Id_Type is private;

   Id_Not_Used  : constant Object_Id_Type;

   function New_Object_Id( Index : in Natural ) return Object_Id_Type;
   function Get_Index( Object_Id : in Object_Id_Type ) return Natural;

private
   type Object_Id_Type is record
      Id                      : Natural := 0;
      Generation              : Natural := 0;
   end record;

   Id_Not_Used : constant Object_Id_Type := ( Others => 0 );

end ODB.Object_Id;
