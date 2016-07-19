local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
  numberOfActs = 1,
    questString = "pvp",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
      self:spawnActiveAreas()
      self:spawnSceneObjects()
      self:spawnMobiles()
end

function pvp:spawnSceneObjects()
--  spawnSceneObject("jakku", "object/battlefield_marker/battlefield_marker_512m.iff", -5945, 20, 5774, 0, math.rad(0) )
--  spawnSceneObject("jakku", "object/static/structure/general/landing_pad_shuttle.iff", 4325, 7.8, -5097, 0, math.rad(0) )
end

function pvp:spawnMobiles()
 --   spawnMobile("jakku", "dark_jedi_sentinel",1, 4325,7,-5097,0,0)
end
  
function pvp:spawnActiveAreas()
  local pSpawnArea = spawnSceneObject("jakku", "object/active_area.iff", -5945, 20, 5774, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(512)
          createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then     
      player:sendSystemMessage("You have entered the Battle of Jakku!")
    end
    
    
    if (player:isNeutral()) then
      player:sendSystemMessage("You must be a member of a faction to join the Battle of Jakku!")
      player:teleport(4331, 9.1, -5130, 0)
      end
    return 0    
  end)
end


function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
 -- Could separate out by faction and deliver alternate exit points.  
    if (player:isInCombat()) then
      player:sendSystemMessage("You have deserted in the heat of battle. For this you will be sent to the Arena of Atonement.")
      player:teleport(4444, 7, -5168, 0)
      else
        player:sendSystemMessage("You are now leaving the battle area!")
        player:teleport(4331, 9.1, -5130, 0)
      end           
    return 0
  end)
end


