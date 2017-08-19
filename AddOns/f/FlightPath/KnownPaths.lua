--[[  KnownPaths.lua

      *** These flight paths can be loaded via the '/fp load' command ***

            To load the boat and zeppelin paths type '/fp load misc'
            To load the Horde flight paths type '/fp load horde'
            To load the Alliance flight paths type '/fp load alliance'

      The Horde flight path data was collected by my level 60 mage with
      Honored faction, so the prices reflect the 10% faction discount. They
      will adjust to the correct price for you as you fly around Azeroth.

      There is only one alliance flight path at the moment, since I play
      the Horde and don't have an Alliance character of a sufficient level
      to collect all of the data. I'm still waiting for a someone with a
      high level alliance character to send me their savedvariables.lua file.

      o  The coordinates for a location can be shown via /fp status
      o  The continent is which continent is selected in the world map continent pulldown (1=Kalimdor, 2=EK)
      o  The zone is which zone is selected in the world map zone pulldown (first entry is 1, second 2, etc.)
      o  The duration is the time it takes -from- the corresponding endpoint
      o  KnownBy = ALL tells FlightPath to show this path as available (ungreyed) to all characters

]]

--              Misc routes are not actual flight paths. They are hand entered routes that
--              allow the display of boat and zeppelin connections on the zone maps.

FP_miscPaths = {
   {
      ["Endpoints"]  = {"Grizzlowe, Stranglethorn","Grimble, The Barrens"},
      ["Coords"]     = {"26.05,73.23","63.64,38.58"},
      ["Continent"]  = {2,1},
      ["Zone"]       = {18, 17},
      ["Duration"]   = {"7:00","7:00"},
      ["Faction"]    = "Horde",
      ["KnownBy"]    = {"ALL"},
   },
   {
      ["Endpoints"]  = {"Hin Denberg, Tirisfal Glades","Squibby Overspec, Stranglethorn"},
      ["Coords"]     = {"61.84,59.11","31.56,29.14"},
      ["Continent"]  = {2,2},
      ["Zone"]       = {21,18},
      ["Duration"]   = {"7:00","7:00"},
      ["Faction"]    = "Horde",
      ["KnownBy"]    = {"ALL"},
   },
   {
      ["Endpoints"]  = {"Snurk Bucksquick, Durotar","Nez'raz, Stranglethorn"},
      ["Coords"]     = {"50.6,12.68","31.37,30.12"},
      ["Continent"]  = {1,2},
      ["Zone"]       = {6,18},
      ["Duration"]   = {"7:00","7:00"},
      ["Faction"]    = "Horde",
      ["KnownBy"]    = {"ALL"},
   },
   {
      ["Endpoints"]  = {"Frezza, Durotar","Zapetta, Tirisfal Glades"},
      ["Coords"]     = {"50.89,13.84","60.72,58.78"},
      ["Continent"]  = {1,2},
      ["Zone"]       = {6,21},
      ["Duration"]   = {"7:00","7:00"},
      ["Faction"]    = "Horde",
      ["KnownBy"]    = {"ALL"},
   },
};

--              Some of this information was provide by Morphiasgnom of Bronzebeard. Thanks!

FP_alliancePaths = {
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Ironforge, Dun Morogh"},
      ["Continent"] = {2,2},
      ["Zone"] = {17,7},
      ["Coords"] = {"66.26,62.19","55.66,47.83"},
      ["Faction"] = "Alliance",
      ["Cost"] = 45,
      ["Duration"] = {"4:41","3:36"},
   },
   {
      ["Endpoints"] = {"Refuge Pointe, Arathi","Ironforge, Dun Morogh"},
      ["Cost"] = 477,
      ["Continent"] = {2,2},
      ["Zone"] = {2,7},
      ["Coords"] = {"45.74,46.06","55.66,47.83"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Refuge Pointe, Arathi","Menethil Harbor, Wetlands"},
      ["Cost"] = 477,
      ["Continent"] = {2,2},
      ["Zone"] = {2,25},
      ["Coords"] = {"45.74,46.06","9.52,59.65"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Refuge Pointe, Arathi","Thelsamar, Loch Modan"},
      ["Cost"] = 477,
      ["Continent"] = {2,2},
      ["Zone"] = {2,13},
      ["Coords"] = {"45.74,46.06","33.94,50.79"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Refuge Pointe, Arathi","Southshore, Hillsbrad"},
      ["Cost"] = 477,
      ["Continent"] = {2,2},
      ["Zone"] = {2,11},
      ["Coords"] = {"45.74,46.06","49.44,52.1"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Refuge Pointe, Arathi","Aerie Peak, The Hinterlands"},
      ["Cost"] = 530,
      ["Duration"] = {"1:13","1:13"},
      ["Continent"] = {2,2},
      ["Zone"] = {2,20},
      ["Coords"] = {"45.74,46.06","11.11,46.08"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Aerie Peak, The Hinterlands","Ironforge, Dun Morogh"},
      ["Cost"] = 657,
      ["Continent"] = {2,2},
      ["Zone"] = {20,7},
      ["Coords"] = {"11.11,46.08","55.66,47.83"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Aerie Peak, The Hinterlands","Southshore, Hillsbrad"},
      ["Cost"] = 657,
      ["Duration"] = {"1:07","1:07"},
      ["Continent"] = {2,2},
      ["Zone"] = {20,11},
      ["Coords"] = {"11.11,46.08","49.44,52.1"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Southshore, Hillsbrad","Ironforge, Dun Morogh"},
      ["Cost"] = 297,
      ["Duration"] = {"3:27","3:27"},
      ["Continent"] = {2,2},
      ["Zone"] = {11,7},
      ["Coords"] = {"49.44,52.1","55.66,47.83"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Southshore, Hillsbrad","Menethil Harbor, Wetlands"},
      ["Cost"] = 297,
      ["Continent"] = {2,2},
      ["Zone"] = {11,25},
      ["Coords"] = {"49.44,52.1","9.52,59.65"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Southshore, Hillsbrad","Chillwind Camp, Western Plaguelands"},
      ["Cost"] = 747,
      ["Duration"] = {"1:29","1:30"},
      ["Continent"] = {2,2},
      ["Zone"] = {11,23},
      ["Coords"] = {"49.44,52.1","42.93,84.9"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Ironforge, Dun Morogh","Menethil Harbor, Wetlands"},
      ["Cost"] = 297,
      ["Continent"] = {2,2},
      ["Zone"] = {7,25},
      ["Coords"] = {"55.66,47.83","9.52,59.65"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Ironforge, Dun Morogh","Thelsamar, Loch Modan"},
      ["Cost"] = 99,
      ["Duration"] = {"1:42","1:42"},
      ["Continent"] = {2,2},
      ["Zone"] = {7,13},
      ["Coords"] = {"55.66,47.83","33.94,50.79"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Sentinel Hill, Westfall"},
      ["Cost"] = 99,
      ["Continent"] = {2,2},
      ["Zone"] = {17,24},
      ["Coords"] = {"66.26,62.19","56.57,52.66"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Lakeshire, Redridge"},
      ["Cost"] = 189,
      ["Duration"] = {"1:57","1:57"},
      ["Continent"] = {2,2},
      ["Zone"] = {17,14},
      ["Coords"] = {"66.26,62.19","30.6,59.13"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Darkshire, Duskwood"},
      ["Cost"] = 297,
      ["Continent"] = {2,2},
      ["Zone"] = {17,8},
      ["Coords"] = {"66.26,62.19","77.59,44.37"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Booty Bay, Stranglethorn"},
      ["Cost"] = 567,
      ["Duration"] = {"4:05","4:05"},
      ["Continent"] = {2,2},
      ["Zone"] = {17,18},
      ["Coords"] = {"66.26,62.19","27.52,77.67"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Stormwind, Elwynn","Nethergarde Keep, Blasted Lands"},
      ["Cost"] = 747,
      ["Continent"] = {2,2},
      ["Zone"] = {17,4},
      ["Coords"] = {"66.26,62.19","65.49,24.42"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Booty Bay, Stranglethorn","Sentinel Hill, Westfall"},
      ["Cost"] = 567,
      ["Duration"] = {"8:29","8:29"},
      ["Continent"] = {2,2},
      ["Zone"] = {18,24},
      ["Coords"] = {"27.52,77.67","56.57,52.66"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Booty Bay, Stranglethorn","Darkshire, Duskwood"},
      ["Cost"] = 567,
      ["Continent"] = {2,2},
      ["Zone"] = {18,8},
      ["Coords"] = {"27.52,77.67","77.59,44.37"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Sentinel Hill, Westfall","Lakeshire, Redridge"},
      ["Cost"] = 99,
      ["Continent"] = {2,2},
      ["Zone"] = {24,14},
      ["Coords"] = {"56.57,52.66","30.6,59.13"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Sentinel Hill, Westfall","Darkshire, Duskwood"},
      ["Cost"] = 99,
      ["Duration"] = {"1:38","1:38"},
      ["Continent"] = {2,2},
      ["Zone"] = {24,8},
      ["Coords"] = {"56.57,52.66","77.59,44.37"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Darkshire, Duskwood","Lakeshire, Redridge"},
      ["Cost"] = 297,
      ["Duration"] = {"1:01","1:01"},
      ["Continent"] = {2,2},
      ["Zone"] = {8,14},
      ["Coords"] = {"77.59,44.37","30.6,59.13"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Darkshire, Duskwood","Nethergarde Keep, Blasted Lands"},
      ["Cost"] = 747,
      ["Duration"] = {"1:38","1:33"},
      ["Continent"] = {2,2},
      ["Zone"] = {8,4},
      ["Coords"] = {"77.59,44.37","65.49,24.42"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Thelsamar, Loch Modan","Menethil Harbor, Wetlands"},
      ["Cost"] = 99,
      ["Duration"] = {"2:32","2:32"},
      ["Continent"] = {2,2},
      ["Zone"] = {13,25},
      ["Coords"] = {"33.94,50.79","9.52,59.65"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Auberdine, Darkshore","Rut'theran Village, Teldrassil"},
      ["Cost"] = 0,
      ["Duration"] = {"1:26","1:30"},
      ["Continent"] = {1,1},
      ["Zone"] = {3,16},
      ["Coords"] = {"36.39,45.61","58.39,93.92"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Auberdine, Darkshore","Astranaar, Ashenvale"},
      ["Cost"] = 330,
      ["Continent"] = {1,},
      ["Zone"] = {3,},
      ["Coords"] = {"36.39,45.61",""},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Auberdine, Darkshore","Theramore, Dustwallow Marsh"},
      ["Cost"] = 567,
      ["Duration"] = {"11:31","11:31"},
      ["Continent"] = {1,1},
      ["Zone"] = {3,7},
      ["Coords"] = {"36.39,45.61","67.45,51.2"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Theramore, Dustwallow Marsh","Thalanaar, Feralas"},
      ["Cost"] = 387,
      ["Continent"] = {1,},
      ["Zone"] = {7,},
      ["Coords"] = {"67.45,51.2",""},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Theramore, Dustwallow Marsh","Gadgetzan, Tanaris"},
      ["Cost"] = 567,
      ["Duration"] = {"2:37","2:37"},
      ["Continent"] = {1,1},
      ["Zone"] = {7,15},
      ["Coords"] = {"67.45,51.2","50.95,29.32"},
      ["Faction"] = "Alliance",
   },
   {
      ["Endpoints"] = {"Gadgetzan, Tanaris","Thalanaar, Feralas"},
      ["Cost"] = 387,
      ["Continent"] = {1,},
      ["Zone"] = {15,},
      ["Coords"] = {"50.95,29.32",""},
      ["Faction"] = "Alliance",
   },
};

--              I'm fairly certain these are all of the Horde flight paths that are currently
--              available in game. Some of them are missing durations, as I haven't actually
--              flown between every possible destination. I did spend a few gold capturing
--              most of them though.


FP_hordePaths = {
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Bloodvenom Post, Felwood"},
      ["Zone"] = {12,8},
      ["Continent"] = { 1,1},
      ["Coords"] = {"45.28,63.74","34.41,53.86"},
      ["Faction"] = "Horde",
      ["Cost"] = 747,
      ["Duration"] = {"4:10","4:07"},
   },
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Everlook, Winterspring"},
      ["Zone"] = {12,21},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","60.48,36.34"},
      ["Faction"] = "Horde",
      ["Cost"] = 918,
      ["Duration"] = {"5:21","4:56"},
   },
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Brackenwall Village, Dustwallow Marsh"},
      ["Zone"] = {12,7},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","35.56,31.83"},
      ["Faction"] = "Horde",
      ["Cost"] = 567,
      ["Duration"] = {"3:49","3:49"},
   },
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Splintertree Post, Ashenvale"},
      ["Zone"] = {12,1},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","73.25,61.67"},
      ["Faction"] = "Horde",
      ["Cost"] = 477,
      ["Duration"] = {"1:30","1:30"},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Thunder Bluff, Mulgore"},
      ["Zone"] = {17,19},
      ["Cost"] = 99,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","46.65,49.89"},
      ["Faction"] = "Horde",
      ["Duration"] = {"2:38","2:38"},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Sun Rock Retreat, Stonetalon Mountains"},
      ["Zone"] = {17,14},
      ["Cost"] = 189,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","45.14,59.86"},
      ["Faction"] = "Horde",
      ["Duration"] = {"2:24","2:24"},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Freewind Post, Thousand Needles"},
      ["Cost"] = 387,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","45.02,49.12"},
      ["Faction"] = "Horde",
      ["Duration"] = {"3:08","3:08"},
      ["Zone"] = {17,18},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Gadgetzan, Tanaris"},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","51.6,25.5"},
      ["Faction"] = "Horde",
      ["Duration"] = {"5:05","5:05"},
      ["Zone"] = {17,15},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Camp Mojache, Feralas"},
      ["Zone"] = {17,9},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","75.42,44.31"},
      ["Faction"] = "Horde",
      ["Duration"] = {"4:13","4:13"},
   },
   {
      ["Zone"] = {17,2},
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","21.95,49.69"},
      ["Endpoints"] = {"Crossroads, The Barrens","Valormok, Azshara"},
      ["Faction"] = "Horde",
      ["Cost"] = 747,
      ["Duration"] = {"2:51","2:51"},
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Bloodvenom Post, Felwood"},
      ["Zone"] = {17,8},
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","34.41,53.86"},
      ["Faction"] = "Horde",
      ["Cost"] = 837,
      ["Duration"] = {"4:03","4:03" },
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Zoram'gar Outpost, Ashenvale"},
      ["Zone"] = {17,1},
      ["Cost"] = 297,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","12.22,33.79"},
      ["Faction"] = "Horde",
      ["Duration"] = {"3:49","3:49" },
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Splintertree Post, Ashenvale"},
      ["Zone"] = {17,1},
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","73.25,61.67"},
      ["Faction"] = "Horde",
      ["Cost"] = 477,
      ["Duration"] = {"2:39","2:39"},
   },
   {
      ["Endpoints"] = {"Valormok, Azshara","Thunder Bluff, Mulgore"},
      ["Zone"] = {2,19},
      ["Cost"] = 747,
      ["Continent"] = {1,1},
      ["Coords"] = {"21.95,49.69","46.65,49.89"},
      ["Faction"] = "Horde",
      ["Duration"] = {"4:29","4:29" },
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Sun Rock Retreat, Stonetalon Mountains"},
      ["Zone"] = {19,14},
      ["Cost"] = 189,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","45.14,59.86"},
      ["Faction"] = "Horde",
      ["Duration"] = {"3:17","3:17"},
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Freewind Post, Thousand Needles"},
      ["Cost"] = 387,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","45.02,49.12"},
      ["Faction"] = "Horde",
      ["Duration"] = {"3:25","3:25"},
      ["Zone"] = {19,18},
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Shadowprey Village, Desolace"},
      ["Zone"] = {19,5},
      ["Cost"] = 477,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","21.59,74.12"},
      ["Duration"] = {"2:53","2:53"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Gadgetzan, Tanaris"},
      ["Zone"] = {19,15},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","51.6,25.5"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Camp Mojache, Feralas"},
      ["Zone"] = {19,9},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","75.42,44.31"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Thunder Bluff, Mulgore","Brackenwall Village, Dustwallow Marsh"},
      ["Zone"] = {19,7},
      ["Cost"] = 567,
      ["Continent"] = {1,1},
      ["Coords"] = {"46.65,49.89","35.56,31.83"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Sun Rock Retreat, Stonetalon Mountains","Shadowprey Village, Desolace"},
      ["Zone"] = {14,5},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.14,59.86","21.59,74.12"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Shadowprey Village, Desolace","Camp Mojache, Feralas"},
      ["Zone"] = {5,9},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"21.59,74.12","75.42,44.31"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Camp Mojache, Feralas","Gadgetzan, Tanaris"},
      ["Zone"] = {9,15},
      ["Continent"] = {1,1},
      ["Coords"] = {"75.42,44.31","51.6,25.5"},
      ["Faction"] = "Horde",
      ["Cost"] = 567,
      ["Duration"] = {"3:13","3:13"},
   },
   {
      ["Endpoints"] = {"Gadgetzan, Tanaris","Freewind Post, Thousand Needles"},
      ["Zone"] = {15,18},
      ["Cost"] = 657,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.6,25.5","45.02,49.12"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Gadgetzan, Tanaris","Brackenwall Village, Dustwallow Marsh"},
      ["Zone"] = {15,7},
      ["Continent"] = {1,1},
      ["Coords"] = {"51.6,25.5","35.56,31.83"},
      ["Faction"] = "Horde",
      ["Cost"] = 567,
      ["Duration"] = {"3:42","3:42"},
   },
   {
      ["Zone"] = {15,13},
      ["Continent"] = {1,1},
      ["Coords"] = {"51.6,25.5","70.41,11.95"},
      ["Endpoints"] = {"Gadgetzan, Tanaris","Valor's Rest, Silithus"},
      ["Faction"] = "Horde",
      ["Cost"] = 918,
      ["Duration"] = {"3:14","3:14"},
   },
   {
      ["Endpoints"] = {"Everlook, Winterspring","Bloodvenom Post, Felwood"},
      ["Zone"] = {21,8},
      ["Continent"] = {1,1},
      ["Coords"] = {"60.48,36.34","34.41,53.86"},
      ["Faction"] = "Horde",
      ["Cost"] = 837,
      ["Duration"] = {"3:17","3:17"},
   },
   {
      ["Endpoints"] = {"Everlook, Winterspring","Moonglade"},
      ["Zone"] = {21,10},
      ["Continent"] = {1,1},
      ["Coords"] = {"60.48,36.34","32.15,66.33"},
      ["Faction"] = "Horde",
      ["Cost"] = 747,
      ["Duration"] = {"2:25","2:25"},
   },
   {
      ["Endpoints"] = {"Moonglade","Bloodvenom Post, Felwood"},
      ["Zone"] = {10,8},
      ["Continent"] = {1,1},
      ["Coords"] = {"32.15,66.33","34.41,53.86"},
      ["Faction"] = "Horde",
      ["Cost"] = 837,
      ["Duration"] = {"2:41","2:41"},
   },
   {
      ["Endpoints"] = {"Splintertree Post, Ashenvale","Zoram'gar Outpost, Ashenvale"},
      ["Faction"] = "Horde",
      ["Cost"] = 297,
      ["Continent"] = {1,1},
      ["Coords"] = {"73.25,61.67","12.22,33.79"},
      ["Zone"] = {1,1},
   },
   {
      ["Endpoints"] = {"Undercity, Tirisfal","Sepulcher, Silverpine"},
      ["Cost"] = 110,
      ["Zone"] = {22,16},
      ["Continent"] = {2,2},
      ["Coords"] = {"63.2,48.24","45.61,42.58"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Undercity, Tirisfal","Tarren Mill, Hillsbrad"},
      ["Cost"] = 330,
      ["Zone"] = {22,11},
      ["Continent"] = {2,2},
      ["Coords"] = {"63.2,48.24","60.14,18.64"},
      ["Faction"] = "Horde",
   },
   {
      ["Endpoints"] = {"Undercity, Tirisfal","Hammerfall, Arathi"},
      ["Cost"] = 530,
      ["Zone"] = {22,2},
      ["Continent"] = {2,2},
      ["Coords"] = {"63.2,48.24","73.05,32.65"},
      ["Faction"] = "Horde",
      ["Duration"] = {"4:16","4:16"},
   },
   {
      ["Endpoints"] = {"Undercity, Tirisfal","Kargath, Badlands"},
      ["Zone"] = {22,3},
      ["Continent"] = {2,2},
      ["Coords"] = {"63.2,48.24","4.05,44.88"},
      ["Faction"] = "Horde",
      ["Duration"] = {"8:11","8:10"},
      ["Cost"] = 567,
   },
   {
      ["Endpoints"] = {"Undercity, Tirisfal","Light's Hope Chapel, Eastern Plaguelands"},
      ["Zone"] = {22,9},
      ["Continent"] = {2,2},
      ["Coords"] = {"63.2,48.24","80.12,57.04"},
      ["Faction"] = "Horde",
      ["Cost"] = 1020,
      ["Duration"] = {"4:23","4:23"},
   },
   {
      ["Endpoints"] = {"Tarren Mill, Hillsbrad","Hammerfall, Arathi"},
      ["Zone"] = {11,2},
      ["Continent"] = {2,2},
      ["Coords"] = {"60.14,18.64","73.05,32.65"},
      ["Faction"] = "Horde",
      ["Duration"] = {"1:55","1:55"},
   },
   {
      ["Endpoints"] = {"Hammerfall, Arathi","Kargath, Badlands"},
      ["Cost"] = 567,
      ["Zone"] = {2,3},
      ["Continent"] = {2,2},
      ["Coords"] = {"73.05,32.65","4.05,44.88"},
      ["Faction"] = "Horde",
      ["Duration"] = {"4:17","4:17"},
   },
   {
      ["Endpoints"] = {"Kargath, Badlands","Booty Bay, Stranglethorn"},
      ["Cost"] = 567,
      ["Zone"] = {3,18},
      ["Continent"] = {2,2},
      ["Coords"] = {"4.05,44.88","26.87,77.09"},
      ["Faction"] = "Horde",
      ["Duration"] = {"6:34","6:34"},
   },
   {
      ["Endpoints"] = {"Kargath, Badlands","Grom'gol, Stranglethorn"},
      ["Cost"] = 477,
      ["Faction"] = "Horde",
      ["Continent"] = {2,2},
      ["Coords"] = {"4.05,44.88","32.54,29.34"},
      ["Zone"] = {3,18},
   },
   {
      ["Endpoints"] = {"Kargath, Badlands","Stonard, Swamp of Sorrows"},
      ["Zone"] = {3,19},
      ["Continent"] = {2,2},
      ["Coords"] = {"4.05,44.88","46.05,54.67"},
      ["Faction"] = "Horde",
      ["Cost"] = 639,
      ["Duration"] = {"4:45","4:45" },
   },
   {
      ["Endpoints"] = {"Kargath, Badlands","Flame Crest, Burning Steppes"},
      ["Cost"] = 747,
      ["Faction"] = "Horde",
      ["Continent"] = {2,2},
      ["Coords"] = {"4.05,44.88","65.68,24.2"},
      ["Zone"] = {3,5},
   },
   {
      ["Endpoints"] = {"Flame Crest, Burning Steppes","Stonard, Swamp of Sorrows"},
      ["Faction"] = "Horde",
      ["Continent"] = {2,2},
      ["Coords"] = {"65.68,24.2","46.05,54.67"},
      ["Zone"] = {5,19},
   },
   {
      ["Endpoints"] = {"Stonard, Swamp of Sorrows","Booty Bay, Stranglethorn"},
      ["Faction"] = "Horde",
      ["Continent"] = {2,2},
      ["Coords"] = {"46.05,54.67","26.87,77.09"},
      ["Zone"] = {19,18},
   },
   {
      ["Endpoints"] = {"Stonard, Swamp of Sorrows","Grom'gol, Stranglethorn"},
      ["Faction"] = "Horde",
      ["Continent"] = {2,2},
      ["Coords"] = {"46.05,54.67","32.54,29.34"},
      ["Zone"] = {19,18},
      ["Duration"] = {"3:10","3:10"},
   },
   {
      ["Endpoints"] = {"Grom'gol, Stranglethorn","Booty Bay, Stranglethorn"},
      ["Zone"] = {18,18},
      ["Continent"] = {2,2},
      ["Coords"] = {"32.54,29.34","26.87,77.09"},
      ["Faction"] = "Horde",
      ["Duration"] = {"1:22","1:22"},
   },
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Thunder Bluff, Mulgore"},
      ["Zone"] = {12,19},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","46.65,49.89"},
      ["Faction"] = "Horde",
      ["Cost"] = 45,
      ["Duration"] = {"3:48","3:28"},
   },
   {
      ["Endpoints"] = { "Orgrimmar, Durotar","Crossroads, The Barrens"},
      ["Zone"] = {12,17},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","51.5,30.4"},
      ["Faction"] = "Horde",
      ["Cost"] = 99,
      ["Duration"] = {"1:51","2:14"},
   },
   {
      ["Endpoints"] = {"Orgrimmar, Durotar","Gadgetzan, Tanaris"},
      ["Zone"] = {12,15},
      ["Continent"] = {1,1},
      ["Coords"] = {"45.28,63.74","51.6,25.5"},
      ["Faction"] = "Horde",
      ["Cost"] = 657,
      ["Duration"] = {"6:57","6:57"},
   },
   {
      ["Endpoints"] = {"Valormok, Azshara","Orgrimmar, Durotar"},
      ["Zone"] = {2,12},
      ["Continent"] = {1,1},
      ["Coords"] = {"21.95,49.69","45.28,63.74"},
      ["Faction"] = "Horde",
      ["Duration"] = {"2:02","1:40"},
      ["Cost"] = 747,
   },
   {
      ["Endpoints"] = {"Crossroads, The Barrens","Brackenwall Village, Dustwallow Marsh"},
      ["Cost"] = 567,
      ["Continent"] = {1,1},
      ["Coords"] = {"51.5,30.4","35.56,31.83"},
      ["Faction"] = "Horde",
      ["Duration"] = {"2:44","2:43"},
      ["Zone"] = {17,7},
   },
   {
      ["Zone"] = {
         [1] = 20,
         [2] = 22,
      },
      ["Continent"] = {
         [1] = 2,
         [2] = 2,
      },
      ["Coords"] = {
         [1] = "81.67,81.77",
         [2] = "63.59,48.85",
      },
      ["Endpoints"] = {
         [1] = "Revantusk Village, The Hinterlands",
         [2] = "Undercity, Tirisfal",
      },
      ["Faction"] = "Horde",
      ["Cost"] = 730,
      ["Duration"] = {
         [1] = "4:44",
         [2] = "4:45",
      },
   },
   {
      ["Zone"] = {
         [1] = 20,
         [2] = 11,
      },
      ["Continent"] = {
         [1] = 2,
         [2] = 2,
      },
      ["Coords"] = {
         [1] = "81.67,81.77",
         [2] = "60.2,18.75",
      },
      ["Endpoints"] = {
         [1] = "Revantusk Village, The Hinterlands",
         [2] = "Tarren Mill, Hillsbrad",
      },
      ["Faction"] = "Horde",
      ["Cost"] = 297,
      ["Duration"] = {
         [1] = "3:12",
         [2] = "3:12",
      },
   },
   {
      ["Zone"] = {
         [1] = 15,
         [2] = 3,
      },
      ["Continent"] = {
         [1] = 2,
         [2] = 2,
      },
      ["Coords"] = {
         [1] = "34.94,30.94",
         [2] = "4.08,44.88",
      },
      ["Endpoints"] = {
         [1] = "Thorium Point, Searing Gorge",
         [2] = "Kargath, Badlands",
      },
      ["Faction"] = "Horde",
      ["Cost"] = 747,
      ["Duration"] = {
         [1] = "0:57",
         [2] = "0:57",
      },
   },
   {
      ["Zone"] = {
         [1] = 15,
         [2] = 0,
      },
      ["Cost"] = 706,
      ["Continent"] = {
         [1] = 2,
         [2] = 0,
      },
      ["Coords"] = {
         [1] = "34.94,30.94",
         [2] = "0,0",
      },
      ["Faction"] = "Horde",
      ["Endpoints"] = {
         [1] = "Thorium Point, Searing Gorge",
         [2] = "Flame Crest, Burning Steppes",
      },
   },
   {
      ["Cost"] = 706,
      ["Continent"] = {
         [1] = 1,
         [2] = 1,
      },
      ["Coords"] = {
         [1] = "34.41,53.86",
         [2] = "21.91,49.63",
      },
      ["Endpoints"] = {
         [1] = "Bloodvenom Post, Felwood",
         [2] = "Valormok, Azshara",
      },
      ["Faction"] = "Horde",
      ["Duration"] = {
         [1] = "3:59",
         [2] = "3:59",
      },
      ["Zone"] = {
         [1] = 8,
         [2] = 2,
      },
   },
}

