--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into client_mqtt.Connection_MQTT_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body client_mqtt.Connection_MQTT_Test_Data.Connection_MQTT_Tests is
   Parametros_conexion : constant Connection_Parameters :=
     (Host => To_Unbounded_String ("m24.cloudmqtt.com"),
      Port => To_Unbounded_String ("25484"),
      Client_ID => To_Unbounded_String ("AABBCC"),
      Username => To_Unbounded_String ("cunjkfki"),
      Password => To_Unbounded_String ("NiROE_oOt3ZF"));
   Parametros_publicar : constant Publish_Parameters :=
     (Topic => To_Unbounded_String ("test"),
      Message => To_Unbounded_String ("hello"));
   Parametros_Subscribir : constant Subscribe_Parameters :=
     (Topic => To_Unbounded_String ("test"),
      QoS => Character'Val(16#00#),
      Packet_ID => Character'Val(16#00#) & Character'Val(16#01#),
      Expected_Message => To_Unbounded_String ("hello"));
   rec : Boolean := False;

   Canal : Connection_MQTT;

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_ConnectMQTT (Gnattest_T : in out Test_Connection_MQTT);
   procedure Test_ConnectMQTT_e7cb4e (Gnattest_T : in out Test_Connection_MQTT) renames Test_ConnectMQTT;
--  id:2.2/e7cb4e8d820882c7/ConnectMQTT/1/0/
   procedure Test_ConnectMQTT (Gnattest_T : in out Test_Connection_MQTT) is
   --  client_mqtt.ads:70:4:ConnectMQTT
--  end read only

      pragma Unreferenced (Gnattest_T);
      isConnected : Boolean := False;
      task T;
      task body T is
      begin
         delay(1.0);
         if(Isconnected = False) then
            AUnit.Assertions.Assert(False,"Connection fails.");
         end if;
      end T;
   begin



      Canal.ConnectMQTT(Parametros_conexion);
      isConnected:=True;


--  begin read only
   end Test_ConnectMQTT;
--  end read only


--  begin read only
   procedure Test_PublishMQTT (Gnattest_T : in out Test_Connection_MQTT);
   procedure Test_PublishMQTT_87f82f (Gnattest_T : in out Test_Connection_MQTT) renames Test_PublishMQTT;
--  id:2.2/87f82faef4f70d13/PublishMQTT/1/0/
   procedure Test_PublishMQTT (Gnattest_T : in out Test_Connection_MQTT) is
   --  client_mqtt.ads:71:4:PublishMQTT
--  end read only

      pragma Unreferenced (Gnattest_T);
      isPublished : Boolean := False;
      task T;
      task body T is
      begin
         delay(1.0);
         if(isPublished = False) then
            AUnit.Assertions.Assert(False, "Publish fails.");
         end if;
      end T;
   begin

     Canal.PublishMQTT(Parametros_publicar);
     isPublished := True;

--  begin read only
   end Test_PublishMQTT;
--  end read only


--  begin read only
   procedure Test_SubscribeMQTT (Gnattest_T : in out Test_Connection_MQTT);
   procedure Test_SubscribeMQTT_c243a6 (Gnattest_T : in out Test_Connection_MQTT) renames Test_SubscribeMQTT;
--  id:2.2/c243a6699743cc60/SubscribeMQTT/1/0/
   procedure Test_SubscribeMQTT (Gnattest_T : in out Test_Connection_MQTT) is
   --  client_mqtt.ads:72:4:SubscribeMQTT
--  end read only

      pragma Unreferenced (Gnattest_T);
      isSubscribed : Boolean := False;
      task T;
      task body T is
      begin
         delay(1.0);
         if(isSubscribed = False) then
            AUnit.Assertions.Assert(False,"Subcription fails.");
         end if;
      end T;
   begin

      Canal.SubscribeMQTT(Parametros_Subscribir);
      isSubscribed := True;
      delay (0.1);
      Canal.PublishMQTT(Parametros_publicar);




--  begin read only
   end Test_SubscribeMQTT;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end client_mqtt.Connection_MQTT_Test_Data.Connection_MQTT_Tests;
