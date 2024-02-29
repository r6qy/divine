script_key="YOUR KEY";
getgenv().Divine = {
    Options = {
        Version = ("0.0.4.7"), -- // Do Not Touch. This Will Detect If You Are Using Old Table
        Intro = (true), -- // Shows You An Intro
        AutoGetUp = (true), -- // If You Are Laying Down Unable To Stand Up It Will AutoMatically Get You Up
        AntiError = (false), -- // Removes Errors In Console
        BypassData = (false), -- // Bypasses Many Methods Of Most Cheat Detections
        AutoLowGfx = (false), -- // AutoMatically Disables Textures In The Map
        MuteBoomBox = (true), -- // AutoMatically Disables BoomBoxes Music
        RemoveSeats = (true), -- // AutoMatically Removes Seats
        NotificationMode = {
            Enabled = (true),
            Silent = (true),
            AimAssist = (true),
            PanicMode = (true),
            Suspicious = (true),
            CheatDetected = (true),
            FakeSpike = (true),
            Desync = (true), 
            Esp = (true),
            Misc = (true)
        } -- // Sends Notification When you Enabled / Disabled Stuff
    },
    PanicMode = {
        Enable = (true), -- // Enables The Key For PanicMode
        KeyBind = ("P") -- // The Key That Enables / Disables The PanicMode
    },
    F9Cleaner = {
        Enabled = (true), -- // Enables The Key For F9Cleaner
        KeyBind = ("N") -- // The Key That Enables / Disables The F9Cleaner
    },
    FakeSpike = {
        Enabled = (true), -- // Enables The Key For FakeSpike
        KeyBind = ("J"), -- // The Key That Enables / Disables The FakeSpike
        Power = (500), -- // How Much Ping It Goes Up To
        ToggleMode = (true), -- // You Toggle The Spike Instead
        Delay = (4), -- // How Much Delay Its Untill The Normal Ping Turns Back
    },
    ModDetection = {
        Enabled = (true), -- // Enables / Disable Mod Detection
        Delay = (3), -- // Makes It More Legit For Kick Method
        Rank = (200), -- // Detects If The Users Group Rank Is Higher Then The Number
        Method = ("Notification"), -- // What Detection It Sends (Kick, Notification)
    },
    Silent = {
        Enabled = (true), -- // Enable / Disable Silent Aim
        UseSilentKeyBind = (true), -- // Use The KeyBind To Enable / Disable The Silent Aim
        KeyBind = ("Z"), -- // The Key That Enables / Disables The Silent Aim
        LegitMode = (true), -- // You Wont Make You Curve That Much. You Need To Predict Atleast For It To Work
        BlatantMode = (false), -- // This Will Make You Hit More But It Will Effect The Resolver Detection. It Will Still Resolve But The More Advanced Will Probably Not.
        
        ForceLock = (false), -- // You Press The Button To Target The Player. RISKY!
        ForceLock_AimAssistTarget = (true), -- // Uses AimAssist Target Instead Of Silent Aim
        ForceKeyBind = ("H"), -- // The Key That Gets The Target
        
        PredictMovement = (true), -- // Predicts Target Position And MoveMent
        Prediction = (0.11), -- // How Much Power It Predicts The Target
        Part = ("HumanoidRootPart"), -- // What Part It Targerts
        UseAirPart = (false), -- // When Target Is In The Air Its Gonna Force To Shoot On Air Part
        AirPart = ("LowerTorso"), -- // The Parts It Targets On When Player Is In The Air
        ClosestPart = (true), -- // Automatically Gets The Closest Part Of The Target And Uses That Position
        ClosestPoint = (true), -- // Automatically Gets The Closest Point Of The Target Part And Uses That Position
        ClosestPointScale = (100), -- // How Far It Reaches Out (Basically Multi Point). In Percent
        UseWhitelistedParts = (false), -- // Makes So You Only Get Custom Parts
        WhitelistedPart = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}, -- // Whitelists Certain Part For ClosestPart Function. Example {"HumanoidRootPart", "Head"}
        AntiAimViewer = (true), -- // Bypasses The Mouse Position For The Server
        HitChance = (100), -- // The Chance You Will Hit The Target
        AirHitChance = (100), -- // The Chance You Will Hit The Target In The Air
        
        Humanize = (false), -- // Makes So The Silent Doesnt Hit The Same Position (Randomizes The Position)
        HumanizeValue = (5), -- // Makes So How Much Power It Changes
        
        TriggerBot = (true), -- // Shoots AutoMatically When You Have An Target Locked
        TriggerBot_HoldMode = (true), -- // Enables While Only Holding The Key
        TriggerBot_Delay = (100), -- // Delays The Click (Milliseconds)
        TriggerBotMouseKey = ("MouseButton3"), -- // Mouse Key To Enable / Disable TriggerBot.
        TriggerBot_HotKey = (false), -- // Will Use KeyBoard Keys Instead Of Mouse Keys
        TriggerBotKey = ("Q"), -- // What KeyBoard Key
        
        AntiGroundShots = (true), -- // Makes So You Dont Shoot The Ground/Floor
        AntiGroundValue = (0.3), -- // How Much Power It Uses For The Silent
        AntiGroundActivation = (-20), -- // The Value Its Gonna Start Activating

        Custom_AntiAimViewerPoint = {
            Enabled = (false), -- // Enable / Disable Custom Anti AimViewer
            RemoteEvent = (function(Pos) -- // This Is Only For Games That Arent Supported With The Current Anti Aim Viewer
                local MainEvent = game:GetService("ReplicatedStorage").MainEvent -- // The MainEvent Path
                local Args = {
                    [1] = "UpdateMousePos", -- // The String
                    [2] = Pos -- // The Mouse Position
                }
                return Args, MainEvent -- // Returns Args And MainEvent 
                -- // Use This Script To Get The MainEvent And The Args
                -- // Don't change if you don't know what you are doing
            end)
        },
        AutoPrediction = {
            ["Enabled"] = (true), -- // Automatically Sets The Prediction On What Ping You Are On
            ["AutoMatic"] = (false), -- // Automatically Generates An Prediction For Your Ping
            ["RefreshRate"] = (0.2), -- // Waits This Seconds To Execute Again
            ["P200_Inf"] = (0.1848), -- // The Prediction When Your Ping Is 200 To Inf
            ["P190_200"] = (0.1813), -- // The Prediction When Your Ping Is 190 To 200
            ["P180_190"] = (0.1733), -- // The Prediction When Your Ping Is 180 To 190
            ["P170_180"] = (0.1693), -- // The Prediction When Your Ping Is 170 To 180
            ["P160_170"] = (0.1663), -- // The Prediction When Your Ping Is 160 To 170
            ["P150_160"] = (0.1574), -- // The Prediction When Your Ping Is 150 To 160
            ["P140_150"] = (0.1555), -- // The Prediction When Your Ping Is 140 To 150
            ["P130_140"] = (0.15), -- // The Prediction When Your Ping Is 130 To 140
            ["P120_130"] = (0.1411), -- // The Prediction When Your Ping Is 120 To 130
            ["P110_120"] = (0.1344), -- // The Prediction When Your Ping Is 110 To 120
            ["P100_110"] = (0.1315), -- // The Prediction When Your Ping Is 100 To 110
            ["P90_100"] = (0.13), -- // The Prediction When Your Ping Is 90 To 100
            ["P80_90"] = (0.1295), -- // The Prediction When Your Ping Is 80 To 90
            ["P70_80"] = (0.129), -- // The Prediction When Your Ping Is 70 To 80
            ["P60_70"] = (0.125), -- // The Prediction When Your Ping Is 60 To 70
            ["P50_60"] = (0.121), -- // The Prediction When Your Ping Is 50 To 60
            ["P40_50"] = (0.114), -- // The Prediction When Your Ping Is 40 To 50
            ["P30_40"] = (0.11), -- // The Prediction When Your Ping Is 30 To 40
            ["P20_30"] = (0.1), -- // The Prediction When Your Ping Is 20 To 30
            ["P10_20"] = (0.05) -- // The Prediction When Your Ping Is 10 To 20
        },
        Fov = {
            Visible = (false), -- // If The Circle Is Showing Or Not
            Method = ("Mouse"), -- // What Type Of Position The Fov Is Gonna Be (Mouse, Screen)
            Filled = (false), -- // If The Circle Is Filled
            Transparency = (1), -- // The Circle Transparency
            Color = (Color3.fromRGB(200, 200, 200)), -- // Circle Color
            Offset = (Vector2.new(0, 0)), -- // Circle Position + The Offset
            StickyFov = (false), -- // Puts The Circle On Target Position
            Radius = (10) -- // How Big The Circle Is
        },
        GunSettings = {
            Enabled = (true), -- // Enable / Disable GunSettings
            Methods = {
                Fov = (true), 
                Range = (true), 
                Prediction = (false), 
                HitChance = (true), 
                AirHitChance = (true), 
                Smoothness = (false), 
                AirSmoothness = (true)
            }, -- // What Things Its Gonna Change Like If Fov Is On It Will Change Fov. Using RangeMode Will OverWrite Instant Fov Changes.
            Dynamic = {
                Enabled = (true), -- // Will Smoothly Changes The Method
                Time = (0.5), -- // How Much Time Its Gonna Take To Complete The Motion
                EasingStyle = ("Linear"), -- // What Smoothning Method For Method Control Motion 
                EasingDirection = ("Out") -- // What Smoothning Method For Method Control Direction
            },
            Far_Activation = (1/0), -- // Just Keep It At Math.Huge Or 1/0 (Inf Studs)
            Medium_Activation = (42), -- // How Far By Using Studs
            Close_Activation = (16), -- // How Far By Using Studs
            
            ["Revolver"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["Double-Barrel SG"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["Shotgun"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["TacticalShotgun"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["SMG"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["Silencer"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["Rifle"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["AR"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            },
            ["AK47"] = {
                ["Fov"] = (19.5),     ["Prediction"] = (0.135),     ["HitChance"] = (100),      ["AirHitChance"] = (100),      ["Smoothness"] = (0.043),     ["AirSmoothness"] = (0.055),
                ["CloseFov"] = (10),  ["ClosePrediction"] = (0.121),["CloseHitChance"] = (100), ["CloseAirHitChance"] = (100), ["CloseSmoothness"] = (0.06), ["CloseAirSmoothness"] = (0.075),
                ["MedFov"] = (6),     ["MedPrediction"] = (0.124),  ["MedHitChance"] = (100),   ["MedAirHitChance"] = (100),   ["MedSmoothness"] = (0.04),   ["MedAirSmoothness"] = (0.065),
                ["FarFov"] = (4),     ["FarPrediction"] = (0.127),  ["FarHitChance"] = (100),   ["FarAirHitChance"] = (100),   ["FarSmoothness"] = (0.03),   ["FarAirSmoothness"] = (0.045),
            }
        }
    },
    AimAssist = {
        Enabled = (true), -- // Enable / Disable AimAssist
        KeyBind = ("T"), -- // The Key To Lock Onto A Player
        HoldMode = (false), -- // Enables While Only Holding The Key
        Method = ("Mouse"), -- // Wich Thing It Uses For AimAssist (Mouse, Camera)

        PredictMovement = (true), -- // Predicts Target Position And MoveMent
        Prediction = (0.136645), -- // How Much Power It Predicts The Target
        Part = ("HumanoidRootPart"), -- // The Part That Aim Assist Locks On
        ClosestPart = (true), -- // Automatically Gets The Closest Part Of The Target And Uses That Position
        RandomPart = (false), -- // Randomizes An Part Of The Target And Uses That Position. Will OverWrite ClosestPart
        EnableChance = (false), -- // Makes So Theres A Chance The AimAssist Will Enabled
        Chance = (30), -- // The Chance The AimAssist Will Be Enabled
        UseCircleRadius = (true), -- // Only Locks On To People Inside The Circle
        DisableOutSideCircle = (false), -- // If Target Is OutSide The Circle It Disables The Aim Assist
        
        FirstPerson = (true), -- // Only Enables When Your On FirstPerson
        ThirdPerson = (true), -- // Only Enables When Your On ThirdPerson
        
        UseSmoothness = (true), -- // Enable / Disable Smoothness
        Smoothness_X = (0.042), -- // How Smooth The Aim Assist Is On X
        Smoothness_Y = (0.045), -- // How Smooth The Aim Assist Is On Y 

        AirSmoothness = (true), -- // Uses AirSmoothness When The Target Is In The Air
        AirSmoothness_X = (0.055), -- // How Smooth The Aim Assist Is On X In Target Air
        AirSmoothness_Y = (0.055), -- // How Smooth The Aim Assist Is On Y In Target Air
        
        Advanced = {
            WallCheck_V2 = (false), -- // Loop Checks If Theres A Wall Infront Of The Target
            TickBased = (false), -- // Executes On Based Tick Changes
            Stutter = (1), -- // Checks Last Tick If Its High Or Not. If Its High It Disables For Security Reasons
            EasingStyle = ("Linear"), -- // What Smoothning Method For AimAssist To Control Motion 
            EasingDirection = ("Out") -- // for more info on each EasingStyle/Direction https://cdn.discordapp.com/attachments/1040757112109801493/1079468332715098122/EasingStyles.png
        },
        FrameSkip = {
            Enabled = (true), -- // Flicks To Targets Part
            Power = (0.95), -- // How Much Power It Flicks To The Target
            UsePrediction = (false), -- // Adds Prediction For Flicking
            TargetPart = {["Enabled"] = (true), ["Part"] = ("Head")}, -- // Flicks To The Part
            KeyBind = ("Q") -- // The Keybind To Activate The Flick
        },
        Shake = {
            Enabled = (true), -- // Enable / Disable Shake
            Shake_X = (20), -- // How Much It Shakes On X
            Shake_Y = (15), -- // How Much It Shakes On Y
            Shake_Z = (20), -- // How Much It Shakes On Z
            AirShake = (true), -- // Uses Shake Percentage When The Target Is In The Air
            AirPercentage = (50) -- // How Much Percent It Removed On Shake When Target Is In The Air. Yes This Can Go Over 100+
        },
        Fov = {
            Visible = (false), -- // If The Circle Is Showing Or Not
            Filled = (true), -- // If The Circle Is Filled
            Transparency = (0.5), -- // Circles Transparency
            Color = (Color3.fromRGB(0, 0, 0)), -- // Circle Color
            Radius = (70) -- // How Big The Circle Is
        }
    },
    UniversalCheck = {
        InVisibleCheck = (true), -- // Checks If Target Is InVisible
        ForceFieldCheck = (false), -- // Checks If Target Has ForceFeild. That Blue Bubble Thing When You Spawn
        TargetDeathCheck = (true), -- // Disables When Target Is Dead
        PlayerDeathCheck = (true), -- // Disables When You Die
        ToolOut = (false), -- // AimAssist Only Enables When An Tool Is Out
        
        WallCheck = (true), -- // Checks If There Is Nothing Infront Of The Target
        WallCheck_V2 = (false), -- // Checks If The Velocity Is Predicting Into An Wall
        FriendCheck = (true), -- // Checks If Target Is Your Friend
        TeamCheck = (false), -- // Checks If Player Is In the Same Team
        
        CrewCheck = (true), -- // Checks If Target Is In Your Crew
        KoCheck = (true), -- // Checks If Target Is Grabbed Or Knocked
        ReloadCheck = (false), -- // Checks If You Are Realoding
        NoAmmoCheck = (false), -- // Checks If Youre Gun Has 0 Ammo
        
        Advanced = {
            Target_Bots = (false), -- // Makes The Silent And AimAssist Target The Bot. RISKY!
            Bot_Path = ("NPC") -- // Gets The Folder Path Where The Bots Are And Uses It. In The Current Workspace Folder
        }
    },
    ChatCommands = {
        Enabled = (true), -- // Enable / Disable Chat Commands

        -- // Silent ChatCommands
        Silent_Enabled = ("!senabled"), -- // The Command To Enable / Disable Silent (With false/true)
        Silent_Prediction = ("!spred"), -- // The Command To Change Silent Prediction (With Numbers)
        Silent_Fov_Size = ("!sfov"), -- // The Command To Change Silent Fov (With Numbers)
        Silent_Fov_Show = ("!sshow"), -- // The Command To Change Silent (With false/true)
        Silent_HitChance = ("!schance"), -- // The Command To Change Silent HitChance (With Numbers)
        Silent_LegitMode = ("!slegit"), -- // The Command To Change Silent LegitMode (With false/true)
        Silent_BlatantMode = ("!sblatant"), -- // The Command To Change Silent BlatantMode (With false/true)

        -- // AimAssist ChatCommands
        AimAssist_Enabled = ("!aenabled"), -- // The Command To Enable / Disable AimAssist (With false/true)
        AimAssist_Prediction = ("!apred"), -- // The Command To Change AimAssist Prediction (With Numbers)
        AimAssist_Fov_Size = ("!afov"), -- // The Command To Change AimAssist Fov (With Numbers)
        AimAssist_Fov_Show = ("!ashow"), -- // The Command To Change AimAssist (With false/true)
        AimAssist_SmoothX = ("!smoothx"), -- // The Command To Change AimAssist SmoothNess X Value (With Numbers)
        AimAssist_SmoothY = ("!smoothy"), -- // The Command To Change AimAssist SmoothNess Y Value (With Numbers)
        AimAssist_Shake = ("!ashake"), -- // The Command To Change AimAssist Shake Value (With Numbers)
        
        -- // Misc ChatCommands
        RejoinServer = ("rejserv"), -- // The Command To Rejoin The Server You Are In
        RandomServer = ("rejoin."), -- // The Command To Rejoin An Random Server
        
        SaveConfig = ("savecon"), -- // Creates An Txt That Saves The Table. (Example Savecon ConfigName)
        LoadConfig = ("loadcon"), -- // Loads An New Table. (Example loadcon ConfigName)

        CrashMode = (". "), -- // The Command To Crash Roblox
        CrashMethod = ("Freeze") -- // Method To Crash Roblox (Freeze, Shutdown)
    },
    InventorySorter = {
        Enabled = (true), -- // Sorts The Inventory Tab
        KeyBind = ("M"), -- // What KeyBind You Enabled
        UseFood = (true), -- // Sorts Also Food
        Slots = {
            ("[Double-Barrel SG]"), -- // The First Slot Item
            ("[Revolver]"), -- // The Second Slot Item
            ("[TacticalShotgun]"), -- // The Third Slot Item
            ("[Shotgun]"), -- // The Fourth Slot Item
            ("[Katana]") -- // The Fifth Slot Item
            -- // More Can Be Added (Max Is 10)
        }, -- // Wich Slots The Guns Are Gonna Be At (Starts Up And Goes Down)
    },
    MemorySpoofer = {
        Enabled = (true), -- // Edits Memory Numbers On Roblox Gui
        Delay = (1), -- // The RefreshRate On Random Numbers
        Maximum = (980), -- // The Maximum It Can Generate
        Lowest = (965) -- // The Lowest It Can Generate 
    },
    Macro = {
        -- // For Speed Macro
        Speed_Enabled = (true), -- // Enable / Disable Macro 
        Speed_Delay = (1), -- // The Delay For The Macro (The Higher The Slower)
        Speed_KeyBind = ("T"), -- // Key To Macro
        Speed_HoldMode = (true), -- // Enables While Only Holding The KeyBind
        Speed_MacroAbuse = (true), -- // This Will Bypass Anti Gun Macro
        Speed_ThirdPersonV2 = (false), -- // This Makes The Macro Much Faster. But Its Only Good For People That Has Under 60- fps
        Speed_Method = ("FirstPerson"), -- // 3 Kinds Of Method (ThirdPerson, FirstPerson, Shift)
        
        -- // For Emote Macro 
        Lay_Emote = (true), -- // Enable / Disable Lay_Emote Key
        Lay_KeyBind = ("G"), -- // Key To Execute Lay
        Greet_Emote = (true), -- // Enable / Disable Greet_Emote Key
        Greet_Keybind = ("Y"), -- // Key To Execute Greet
        
        -- // For Noclip Macro
        Noclip_Macro = (true), -- // Enable / Disable Noclip Key
        Noclip_HoldMode = (true), -- // Enables While Only Holding The Key
        Noclip_KeyBind = ("C"), -- // Key To Enable Macro
        
        -- // For Rotation Mode
        RotationMod = (true), -- // Enable / Disable Rotation Key
        Degrees = (360), -- // How Much You Turn
        RotationSpeed = (5), -- // How Fast You Turn
        Rotation_KeyBind = ("V") -- // Key To Enable Macro
    },
    Desync = {
        Enabled = (true), -- // Enable / Disable Desync
        HealthDeActivation = (7), -- // Disables The Desync When Your Health Is That Low
        UseDesyncKey = (true), -- // Use The KeyBind To Enable / Disable The Desync Desync Key
        DesyncKey = ("X"), -- // Key To Enable / Disable Desync
        HoldMode = (false), -- // Enables While Only Holding The Key
        
        Visualize = {["Enabled"] = (true), ["Radius"] = (30), ["Color"] = (Color3.fromRGB(255, 255, 255))}, -- // Shows An Dot Where The Velocity Is
        Method = ("Vel_StandBy"), -- // Diffrent Methods To Change Velocity (Vel_Multi, Custom_Vel, Vel_StandBy, Vel_Under, Vel_Zero) 2 Diffrent Methods To Change Server Position (Freeze_Pos, Slow_Data)
        Power = (5), -- // How Much Velocity The Method Is Using. Vel_StandBy, Custom_Vel, Vel_Zero And Server Position Changer Does Not Need This
        
        Custom = {
            Vel_X = (50), -- // How Much Power Is On X
            Vel_Y = (50), -- // How Much Power Is On Y
            Vel_Z = (50) -- // How Much Power Is On Z
        }
    },
    Esp = {
        Enabled = (false), -- // Enable / Disable Esp
        UseEspKeyBind = (true), -- // Enable / Disable EspKey
        EspKey = ("Z"), -- // Key To Enable / Disable Esp
        HoldMode = (false), -- // Enables While Only Holding The Key
        
        TextSize = (16), -- // How Big The Text Is
        
        Name = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(255, 255, 255))}, -- // Shows Text Of The Targets Name
        Cheater = {Enabled = (true), Suspicious = (true), OutLine = (true), Color = (Color3.fromRGB(255, 0, 0))}, -- // Shows Box Around The Target
        Box = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(255, 255, 255))}, -- // Shows Box Around The Target
        
        HealthBar = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(0, 255, 0)), HealthColor = (true)}, -- // Shows An Health Bar On Target. If The Player Is Low The Bar Is Gonna Shrink
        HealthText = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(0, 255, 0)), HealthColor = (true)}, -- // Shows An Text How Much Health Target Has
        
        ArmorBar = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(0, 189, 255))}, -- // Shows An Armor Bar On Target. If The Player Armor Is Low The Bar Is Gonna Shrink
        ArmorText = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(0, 189, 255))}, -- // Shows An Text How Much Amor Target Has
        
        Distance = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(255, 255, 255))}, -- // Shows Targets Distance Between You And The Target
        Tool = {Enabled = (true), OutLine = (true), Color = (Color3.fromRGB(255, 255, 255))}, -- // Shows Targets Distance Between You And The Target
        Flags = {Enabled = (false), WalkingState = (true), DesyncState = (true), OutLine = (true), Color = (Color3.fromRGB(255, 255, 255))}, -- // Show States For Walking Or Desyncing
        Tracer = {Enabled = (false), Method = ("Mouse"), Thickness = (1), Color = (Color3.fromRGB(255, 255, 255))}, -- // Shows A Line That Goes To The Player (Mouse, Screen)
        
        CrewColor = {Enabled = (true), Color = (Color3.fromRGB(0, 255, 0))}, -- // The Box Will Change Color If The Player Is The Same Crew As You
        TargetColor = {Enabled = (false), Color = (Color3.fromRGB(255, 0, 0))} -- // The Box Will Change Color When You Have An Target
    }
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/52a0225181a61deca6891cf2bb502837.lua"))()
