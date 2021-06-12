Name: "Components"
RootId: 7891038672275917396
Objects {
  Id: 12207283698988375962
  Name: "PlayerNameplates (PlayerTitles)"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7891038672275917396
  TemplateInstance {
    ParameterOverrideMap {
      key: 5332119631449535659
      value {
        Overrides {
          Name: "Name"
          String: "PlayerNameplates (PlayerTitles)"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 11589085753074985527
    }
  }
}
Objects {
  Id: 5019246836659101282
  Name: "PlayerList (PlayerTitles)"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7891038672275917396
  TemplateInstance {
    ParameterOverrideMap {
      key: 7621446724159773466
      value {
        Overrides {
          Name: "Name"
          String: "PlayerList (PlayerTitles)"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "cs:PlayerNameColorMode"
          String: "TITLE"
        }
      }
    }
    TemplateAsset {
      Id: 8886151068644755562
    }
  }
}
Objects {
  Id: 12832346757638434645
  Name: "Static Player Equipment"
  Transform {
    Location {
      Z: 50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7891038672275917396
  ChildIds: 3891482439956017284
  UnregisteredParameters {
    Overrides {
      Name: "cs:EquipmentTemplate"
      AssetReference {
        Id: 4663230054280157698
      }
    }
    Overrides {
      Name: "cs:Team"
      Int: 0
    }
    Overrides {
      Name: "cs:ReplaceOnEachRespawn"
      Bool: true
    }
    Overrides {
      Name: "cs:EquipmentTemplate:tooltip"
      String: "Equipment template to give to players"
    }
    Overrides {
      Name: "cs:Team:tooltip"
      String: "If non-zero, only give equipment to players on that team"
    }
    Overrides {
      Name: "cs:ReplaceOnEachRespawn:tooltip"
      String: "Whether to replace that equipment every time a player spawns"
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 5540688035840917406
    SubobjectId: 16657464430720987128
    InstanceId: 11554495458383448524
    TemplateId: 2335559666660945908
    WasRoot: true
  }
}
Objects {
  Id: 3891482439956017284
  Name: "StaticPlayerEquipmentServer"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12832346757638434645
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 12832346757638434645
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 3403025055362370891
    }
  }
  InstanceHistory {
    SelfId: 4958642716075380185
    SubobjectId: 17230748584674696639
    InstanceId: 11554495458383448524
    TemplateId: 2335559666660945908
  }
}
Objects {
  Id: 17292867949260130405
  Name: "KillZone"
  Transform {
    Location {
      Z: -500
    }
    Rotation {
    }
    Scale {
      X: 1000
      Y: 1000
      Z: 0.1
    }
  }
  ParentId: 7891038672275917396
  ChildIds: 11095183302135573625
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 17595719174612773602
    SubobjectId: 9464210638659690241
    InstanceId: 6240429853496519730
    TemplateId: 1634827738048127191
    WasRoot: true
  }
}
Objects {
  Id: 11095183302135573625
  Name: "KillZoneServer"
  Transform {
    Location {
      Z: 500
    }
    Rotation {
    }
    Scale {
      X: 0.000999999931
      Y: 0.000999999931
      Z: 1
    }
  }
  ParentId: 17292867949260130405
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 17292867949260130405
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 176745574134982170
    }
  }
  InstanceHistory {
    SelfId: 12509581645832467677
    SubobjectId: 15780008397909082430
    InstanceId: 6240429853496519730
    TemplateId: 1634827738048127191
  }
}
