local L = AceLibrary("AceLocale-2.0"):new("ag_UnitFrames")

aUF.Layouts.CTRA = {
		Name = "CTRA",
		Tip = "CT_RaidAssist look",
		ResizeBars = false,
		BackgroundBarColor = false,
		AlphaBar = false,
		RaidColorName = true,
		ComboGFX = false,
		HappinessBar = false,
		PetClassName = false,
		
		ThemeData = {
			all = {
				FrameHeight = 32,
				FrameWidth = 120,

				NameLabel =		{ 		Font = L"Fonts\\FRIZQT__.TTF",
									FontSize = 9.5,
									Width = 75,
									Point = "TOPLEFT",
									RelativePoint = "TOPLEFT",
									x = 5.5,
									y = -8.5,
								},

				HealthBar_BG =	{ 		Point = "TOPLEFT",
									RelativePoint = "TOPLEFT",
									x = 6,
									y = -16,
									Visibility = {"HealthBar_BG","HealthBar","BarHealthText","HealthText",},
									Height = 6,
									Width = 88,
								},

				ManaBar_BG =	{		Point = "TOPLEFT",
									RelativePoint = "BOTTOMLEFT",
									RelativeTo = "HealthBar_BG",
									x = 0,
									y = -0.5,
									Visibility = {"ManaBar_BG","ManaBar","BarManaText","ManaText","ClassText",},
									Height = 4,
									Width = 88,
								},
				XPBar_BG = 		{		Point = "TOPLEFT",
									RelativeTo = "ManaBar_BG",
									RelativeToSecondary = "HealthBar_BG",
									RelativePoint = "BOTTOMLEFT",
									x = 0,
									y = -0.5,
									HeightAdd = 5,
									Visibility = {"XPBar_BG","XPBar","XPBar_Rest"},
									Width = 88,
									Height = 4,
								},
				NameBackground=	{		Point = "TOPLEFT",
									RelativePoint = "TOPLEFT",
									x=6,
									y=-2,
									Height = 15,
									Width = 88,
									Hidden = true,
								},
				Happiness =		{		Point = "TOPLEFT",
									RelativePoint = "TOPLEFT",
									x=6,
									y=-2,
									Height = 15,
									Width = 82,
									Visibility = {"Happiness",},
									Hidden = true,
								},
				ClassText =	 	{ 		Font = L"Fonts\\FRIZQT__.TTF",
									FontSize = 8,
									Justify = "RIGHT",
									Width = 60,
									Point = "TOPRIGHT",
									RelativePoint = "TOPRIGHT",
									x =-7,
									y =-9,
									Hidden = true,
								},

				HealthText =	{ 		Font = "Fonts\\FRIZQT__.TTF",
									FontSize = 10.5,
									Justify = "CENTER",
									RelativeTo = "HealthBar_BG",
									Point = "CENTER",
									RelativePoint = "CENTER",
									x = 0,
									y = -1,
									Width = 70,
								},

				StatusText =	{ 		Font = "Fonts\\FRIZQT__.TTF",
									FontSize = 10.5,
									Justify = "CENTER",
									RelativeTo = "HealthBar_BG",
									Point = "CENTER",
									RelativePoint = "CENTER",
									x = 0,
									y = -1,
									Width = 70,
								},

				LeaderIcon =	{ 		Point = "TOPRIGHT",
									RelativePoint = "TOPRIGHT",
									x = -4,
									y = -3.5,
								},
							
				MasterIcon =	{ 		Point = "TOPRIGHT",
									RelativePoint = "TOPRIGHT",
									x = -8,
									y = -3.5,
								},

				PVPIcon =		{ 		Hidden = true,
								},

				InCombatIcon =		{ 		Hidden = true,
								},

				RestingIcon =		{ 		Hidden = true,
								},

				RaidTargetIcon =	{	Point = "CENTER",
									RelativePoint = "TOP",
									x = 0,
									y = -3,
								},

				NameBackground =	{		Hidden = true,
								},

				ClassText =		{		Hidden = true,
								},

				ManaText =		{		Hidden = true,
								},
								
				BarManaText =	{		Hidden = true,
								},

				BarHealthText =	{ 		Hidden = true,
								},

		},
	},
}
