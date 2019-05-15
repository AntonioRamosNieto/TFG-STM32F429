--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into client_mqtt.Test_Data.

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
package body client_mqtt.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_ReceivedMQTT (Gnattest_T : in out Test);
   procedure Test_ReceivedMQTT_b3082a (Gnattest_T : in out Test) renames Test_ReceivedMQTT;
--  id:2.2/b3082a3c01dbdb1f/ReceivedMQTT/1/0/
   procedure Test_ReceivedMQTT (Gnattest_T : in out Test) is
   --  client_mqtt.ads:75:4:ReceivedMQTT
--  end read only

      pragma Unreferenced (Gnattest_T);
      rec : Boolean := False;
   begin
         delay (0.1);
         ReceivedMQTT(rec);
         if(not rec) then
            AUnit.Assertions.Assert(False,"receive MQTT fails.");
         end if;

--  begin read only
   end Test_ReceivedMQTT;
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
end client_mqtt.Test_Data.Tests;
