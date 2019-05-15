--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body TTC_Data.Strings.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.TTC_Data.Strings.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Image_927fb7 : aliased Runner_1.Test_Case;
   Case_2_1_Test_MQTTImage_42f3b4 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Image_927fb7,
         "ttc_data-strings.ads:25:4:",
         Test_Image_927fb7'Access);
      Runner_1.Create
        (Case_2_1_Test_MQTTImage_42f3b4,
         "ttc_data-strings.ads:26:4:",
         Test_MQTTImage_42f3b4'Access);

      Result.Add_Test (Case_1_1_Test_Image_927fb7'Access);
      Result.Add_Test (Case_2_1_Test_MQTTImage_42f3b4'Access);

      return Result'Access;

   end Suite;

end TTC_Data.Strings.Test_Data.Tests.Suite;
--  end read only
