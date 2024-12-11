{
  "$GMRoom":"v1",
  "%Name":"rMauriEnd",
  "creationCodeFile":"rooms/rMauriEnd/RoomCreationCode.gml",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_6F90A01F","path":"rooms/rMauriEnd/rMauriEnd.yy",},
    {"name":"inst_7E498DCA","path":"rooms/rMauriEnd/rMauriEnd.yy",},
    {"name":"inst_4B3C3EEE","path":"rooms/rMauriEnd/rMauriEnd.yy",},
    {"name":"inst_6455F47A","path":"rooms/rMauriEnd/rMauriEnd.yy",},
    {"name":"inst_52472807","path":"rooms/rMauriEnd/rMauriEnd.yy",},
    {"name":"inst_53408A58","path":"rooms/rMauriEnd/rMauriEnd.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRLayer":"","%Name":"Foreground","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Effects","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Effects","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Water","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Water","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"Foreground","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"Assets","assets":[
        {"$GMRSpriteGraphic":"","%Name":"graphic_4C1EF9C2","animationSpeed":1.0,"colour":2600430412,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_4C1EF9C2","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":25.0,"scaleY":19.0,"spriteId":{"name":"sprTrigger","path":"sprites/sprTrigger/sprTrigger.yy",},"x":0.0,"y":0.0,},
      ],"depth":300,"effectEnabled":true,"effectType":"_filter_fractal_noise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Assets","properties":[
        {"name":"g_FractalNoiseScale","type":0,"value":"76",},
        {"name":"g_FractalNoisePersistence","type":0,"value":"0.35",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseOffset","type":0,"value":"0",},
        {"name":"g_FractalNoiseSpeed","type":0,"value":"0.6",},
        {"name":"g_FractalNoiseTintColour","type":1,"value":"#FFFFFFFF",},
        {"name":"g_FractalNoiseTexture","type":2,"value":"_filter_fractal_noise_texture",},
      ],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Collisions","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Blocks","depth":500,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_6F90A01F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6F90A01F","objectId":{"name":"objBlock","path":"objects/objBlock/objBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":23.0,"scaleY":1.0,"x":32.0,"y":368.0,},
            {"$GMRInstance":"v1","%Name":"inst_7E498DCA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7E498DCA","objectId":{"name":"objBlock","path":"objects/objBlock/objBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":23.0,"scaleY":1.0,"x":32.0,"y":208.0,},
            {"$GMRInstance":"v1","%Name":"inst_4B3C3EEE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4B3C3EEE","objectId":{"name":"objBlock","path":"objects/objBlock/objBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":4.0,"x":736.0,"y":240.0,},
            {"$GMRInstance":"v1","%Name":"inst_6455F47A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6455F47A","objectId":{"name":"objBlock","path":"objects/objBlock/objBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":4.0,"x":32.0,"y":240.0,},
          ],"layers":[],"name":"Blocks","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"Collisions","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Design","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRTileLayer":"","%Name":"Tiles","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":38,"SerialiseWidth":50,"TileCompressedData":[
              -25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,
              -25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,-25,0,-25,-2147483648,
              -25,0,-25,-2147483648,204,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,
              5,4,5,4,5,4,5,4,5,4,5,4,5,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,
              11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,4,5,4,5,4,5,4,5,4,5,4,5,4,
              5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,10,11,10,11,10,11,10,11,10,
              11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,
              11,10,11,10,11,10,11,4,5,4,5,-11,-2147483648,-7,0,-2,-2147483648,1,0,-21,-2147483648,8,4,5,4,5,10,11,
              10,11,-11,-2147483648,-7,0,-2,-2147483648,1,0,-21,-2147483648,8,10,11,10,11,4,5,4,5,-16,-2147483648,
              -2,0,-2,-2147483648,1,0,-21,-2147483648,8,4,5,4,5,10,11,10,11,-21,0,-21,-2147483648,8,10,11,10,11,4,
              5,4,5,-42,-2147483648,8,4,5,4,5,10,11,10,11,-42,-2147483648,10,10,11,10,11,4,5,4,5,0,0,-40,-2147483648,
              10,4,5,4,5,10,11,10,11,0,0,-40,-2147483648,204,10,11,10,11,4,5,4,5,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,
              3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,4,5,4,5,10,11,10,11,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,
              9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,8,9,10,11,10,11,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,
              5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,4,5,10,11,10,11,10,11,10,11,10,11,10,11,
              10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,10,11,
              10,11,10,11,-23,-2147483648,-5,0,-45,-2147483648,-5,0,-472,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"tlsMauriStage","path":"tilesets/tlsMauriStage/tlsMauriStage.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"Design","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Player","depth":800,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_52472807","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_52472807","objectId":{"name":"objPlayerStart","path":"objects/objPlayerStart/objPlayerStart.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":64.0,"y":336.0,},
      ],"layers":[],"name":"Player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Killers","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Spikes","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Spikes","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Fruits","depth":1100,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Fruits","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"Killers","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Triggers","depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Triggerables","depth":1300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Triggerables","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRInstanceLayer":"","%Name":"Touchables","depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Touchables","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"Triggers","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRLayer":"","%Name":"Instances","depth":1500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRInstanceLayer":"","%Name":"Misc","depth":1600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"$GMRInstance":"v1","%Name":"inst_53408A58","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_53408A58","objectId":{"name":"objWarp","path":"objects/objWarp/objWarp.yy",},"properties":[
                {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"objRoomChanger","path":"objects/objRoomChanger/objRoomChanger.yy",},"propertyId":{"name":"room_to","path":"objects/objRoomChanger/objRoomChanger.yy",},"resource":{"name":"rSelectArea","path":"rooms/rSelectArea/rSelectArea.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"rSelectArea",},
              ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":3.0,"scaleY":3.0,"x":640.0,"y":256.0,},
          ],"layers":[],"name":"Misc","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
      ],"name":"Instances","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sprBkgMauri","path":"sprites/sprBkgMauri/sprBkgMauri.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rMauriEnd",
  "parent":{
    "name":"Mauri Area",
    "path":"folders/Rooms/Mauri Area.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":608,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":800,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":608,"hspeed":-1,"hview":608,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":800,"wview":800,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}