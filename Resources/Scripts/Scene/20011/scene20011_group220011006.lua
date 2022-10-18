group_id = 220011006

monsters = { 
  { config_id = 9, monster_id = 20011201, pos = { x = 409.722, y = -22.182, z = 67.23 }, rot = { x = 0, y = 136.765, z = 0 }, level = 1, disableWander = true }, 
  { config_id = 25, monster_id = 20011201, pos = { x = 409.713, y = -21.99, z = 60.594 }, rot = { x = 0, y = 36.531, z = 0 }, level = 1, disableWander = true }, 
  { config_id = 26, monster_id = 20011201, pos = { x = 408.62, y = -22.084, z = 61.386 }, rot = { x = 0, y = 76.905, z = 0 }, level = 1, disableWander = true }, 
  { config_id = 28, monster_id = 20011201, pos = { x = 408.79, y = -22.05, z = 65.882 }, rot = { x = 0, y = 109.366, z = 0 }, level = 1, disableWander = true } 
}

npcs = {  }

gadgets = {  }

regions = {  }

triggers = { 
  { config_id = 1000008, name = "CHALLENGE_SUCCESS_8", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8" }, 
  { config_id = 1000061, name = "CHALLENGE_FAIL_61", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_61" }, 
  { config_id = 1000065, name = "ANY_MONSTER_LIVE_65", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_65", action = "action_EVENT_ANY_MONSTER_LIVE_65" } 
}

variables = {  }

init_config = { 
  suite = 2, 
  end_suite = 0, 
  rand_suite = false 
}

suites = {
  {
    monsters = {9, 25, 26, 28},
    gadgets = {},
    regions = {},
    triggers = {"CHALLENGE_SUCCESS_8", "CHALLENGE_FAIL_61", "ANY_MONSTER_LIVE_65"},
    rand_weight = 100
  }, {
    monsters = {},
    gadgets = {},
    regions = {},
    triggers = {},
    rand_weight = 100
  }
}


function action_EVENT_CHALLENGE_SUCCESS_8(context, args)
  ScriptLib.RemoveExtraGroupSuite(context, 220011007, 3)
  ScriptLib.AddExtraGroupSuite(context, 220011007, 4)

  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1006, GadgetState.GearStart) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
    return -1
  end

  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1022, GadgetState.GearStart) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
    return -1
  end

  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1023, GadgetState.GearStart) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
    return -1
  end

  local lookPos= { x = 406, y = -17, z = 81 }
  local followPos= { x = 0, y = 0, z = 0 }
  if 0 ~= ScriptLib.BeginCameraSceneLook(context, { 
    look_pos = lookPos, 
    is_allow_input = false, 
    duration = 2, is_force = true, 
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

  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1048, GadgetState.Default) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
    return -1
  end
  return 0
end

function action_EVENT_CHALLENGE_FAIL_61(context, args)
  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1047, GadgetState.Default) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
    return -1
  end

  if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220011006, suite = 2 }) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
    return -1
  end
  return 0
end

function condition_EVENT_ANY_MONSTER_LIVE_65(context, args)
  if 9 ~= args.param1 then
    return false
  end
  return true
end

function action_EVENT_ANY_MONSTER_LIVE_65(context, args)
  if 0 ~= ScriptLib.ActiveChallenge(context, 1, 137, 20, 220011006, 4, 0) then
    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
    return -1
  end
  return 0
end