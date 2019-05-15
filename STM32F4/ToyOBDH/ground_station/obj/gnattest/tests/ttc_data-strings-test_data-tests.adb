--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into TTC_Data.Strings.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

with HK_Data;                 use HK_Data;

with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Calendar;            use Ada.Calendar;
with GNAT.Calendar.Time_IO;   use GNAT.Calendar.Time_IO;
with GNAT.Formatted_String;   use GNAT.Formatted_String;
with Ada.Strings.Bounded;     use Ada.Strings.Bounded;
with Ada.Characters.Latin_1;  use Ada.Characters.Latin_1;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body TTC_Data.Strings.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Image (Gnattest_T : in out Test);
   procedure Test_Image_927fb7 (Gnattest_T : in out Test) renames Test_Image;
--  id:2.2/927fb741c555012e/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test) is
   --  ttc_data-strings.ads:25:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);
      messageBas : TM_Message := (Timestamp => Mission_Time(000002344), Kind => Basic,
                                  Data => (Value => (Temperature => Sensor_Reading(0.0),Light => Sensor_Reading(0.0)), Timestamp =>  Mission_Time(000002344)));
      messageHK : TM_Message := (Timestamp => Mission_Time(000002344), Kind => Housekeeping,
                                 Data => (Value => (Temperature => Sensor_Reading(0.0),Light => Sensor_Reading(0.0)), Timestamp =>  Mission_Time(000002344)));
      CorrectBasic: String := Image(Clock, "%T") & " TM    Timestamp:  000002344    Temperature:  0000  -40.0 C    Light:  0000   0.0 %";
      CorrectHK: String := Image(Clock, "%T") & " TM   HK log    Timestamp:  000002344    Temperature:  0000  -40.0 C    Light:  0000   0.0 %";

   begin
      AUnit.Assertions.Assert(Image(messageBas) = CorrectBasic,"image basic fails.");
      AUnit.Assertions.Assert(Image(messageHK) = CorrectHK,"image HK fails.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_MQTTImage (Gnattest_T : in out Test);
   procedure Test_MQTTImage_42f3b4 (Gnattest_T : in out Test) renames Test_MQTTImage;
--  id:2.2/42f3b4a38f13f0e8/MQTTImage/1/0/
   procedure Test_MQTTImage (Gnattest_T : in out Test) is
   --  ttc_data-strings.ads:26:4:MQTTImage
--  end read only

      pragma Unreferenced (Gnattest_T);
      messageBas : TM_Message := (Timestamp => Mission_Time(000002344), Kind => Basic,
                                  Data => (Value => (Temperature => Sensor_Reading(0.0),Light => Sensor_Reading(0.0)), Timestamp =>  Mission_Time(000002344)));
      CorrectBasic: String := " 000002344 , -40.0 C ,  0.0 %";

   begin

      AUnit.Assertions.Assert(MQTTImage(messageBas) = CorrectBasic," MQTT image basic fails.");


--  begin read only
   end Test_MQTTImage;
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
end TTC_Data.Strings.Test_Data.Tests;
