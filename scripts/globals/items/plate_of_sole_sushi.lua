-----------------------------------------
-- ID: 5149
-- Item: plate_of_sole_sushi
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Strength 5
-- Dexterity 6
-- Accuracy % 15
-- Ranged ACC % 15
-- Sleep Resist 5
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,1800,5149);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_STR, 5);
	target:addMod(MOD_DEX, 6);
	target:addMod(MOD_ACCP, 15);
	target:addMod(MOD_RACCP, 15);
	target:addMod(MOD_SLEEPRES, 5);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_STR, 5);
	target:delMod(MOD_DEX, 6);
	target:delMod(MOD_ACCP, 15);
	target:delMod(MOD_RACCP, 15);
	target:delMod(MOD_SLEEPRES, 5);
end;
