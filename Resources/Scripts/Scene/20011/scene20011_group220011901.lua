local globalDefs = { 
  gadget_id_1 = 49, 
  gadget_id_2 = 50, 
  gadget_id_3 = 51, 
  gadget_id_4 = 55 
}

group_id = 220011901

monsters = {  }

npcs = {  }

gadgets = {  }

regions = { 
  { config_id = 49, shape = RegionShape.SPHERE, radius = 5, pos = { x = 460.379, y = -24.35, z = 69.159 } }, 
  { config_id = 50, shape = RegionShape.SPHERE, radius = 5, pos = { x = 406.504, y = -22.573, z = 107.872 } }, 
  { config_id = 51, shape = RegionShape.CUBIC, size = { x = 30, y = 2, z = 30 }, pos = { x = 487.505, y = -17.535, z = 121.603 } }, 
  { config_id = 55, shape = RegionShape.SPHERE, radius = 7.3, pos = { x = 411.721, y = -22.083, z = 63.952 } } 
}

triggers = { 
  { config_id = 1000049, name = "ENTER_REGION_49", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49", action = "", trigger_count = 0, forbid_guest = false }, 
  { config_id = 1000050, name = "ENTER_REGION_50", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_50", action = "", trigger_count = 0, forbid_guest = false }, 
  { config_id = 1000051, name = "ENTER_REGION_51", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51", action = "", trigger_count = 0, forbid_guest = false }, 
  { config_id = 1000055, name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "", trigger_count = 0, forbid_guest = false } 
}

variables = {  }

init_config = { 
  suite = 1, 
  end_suite = 0, 
  rand_suite = true 
}

suites = { 
  { 
    monsters = {  }, 
    gadgets = {  }, 
    regions = { 49, 50, 51, 55 }, 
    triggers = { "ENTER_REGION_49", "ENTER_REGION_50", "ENTER_REGION_51", "ENTER_REGION_55" }, 
    rand_weight = 100 
  } 
}

function condition_EVENT_ENTER_REGION_49(context, args)
    if ScriptLib.GetEntityType(context, args.target_eid) == EntityType.AVATAR and
        ScriptLib.GetQuestState(context, args.target_eid, 30807) == QuestState.UNFINISHED and 
        args.param1 == globalDefs.gadget_id_1 then
        return true
    end
    return false
end

function condition_EVENT_ENTER_REGION_50(context, args)
    if ScriptLib.GetEntityType(context, args.target_eid) == EntityType.AVATAR and
        ScriptLib.GetQuestState(context, args.target_eid, 30808) == QuestState.UNFINISHED and 
        args.param1 == globalDefs.gadget_id_2 then
        return true
    end
    return false
end

function condition_EVENT_ENTER_REGION_51(context, args)
    if ScriptLib.GetEntityType(context, args.target_eid) == EntityType.AVATAR and
        ScriptLib.GetQuestState(context, args.target_eid, 30809) == QuestState.UNFINISHED and 
        args.param1 == globalDefs.gadget_id_3 then
        return true
    end
    return false
end

function condition_EVENT_ENTER_REGION_55(context, args)
    if ScriptLib.GetEntityType(context, args.target_eid) == EntityType.AVATAR and
        ScriptLib.GetQuestState(context, args.target_eid, 30812) == QuestState.UNFINISHED and 
        args.param1 == globalDefs.gadget_id_4 then
        return true
    end
    return false
end
