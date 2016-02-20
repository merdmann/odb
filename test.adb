procedure test is

   type T_Type( Size : Natural ) is record
      id : Natural;
      data : String(1..Size);
   end record;

   Q : T_Type(10);
begin
   null;

end test;
