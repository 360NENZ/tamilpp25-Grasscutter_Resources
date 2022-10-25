local L1_1
L1_1 = {
	group_id = 133226006
}
monsters = {}
npcs = {}
gadgets = {
	{ config_id = 6003, gadget_id = 70360001, pos = { x = -6136.269, y = 212.007, z = -3267.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 6004, gadget_id = 70360001, pos = { x = -6262.859, y = 203.792, z = -3104.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
}
regions = {
	{ config_id = 6001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -6137.579, y = 211.800, z = -3266.147 }, area_id = 18 },
	{ config_id = 6002, shape = RegionShape.CUBIC, size = { x = 70.000, y = 10.000, z = 20.000 }, pos = { x = -6260.643, y = 204.040, z = -3106.919 }, area_id = 18 }
}
triggers = {
	{ config_id = 1006001, name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6001", action = "action_EVENT_ENTER_REGION_6001" },
	{ config_id = 1006002, name = "ENTER_REGION_6002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6002", action = "action_EVENT_ENTER_REGION_6002" }
}
variables = {}
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}
suites = {
	{
		monsters = { },
		gadgets = { 6003, 6004 },
		regions = { 6001, 6002 },
		triggers = { "ENTER_REGION_6001", "ENTER_REGION_6002" },
		rand_weight = 100
	}
}
function condition_EVENT_ENTER_REGION_6001(A0_2, A1_2)
	if A1_2.param1 ~= 6001 then return false end
	if ScriptLib.GetRegionEntityCount(A0_2, { region_eid = A1_2.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end	
	return true
end
function action_EVENT_ENTER_REGION_6001(A0_2, A1_2)
	if 0 ~= ScriptLib.ShowReminder(A0_2, 721730002) then
	  ScriptLib.PrintContextLog(A0_2, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end	
	return 0
end
function condition_EVENT_ENTER_REGION_6002(A0_2, A1_2)
	if A1_2.param1 ~= 6002 then return false end
	if ScriptLib.GetRegionEntityCount(A0_2, { region_eid = A1_2.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end	
	return true
end
function action_EVENT_ENTER_REGION_6002(A0_2, A1_2)
	if 0 ~= ScriptLib.ShowReminder(A0_2, 721730003) then
	  ScriptLib.PrintContextLog(A0_2, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end	
	return 0
end