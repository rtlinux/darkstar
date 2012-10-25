-----------------------------------
-- Area: Bhaflau Thickets
-- NPC:  Runic Portal
-- Mamook Ja Teleporter Back to Aht Urgan Whitegate
-- @pos -211 -11 -818 52
-----------------------------------
package.loaded["scripts/zones/Bhaflau_Thickets/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/besieged");
require("scripts/globals/teleports");
require("scripts/zones/Bhaflau_Thickets/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	if(hasRunicPortal(player,3) == 1) then
		player:startEvent(0x006d);
	else
		player:startEvent(0x006f);
	end
	
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
	
	if(option == 1) then
		if(csid == 0x006f) then
			player:addNationTeleport(AHTURHGAN,8);
		end
		toChamberOfPassage(player);
	end
	
end;