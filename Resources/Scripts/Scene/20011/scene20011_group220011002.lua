group_id = 220011002

monsters = { 
  { config_id = 2001, monster_id = 21010401, pos = { x = 403.547, y = -23.915, z = 127.105 }, rot = { x = 0, y = 182.002, z = 0 }, level = 3, disableWander = true, pose_id = 402 }, 
  { config_id = 2002, monster_id = 21010401, pos = { x = 408.938, y = -24.157, z = 125.166 }, rot = { x = 0, y = 206.842, z = 0 }, level = 3, disableWander = true, pose_id = 402 }, 
  { config_id = 2003, monster_id = 21010401, pos = { x = 397.369, y = -24.082, z = 125.887 }, rot = { x = 0, y = 159.597, z = 0 }, level = 3, disableWander = true, pose_id = 402 }, 
  { config_id = 2004, monster_id = 21010201, pos = { x = 400.309, y = -24.535, z = 130.894 }, rot = { x = 0, y = 181.892, z = 0 }, level = 3 } 
}

npcs = {  }

gadgets = { 
  { config_id = 2005, gadget_id = 70350002, pos = { x = 415.696, y = -24.157, z = 120.856 }, rot = { x = 0, y = 90, z = 0 }, level = 1 }, 
  { config_id = 2006, gadget_id = 70211002, pos = { x = 403.362, y = -24.195, z = 122.321 }, rot = { x = 0, y = 180.016, z = 0 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }, 
  { config_id = 2007, gadget_id = 70220005, pos = { x = 399.79, y = -23.586, z = 140.555 }, rot = { x = 0, y = 212.019, z = 0 }, level = 1 }, 
  { config_id = 2008, gadget_id = 70220014, pos = { x = 401.448, y = -23.735, z = 141.314 }, rot = { x = 0, y = 206.747, z = 0 }, level = 1 }, 
  { config_id = 2009, gadget_id = 70220013, pos = { x = 404.071, y = -23.598, z = 141.198 }, rot = { x = 0, y = 199.722, z = 0 }, level = 1 }, 
  { config_id = 2010, gadget_id = 70220013, pos = { x = 402.69, y = -23.677, z = 142.969 }, rot = { x = 0, y = 205.364, z = 0 }, level = 1 }, 
  { config_id = 2011, gadget_id = 70220013, pos = { x = 399.898, y = -23.576, z = 142.352 }, rot = { x = 0, y = 92.675, z = 0 }, level = 1 }, 
  { config_id = 2012, gadget_id = 70310001, pos = { x = 414.01, y = -22.193, z = 126.607 }, rot = { x = 0, y = 270, z = 0 }, level = 1 }, 
  { config_id = 2013, gadget_id = 70310001, pos = { x = 413.83, y = -22.155, z = 114.879 }, rot = { x = 0, y = 270, z = 0 }, level = 1 }, 
  { config_id = 2014, gadget_id = 70900202, pos = { x = 422.935, y = -22.809, z = 120.917 }, rot = { x = 0, y = 215.579, z = 0 }, level = 1 } 
}

regions = { 
  { config_id = 33, shape = RegionShape.CUBIC, size = { x = 5, y = 3, z = 10 }, pos = { x = 418.49, y = -24.134, z = 121.102 } }, 
  { config_id = 62, shape = RegionShape.CUBIC, size = { x = 10, y = 3, z = 10 }, pos = { x = 418.126, y = -22.55, z = 71.301 } } 
}

triggers = { 
  { config_id = 1000009, name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" }, 
  { config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" }, 
  { config_id = 1000033, name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_33", action = "action_EVENT_ENTER_REGION_33", forbid_guest = false }, 
  { config_id = 1000062, name = "ENTER_REGION_62", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62", action = "action_EVENT_ENTER_REGION_62", forbid_guest = false } 
}

variables = {  }

init_config = { 
  suite = 1, 
  end_suite = 0, 
  rand_suite = true 
}

suites = {{
    monsters = {2001, 2002, 2003, 2004},
    gadgets = {2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013},
    regions = {33, 62},
    triggers = {"ANY_MONSTER_DIE_9", "ANY_MONSTER_DIE_32", "ENTER_REGION_33", "ENTER_REGION_62"},
    rand_weight = 100
}}

function condition_EVENT_ANY_MONSTER_DIE_9(context, args)
    if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
        return false
    end
    return true
end

function action_EVENT_ANY_MONSTER_DIE_9(context, args)
    ScriptLib.AddExtraGroupSuite(context, 220011007, 5)
    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 4)

    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end

    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end

    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end

    if 0 ~= ScriptLib.CreateGadget(context, {
        config_id = 2014
    }) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : dungeon_settle")
        return -1
    end

    if 0 ~= ScriptLib.ShowReminder(context, 1041042) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
        return -1
    end

    local lookPos = {
        x = 415,
        y = -19,
        z = 121
    }
    local followPos = {
        x = 0,
        y = 0,
        z = 0
    }
    if 0 ~= ScriptLib.BeginCameraSceneLook(context, {
        look_pos = lookPos,
        is_allow_input = false,
        duration = 2,
        is_force = true,
        is_broadcast = false,
        is_recover_keep_current = true,
        delay = 0,
        is_set_follow_pos = false,
        follow_pos = followPos,
        is_force_walk = false,
        is_change_play_mode = false,
        is_set_screen_XY = false,
        screen_x = 0,
        screen_y = 0
    }) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
        return -1
    end
    return 0
end


function condition_EVENT_ANY_MONSTER_DIE_32(context, args)
  if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
    return false
  end
  return true
end

function action_EVENT_ANY_MONSTER_DIE_32(context, args)
  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2006, GadgetState.Default) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
    return -1
  end
  return 0
end

function condition_EVENT_ENTER_REGION_33(context, args)
  if args.param1 ~= 33 then
    return false
  end
  local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, { region_eid = args.source_eid, entity_type = EntityType.AVATAR })
  if avatarEntityCount < 1 then
    return false
  end
  return true
end

function action_EVENT_ENTER_REGION_33(context, args)
  if 0 ~= ScriptLib.ShowReminder(context, 1041072) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
    return -1
  end
  return 0
end

function condition_EVENT_ENTER_REGION_62(context, args)
  if args.param1 ~= 62 then
    return false
  end
  
  local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, { region_eid = args.source_eid, entity_type = EntityType.AVATAR })
  if avatarEntityCount < 1 then
    return false
  end
  return true
end

function action_EVENT_ENTER_REGION_62(context, args)
    local lookPos = { x = 410, y = -22, z = 63 }
    local followPos = { x = 0, y = 0, z = 0 }
    if 0 ~= ScriptLib.BeginCameraSceneLook(context, {
        look_pos = lookPos,
        is_allow_input = false,
        duration = 1,
        is_force = true,
        is_broadcast = false,
        is_recover_keep_current = true,
        delay = 0,
        is_set_follow_pos = false,
        follow_pos = followPos,
        is_force_walk = false,
        is_change_play_mode = false,
        is_set_screen_XY = false,
        screen_x = 0,
        screen_y = 0
    }) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
        return -1
    end

    if 0 ~= ScriptLib.ShowReminder(context, 1041093) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
        return -1
    end
    return 0
end


