--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body client_mqtt.Connection_MQTT_Test_Data.Connection_MQTT_Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.client_mqtt.Connection_MQTT_Test_Data.Connection_MQTT_Tests.Test_Connection_MQTT);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_ConnectMQTT_e7cb4e : aliased Runner_1.Test_Case;
   Case_2_1_Test_PublishMQTT_87f82f : aliased Runner_1.Test_Case;
   Case_3_1_Test_SubscribeMQTT_c243a6 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_ConnectMQTT_e7cb4e,
         "client_mqtt.ads:70:4:",
         Test_ConnectMQTT_e7cb4e'Access);
      Runner_1.Create
        (Case_2_1_Test_PublishMQTT_87f82f,
         "client_mqtt.ads:71:4:",
         Test_PublishMQTT_87f82f'Access);
      Runner_1.Create
        (Case_3_1_Test_SubscribeMQTT_c243a6,
         "client_mqtt.ads:72:4:",
         Test_SubscribeMQTT_c243a6'Access);

      Result.Add_Test (Case_1_1_Test_ConnectMQTT_e7cb4e'Access);
      Result.Add_Test (Case_2_1_Test_PublishMQTT_87f82f'Access);
      Result.Add_Test (Case_3_1_Test_SubscribeMQTT_c243a6'Access);

      return Result'Access;

   end Suite;

end client_mqtt.Connection_MQTT_Test_Data.Connection_MQTT_Tests.Suite;
--  end read only
