--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body HK_Data.Converter.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.HK_Data.Converter.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Temperature_5f99ce : aliased Runner_1.Test_Case;
   Case_2_1_Test_Light_0c6d20 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Temperature_5f99ce,
         "hk_data-converter.ads:27:4:",
         Test_Temperature_5f99ce'Access);
      Runner_1.Create
        (Case_2_1_Test_Light_0c6d20,
         "hk_data-converter.ads:29:4:",
         Test_Light_0c6d20'Access);

      Result.Add_Test (Case_1_1_Test_Temperature_5f99ce'Access);
      Result.Add_Test (Case_2_1_Test_Light_0c6d20'Access);

      return Result'Access;

   end Suite;

end HK_Data.Converter.Test_Data.Tests.Suite;
--  end read only
