{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_main_menu",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_295D21DC","path":"rooms/rm_main_menu/rm_main_menu.yy",},
    {"name":"inst_7D94D638","path":"rooms/rm_main_menu/rm_main_menu.yy",},
    {"name":"inst_C4F48D2","path":"rooms/rm_main_menu/rm_main_menu.yy",},
    {"name":"inst_491732B0","path":"rooms/rm_main_menu/rm_main_menu.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":20,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_295D21DC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_title","path":"objects/o_title/o_title.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_title","path":"objects/o_title/o_title.yy",},"propertyId":{"name":"title","path":"objects/o_title/o_title.yy",},"value":"Code Wars 2\\nThe Offline Server",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":320.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7D94D638","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_ButtonQuit","path":"objects/o_ButtonQuit/o_ButtonQuit.yy",},"properties":[],"rotation":0.0,"scaleX":0.6666667,"scaleY":1.0,"x":192.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C4F48D2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"propertyId":{"name":"text","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"value":"Definições",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"propertyId":{"name":"target","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"value":"rm_menu_definicoes",},
          ],"rotation":0.0,"scaleX":0.6666667,"scaleY":1.0,"x":192.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_491732B0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"propertyId":{"name":"target","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"value":"rm_level1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_ButtonParent","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"propertyId":{"name":"text","path":"objects/o_ButtonParent/o_ButtonParent.yy",},"value":"Jogar",},
          ],"rotation":0.0,"scaleX":0.6666667,"scaleY":1.0,"x":192.0,"y":128.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Backgrounds","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":120,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"s_menu","path":"sprites/s_menu/s_menu.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Cenas",
    "path": "folders/Cenas.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":360,"hspeed":-1,"hview":360,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":640,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}