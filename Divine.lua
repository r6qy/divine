script_key="YOUR KEY";
getgenv().Divine = {
    ['StartUP'] = {
        UWP_Optimize = true,
        UnlockFPS = true,
        Intro = true
    },
    ['Silent'] = {
        Normal = {
            Enabled = true,
            HitChance = 300,
        },
        KeyBind = {
            Enabled = true,
            KeyBind = 't',
            Notification = true,
        },
        HitPart = {
            NearestPoint = true,
            HitPart = 'HumanoidRootPart',
        },
        Prediction = {
            Enabled = true,
            AutoMated = false, -- auto prediction
            Prediction = 0.125,
        },
    },
    ['CamLock'] = {
        Normal = {
            Enabled = true,
            ThirdPerson = true,
            FirstPerson = true,
        },
        KeyBind = {
            Hold = false,
            Mode = 'KeyBind', -- or "Mouse"
            KeyBind = 'q',
            MouseBind = Enum.UserInputType.MouseButton2,
        },
        Prediction = {
            Enabled = true,
            Prediction = 0.115,
        },
        Style = {
            First = 'Elastic',
            Second = 'Sine'
        },
        Smoothness = {
            Enabled = true,
            Smoothness = 0.038,
            AirShot = 0.037,
        },
        Shake = {
            Enabled = false,
            DirectionX = 8,
            DirectionY = 6,
            DirectionZ = 7,
        },
        HitPart = {
            NearestPoint = true,
            AirShot = true,
            Part = 'HumanoidRootPart',
            AirPart = 'HumanoidRootPart',
        },
        AutoUnLock = {
            Reloading = true,
            Typing = true,
        },
    },
    ['Fov'] = {
        CamLock = {
            Show = false,
            Use_Radius = false,
            Radius = 160,
            Model = 'Circle'
        },
        SilentAim = {
            Show = false,
            Use_Radius = true,
            Radius = 10,
            Model = 'Circle'
        },
    },
    ['Adjustment'] = {
      ['Checks'] = {
            Resolver = true,
            Anti_Aim_Viewer = true,
            Wall_Check = true,
            Disable_Ground_Shots = true,
            Crew_Check = false,
            Knocked_Check = true,
            AntiCurve = true,
            NoGroundShots = true,
        },
        ['Gun_Fov'] = {
            Enabled = false,
            DoubleBarrel = 22.5,
            Revolver = 27.5,
            Shotgun = 35,
            TacticalShotgun = 35,
            Smg = 25,
            Silencer = 32.5
        },
        ['Macro'] = {
            Enabled = true,
            Hold_Key = true,
            KeyBind = Enum.KeyCode.X,
            Mode = '1' -- 1 = ioio 2 = scroll
        },
        ['TriggerBot'] = {
            Enabled = false,
            Delay = 0.1,
                KeyBinds = {
                    Enabled = true,
                    Notifications = true,
                    KeyBind = 't',
            },
        },
        ['Memory'] = {
            Enable = true,
            Start = 971,
            End = 984,
            Speed = 1,
        },
        ['Animation'] = { -- keybind = use animation
            Lay = false,
            LayKey = Enum.KeyCode.T,
            Greet = true,
            GreetKey = Enum.KeyCode.G,
            Speed = false,
            SpeedKey = Enum.KeyCode.N,
            Sturdy = false,
            SturdyKey = Enum.KeyCode.H,
            Griddy = false,
            GriddyKey = Enum.KeyCode.G,
        },
        ['Chat'] = {
            Enabled = true, --  example !fov 120
            SilentAim_Fov_Size = '!fov',
            SilentAim_Prediction = '!Prediction',
            CamLock_fov_Size = '/fov',
            CamLock_Smoothness = '/Smoothness',
            CamLock_PreDiction = '/ped',
        },
    },
  }

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3485296d2a2cc29456fbfbaee542baf6.lua"))()
