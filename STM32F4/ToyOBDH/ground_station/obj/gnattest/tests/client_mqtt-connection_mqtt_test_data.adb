--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body client_mqtt.Connection_MQTT_Test_Data is

   Local_Connection_MQTT : aliased GNATtest_Generated.GNATtest_Standard.client_mqtt.Connection_MQTT;
   procedure Set_Up (Gnattest_T : in out Test_Connection_MQTT) is
   begin
      Gnattest_T.Fixture := Local_Connection_MQTT'Access;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Connection_MQTT) is
   begin
      null;
   end Tear_Down;

end client_mqtt.Connection_MQTT_Test_Data;
