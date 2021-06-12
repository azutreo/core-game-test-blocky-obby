Assets {
  Id: 4663230054280157698
  Name: "Robloxian R6"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17444500963768788135
      Objects {
        Id: 17444500963768788135
        Name: "Robloxian R6"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6813634910603796041
        ChildIds: 9774432891793085346
        ChildIds: 5003869482217497148
        ChildIds: 8020246957292203704
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimPriority_LArm"
            Int: 0
          }
          Overrides {
            Name: "cs:AnimPriority_RArm"
            Int: 0
          }
          Overrides {
            Name: "cs:AnimPriority_LLeg"
            Int: 0
          }
          Overrides {
            Name: "cs:AnimPriority_RLeg"
            Int: 0
          }
          Overrides {
            Name: "cs:Geo"
            ObjectReference {
              SubObjectId: 2775766079268058595
            }
          }
          Overrides {
            Name: "cs:AnimPriority_LArm:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimPriority_RArm:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimPriority_LLeg:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimPriority_RLeg:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Equipment {
          SocketName: "root"
          PickupTrigger {
            SubObjectId: 6813634910603796041
          }
        }
      }
      Objects {
        Id: 6813634910603796041
        Name: "PickupTrigger"
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
        ParentId: 17444500963768788135
        WantsNetworking: true
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
      }
      Objects {
        Id: 9774432891793085346
        Name: "R6_Equip"
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
        ParentId: 17444500963768788135
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17444500963768788135
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 16527858063465432888
          }
        }
      }
      Objects {
        Id: 5003869482217497148
        Name: "R6_AnimationsServer"
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
        ParentId: 17444500963768788135
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17444500963768788135
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 82904422037240743
          }
        }
      }
      Objects {
        Id: 8020246957292203704
        Name: "ClientContext"
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
        ParentId: 17444500963768788135
        ChildIds: 5615387334990876564
        ChildIds: 2775766079268058595
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 5615387334990876564
        Name: "R6_AnimationsClient"
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
        ParentId: 8020246957292203704
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 17444500963768788135
            }
          }
          Overrides {
            Name: "cs:LeftArm"
            ObjectReference {
              SubObjectId: 159064820034417763
            }
          }
          Overrides {
            Name: "cs:RightArm"
            ObjectReference {
              SubObjectId: 11008315399040187159
            }
          }
          Overrides {
            Name: "cs:LeftLeg"
            ObjectReference {
              SubObjectId: 6186447946917794952
            }
          }
          Overrides {
            Name: "cs:RightLeg"
            ObjectReference {
              SubObjectId: 2002158830370023774
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
            Id: 9616611897236082008
          }
        }
      }
      Objects {
        Id: 2775766079268058595
        Name: "Geo"
        Transform {
          Location {
            Z: 55
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8020246957292203704
        ChildIds: 4222468145268070090
        ChildIds: 16106757495436768680
        ChildIds: 159064820034417763
        ChildIds: 11008315399040187159
        ChildIds: 6186447946917794952
        ChildIds: 2002158830370023774
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4222468145268070090
        Name: "Head"
        Transform {
          Location {
            Z: 145
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 2775766079268058595
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.65
              G: 0.581125796
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5777054763475964858
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16106757495436768680
        Name: "Torso"
        Transform {
          Location {
            Z: 95
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 1
            Z: 1
          }
        }
        ParentId: 2775766079268058595
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.309403926
              B: 0.73
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5144490934100011827
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 159064820034417763
        Name: "LeftArm"
        Transform {
          Location {
            Y: -75
            Z: 120
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2775766079268058595
        ChildIds: 8151693829624403728
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8151693829624403728
        Name: "LeftArm"
        Transform {
          Location {
            Z: -25
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 1
          }
        }
        ParentId: 159064820034417763
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.65
              G: 0.581125796
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5144490934100011827
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11008315399040187159
        Name: "RightArm"
        Transform {
          Location {
            Y: 75
            Z: 120
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2775766079268058595
        ChildIds: 15994077577427801977
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 15994077577427801977
        Name: "RightArm"
        Transform {
          Location {
            Z: -25
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 1
          }
        }
        ParentId: 11008315399040187159
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.65
              G: 0.581125796
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5144490934100011827
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6186447946917794952
        Name: "LeftLeg"
        Transform {
          Location {
            Y: -25
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2775766079268058595
        ChildIds: 12870920136490028414
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12870920136490028414
        Name: "LeftLeg"
        Transform {
          Location {
            Z: -25
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 1
          }
        }
        ParentId: 6186447946917794952
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.38
              B: 0.00251657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5144490934100011827
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2002158830370023774
        Name: "RightLeg"
        Transform {
          Location {
            Y: 25
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2775766079268058595
        ChildIds: 1645698848480005499
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 1645698848480005499
        Name: "RightLeg"
        Transform {
          Location {
            Z: -25
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 1
          }
        }
        ParentId: 2002158830370023774
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.38
              B: 0.00251657
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13435436063922250635
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5144490934100011827
          }
          Teams {
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 5777054763475964858
      Name: "Cylinder - Rounded Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_001"
      }
    }
    Assets {
      Id: 5144490934100011827
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
