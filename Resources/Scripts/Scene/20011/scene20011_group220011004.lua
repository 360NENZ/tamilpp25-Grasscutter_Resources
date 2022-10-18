local globalDefs = { 
  gadget_id_1 = 97, 
  gadget_id_2 = 70, 
  gadget_id_3 = 137, 
  gadget_id_4 = 138, 
  gadget_id_5 = 139, 
  gadget_id_6 = 140, 
  gadget_id_7 = 4, 
  gadget_id_8 = 83, 
  gadget_id_9 = 7 
}

monsters = {  }

npcs = {  }

gadgets = { 
  { config_id = 29, gadget_id = 70300016, pos = { x = 533.847, y = -1.984, z = 254.026 }, rot = { x = 0, y = 181.174, z = 0 }, level = 1, persistent = true }, 
  { config_id = 56, gadget_id = 70310001, pos = { x = 522.986, y = -2.133, z = 251.939 }, rot = { x = 0, y = 90, z = 0 }, level = 1 }, 
  { config_id = 57, gadget_id = 70310001, pos = { x = 543.354, y = -2.069, z = 252.1 }, rot = { x = 0, y = 270, z = 0 }, level = 1 }, 
  { config_id = 58, gadget_id = 70310001, pos = { x = 528.495, y = -2.061, z = 261.877 }, rot = { x = 0, y = 180, z = 0 }, level = 1 }, 
  { config_id = 59, gadget_id = 70310001, pos = { x = 525.688, y = -2.085, z = 256.865 }, rot = { x = 0, y = 37.098, z = 0 }, level = 1 }, 
  { config_id = 60, gadget_id = 70310001, pos = { x = 540.554, y = -2.066, z = 256.967 }, rot = { x = 0, y = 110.444, z = 0 }, level = 1 }, 
  { config_id = 69, gadget_id = 70211021, pos = { x = 533.532, y = -2.051, z = 257.035 }, rot = { x = 0, y = 180.627, z = 0 }, level = 1, chest_drop_id = 11010600, drop_count = 1, isOneoff = true }, 
  { config_id = 70, gadget_id = 70380001, pos = { x = 531.604, y = -22.408, z = 141.296 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 6, start_route = false }, 
  { config_id = 81, gadget_id = 70310001, pos = { x = 537.904, y = -2.046, z = 261.743 }, rot = { x = 0, y = 247.823, z = 0 }, level = 1 }, 
  { config_id = 82, gadget_id = 70380001, pos = { x = 520.953, y = -25.99, z = 121.329 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 7 }, 
  { config_id = 83, gadget_id = 70360002, pos = { x = 532.819, y = -24.889, z = 123.122 }, rot = { x = 0, y = 270.679, z = 0 }, level = 1 }, 
  { config_id = 84, gadget_id = 70900205, pos = { x = 531.371, y = -24.819, z = 121.518 }, rot = { x = 0, y = 0, z = 0 }, level = 1 }, 
  { config_id = 85, gadget_id = 70900205, pos = { x = 531.472, y = -9.345, z = 158.632 }, rot = { x = 0, y = 0, z = 0 }, level = 1 }, 
  { config_id = 86, gadget_id = 70380001, pos = { x = 531.644, y = -10.726, z = 163.823 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 8 }, 
  { config_id = 97, gadget_id = 70900202, pos = { x = 531.416, y = -8.752, z = 158.659 }, rot = { x = 0, y = 103.806, z = 0 }, level = 1 }, 
  { config_id = 98, gadget_id = 70900202, pos = { x = 532.576, y = -1.08, z = 221.851 }, rot = { x = 0, y = 277.205, z = 0 }, level = 1 }, 
  { config_id = 137, gadget_id = 70380001, pos = { x = 545.317, y = -25.822, z = 131.972 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 20011012, start_route = false }, 
  { config_id = 138, gadget_id = 70380001, pos = { x = 540.062, y = -25.787, z = 131.692 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 20011011, start_route = false }, 
  { config_id = 139, gadget_id = 70380001, pos = { x = 531.673, y = -18.917, z = 136.523 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 20011010, start_route = false }, 
  { config_id = 140, gadget_id = 70380001, pos = { x = 520.582, y = -25.972, z = 151.526 }, rot = { x = 0, y = 0, z = 0 }, level = 1, route_id = 20011009, start_route = false }, 
  { config_id = 141, gadget_id = 70900205, pos = { x = 531.747, y = -25.927, z = 151.336 }, rot = { x = 0, y = 0, z = 0 }, level = 1 } 
}

regions = { 
  { config_id = 38, shape = RegionShape.CUBIC, size = { x = 40, y = 5, z = 10 }, pos = { x = 533.597, y = -2.137, z = 238.024 } }, 
  { config_id = 53, shape = RegionShape.SPHERE, radius = 5, pos = { x = 531.109, y = -9.328, z = 158.314 } }, 
  { config_id = 54, shape = RegionShape.SPHERE, radius = 5, pos = { x = 532.769, y = -2.051, z = 223.711 } }, 
  { config_id = 63, shape = RegionShape.CUBIC, size = { x = 5, y = 5, z = 3 }, pos = { x = 531.533, y = -23.574, z = 151.641 } }
}

triggers = { 
  { config_id = 1000038, name = "ENTER_REGION_38", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38", action = "action_EVENT_ENTER_REGION_38", forbid_guest = false },
  { config_id = 1000043, name = "DUNGEON_SETTLE_43", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_43", action = "action_EVENT_DUNGEON_SETTLE_43" }, 
  { config_id = 1000047, name = "GADGET_CREATE_47", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47", action = "action_EVENT_GADGET_CREATE_47" }, 
  { config_id = 1000048, name = "SELECT_OPTION_48", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48", action = "action_EVENT_SELECT_OPTION_48", forbid_guest = false }, 
  { config_id = 1000053, name = "ENTER_REGION_53", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53", action = "action_EVENT_ENTER_REGION_53", forbid_guest = false }, 
  { config_id = 1000054, name = "ENTER_REGION_54", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54", action = "action_EVENT_ENTER_REGION_54", forbid_guest = false }, 
  { config_id = 1000063, name = "ENTER_REGION_63", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_63", action = "action_EVENT_ENTER_REGION_63", forbid_guest = false }, 
  { config_id = 1004001, name = "ANY_GADGET_DIE_4001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4001", action = "action_EVENT_ANY_GADGET_DIE_4001" } 
}

variables = {  }

init_config = { 
  suite = 1, 
  end_suite = 0, 
  rand_suite = true 
}

suites = {
  {
    monsters = {},
    gadgets = {29, 56, 57, 58, 59, 60, 70, 81, 82, 83, 84, 85, 86, 137, 138, 139, 140, 141},
    regions = {38, 53, 54, 63},
    triggers = {"ENTER_REGION_38", "DUNGEON_SETTLE_43", "GADGET_CREATE_47", "SELECT_OPTION_48", "ENTER_REGION_53", "ENTER_REGION_54", "ENTER_REGION_63", "ANY_GADGET_DIE_4001"},
    rand_weight = 100
  }
}

function condition_EVENT_ENTER_REGION_38(context, args)
    if args.param1 ~= 38 then
        return false
    end

    local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, {
        region_eid = args.source_eid,
        entity_type = EntityType.AVATAR
    })
    if avatarEntityCount < 1 then
        return false
    end
    return true
end

function action_EVENT_ENTER_REGION_38(context, args)
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81, GadgetState.GearStart) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end
    
    if 0 ~= ScriptLib.ShowReminder(context, 1041112) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
        return -1
    end
    return 0
end

function condition_EVENT_DUNGEON_SETTLE_43(context, args)
    if 1 ~= args.param1 then
        return false
    end
    return true
end

function action_EVENT_DUNGEON_SETTLE_43(context, args)
    if 0 ~= ScriptLib.CreateGadget(context, { config_id = 69 }) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : dungeon_settle")
        return -1
    end
    return 0
end

function condition_EVENT_GADGET_CREATE_47(context, args)
    if 83 ~= args.param1 then
        return false
    end
    return true
end

function action_EVENT_GADGET_CREATE_47(context, args)
    if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
        return -1
    end
    return 0
end

function condition_EVENT_SELECT_OPTION_48(context, args)
    if 83 ~= args.param1 then
        return false
    end
    return true
end

function action_EVENT_SELECT_OPTION_48(context, args)
    if globalDefs.gadget_id_9 == args.param2 then
        if 0 ~= ScriptLib.StartPlatform(context, globalDefs.gadget_id_2) then
            return -1
        end
        
        if 0 ~= ScriptLib.StartPlatform(context, globalDefs.gadget_id_3) then
            return -1
        end
        
        if 0 ~= ScriptLib.StartPlatform(context, globalDefs.gadget_id_4) then
            return -1
        end
        
        if 0 ~= ScriptLib.StartPlatform(context, globalDefs.gadget_id_5) then
            return -1
        end
        
        if 0 ~= ScriptLib.StartPlatform(context, globalDefs.gadget_id_6) then
            return -1
        end

        if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220011004, globalDefs.gadget_id_8, 7) then
            return -1
        end
        
        if 0 ~= ScriptLib.UnlockForce(context, globalDefs.gadget_id_7) then
            return -1
        end

        local var8 = ScriptLib.KillGroupEntity(context, {
            group_id = 220011003,
            monsters = {},
            gadgets = {3020}
        })
        if 0 ~= var8 then
            return -1
        end

        if 0 ~= ScriptLib.CreateGadget(context, { config_id = globalDefs.gadget_id_1 }) then
            return -1
        end

        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, globalDefs.gadget_id_8, GadgetState.GearStart) then
            return -1
        end
        return 0
    end

    if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3020 }) then
        return -1
    end
    return 0
end

function condition_EVENT_ENTER_REGION_53(context, args)
    if args.param1 ~= 53 then
        return false
    end

    local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, {
        region_eid = args.source_eid,
        entity_type = EntityType.AVATAR
    })
    if avatarEntityCount < 1 then
        return false
    end
    return true
end

function action_EVENT_ENTER_REGION_53(context, args)
    local var1 = ScriptLib.KillGroupEntity(context, {
        group_id = 220011004,
        monsters = {},
        gadgets = {97}
    })
    if 0 ~= var1 then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
        return -1
    end
    
    if 0 ~= ScriptLib.CreateGadget(context, { config_id = 98 }) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : dungeon_settle")
        return -1
    end
    
    if 0 ~= ScriptLib.ShowReminder(context, 1041026) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
        return -1
    end
    return 0
end

function condition_EVENT_ENTER_REGION_54(context, args)
    if args.param1 ~= 54 then
        return false
    end

    local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, {
        region_eid = args.source_eid,
        entity_type = EntityType.AVATAR
    })
    if avatarEntityCount < 1 then
        return false
    end
    return true
end

function action_EVENT_ENTER_REGION_54(context, args)
    local var1 = ScriptLib.KillGroupEntity(context, {
        group_id = 220011004,
        monsters = {},
        gadgets = {98}
    })
    if 0 ~= var1 then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
        return -1
    end
    return 0
end

function condition_EVENT_ENTER_REGION_63(context, args)
    if args.param1 ~= 63 then
        return false
    end

    local avatarEntityCount = ScriptLib.GetRegionEntityCount(context, {
        region_eid = args.source_eid,
        entity_type = EntityType.AVATAR
    })
    if avatarEntityCount < 1 then
        return false
    end
    return true
end

function action_EVENT_ENTER_REGION_63(context, args)
    if 0 ~= ScriptLib.StartPlatform(context, 141) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
        return -1
    end
    return 0
end

function condition_EVENT_ANY_GADGET_DIE_4001(context, args)
    if 29 ~= args.param1 then
        return false
    end
    return true
end

function action_EVENT_ANY_GADGET_DIE_4001(context, args)
    if 0 ~= ScriptLib.ShowClientGuide(context, "GuideGoddessMapUnlock") then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : show_client_guide")
        return -1
    end
    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 7)
    return 0
end
