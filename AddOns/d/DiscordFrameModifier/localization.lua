DFM_VERSION = "1.2";
DFM_DL_VERSION = 1.39;

DFM_RELOADWARNING = "For this option to take effect you must reload the UI.  Reload the UI now?";
DFM_USETEXT = "Use:";
DFM_LOCKTEXT = "Lock:";
DFM_FRAMELOC = "FRAME LOCATION";
DFM_DRAGFRAME = "Drag Frame";
DFM_HIDETEXT = "HIDE";
DFM_SHOWTEXT = "SHOW";

BINDING_HEADER_DFM = "Discord Frame Modifier v"..DFM_VERSION;
BINDING_NAME_DFM_OPTIONS = "Toggle Options Window";
BINDING_NAME_DFM_FREEZE = "Toggle Frame Finder Lock";
BINDING_NAME_DFM_FINDER = "Toggle Frame Finder";
BINDING_NAME_DFM_ADDFRAME = "Add Frame Beneath Mouse";
BINDING_NAME_DFM_ADDFRAME2 = "Add Frame Beneath Mouse And Its Children";

DFM_TEXT = {
	AddChildren = "Add Child Frames",
	AddFrame = "Add Frame",
	AddFunction = "Add Function",
	AGStart = "Alpha Gradient Start:",
	AGLength = "Alpha Gradient Length:",
	Alpha = "Alpha:",
	AlphaGradientOrientation = "Gradient Alpha Orientation:",
	AltArrowKeyMode = "Alt Arrow Key Mode:",
	BackgroundAlpha = "Background Alpha:",
	BackgroundColor = "Background Color:",
	BGTexture = "Background Texture:",
	BlendMode = "Blend Mode:",
	BlipTexture = "Blip Texture:",
	BorderAlpha = "Border Alpha:",
	BorderColor = "Border Color:",
	BorderTexture = "Border Texture:",
	BottomInset = "Bottom Inset:",
	Camera = "Camera:",
	CheckedTexture = "Checked Texture:",
	Children = "\n\n** Child Frames: **\n",
	Color = "Color:",
	ColorGradientOrientation = "ColorGradientOrientation:",
	CreateFrame = "Create Frame",
	CreateNewFrame = "Create New Frame",
	CurrentProfile = "Current Profile:",
	Default = "Default",
	Delete = "Delete",
	DisabledCheckedTexture = "Disabled Checked Texture:",
	DisabledFontObject = "Disabled Font Object:",
	DisabledTextColor = "Disabled Text Color:",
	DisabledTexture = "Disabled Texture:",
	DisableMouse = "Disable Mouse Input:",
	DisableMouseWheel = "Disable Mousewheel Input:",
	DragFrame = "DFM Drag Frame",
	DrawLayer = "Draw Layer:",
	EdgeSize = "Edge Size:",
	Facing = "Facing:",
	FadeDuration = "Fade Duration:",
	FogAlpha = "Fog Alpha:",
	FogColor = "Fog Color:",
	FogFar = "Fog Far:",
	FogNear = "Fog Near:",
	Font = "Font:",
	FontHeight = "Font Height:",
	FontObject = "Font Object:",
	ForceHide = "Force Hide",
	Frame = "Frame:",
	FrameFinder = "Frame Finder",
	FrameLevel = "Frame Level:",
	FrameParent = "\n\n** Parent: **\n",
	FrameParentParent = "\n\n** Parent's Parent: **\n",
	FrameStrata = "Frame Strata:",
	Frames = "FRAMES",
	FrameType = "Type:",
	Header = "Header:",
	Height = "Height:",
	HideFrame = "Hide Frame",
	HighlightFontObject = "Highlight Font Object:",
	HighlightTextColor = "Highlight Text Color:",
	HighlightTexture = "Highlight Texture:",
	IconTexture = "Icon Texture:",
	JustifyH = "Horizontal Justification:",
	JustifyV = "Vertical Justification:",
	LeftInset = "Left Inset:",
	LoadOnDemand = "Load On Demand Functions",
	LoadProfile = "Load Profile:",
	Locked = "LOCKED",
	LoDFunc = "Load On Demand Functions",
	LowerLeftX = "Lower Left X:",
	LowerLeftY = "Lower Left Y:",
	LowerRightX = "Lower Right X:",
	LowerRightY = "Lower Right Y:",
	MaskTexture = "Mask Texture:",
	MaxAlpha = "Max Alpha:",
	MaxColor = "Max Color:",
	MaxLines = "Max Lines:",
	MinAlpha = "Min Alpha:",
	MinColor = "Min Color:",
	Model = "Model:",
	ModelScale = "Model Scale:",
	Monochrome = "Monochrome:",
	MouseIsOver = "** Mouse Is Over: **\n",
	Name = "Name:",
	NewProfile = "New Profile:",
	No = "NO",
	NonSpaceWrap = "Non-space Wrap:",
	NormalTexture = "Normal Texture:",
	Options = "$f OPTIONS",
	Orientation = "Orientation:",
	Outline = "Outline:",
	Parent = "Parent Frame:",
	Point = "Point:",
	PositionX = "Position X:",
	PositionY = "Position Y:",
	PositionZ = "Position Z:",
	PushedTexture = "Pushed Texture:",
	Regions = "\n\n** Regions: **\n",
	ReloadUI = "Reload the UI",
	RemoveFromList = "Remove From List",
	ResetFrame = "Reset Frame",
	RightInset = "Right Inset:",
	Rotation = "Rotation:",
	Scale = "Scale:",
	SetToplevel = "Move to Top:",
	ShadowAlpha = "Shadow Alpha:",
	ShadowColor = "Shadow Color:",
	ShadowOffsetX = "Shadow Offset X:",
	ShadowOffsetY = "Shadow Offset Y:",
	ShowFrame = "Show Frame",
	Spacing = "Spacing:",
	StatusBarAlpha = "Status Bar Alpha:",
	StatusBarColor = "Status Bar Color:",
	StatusBarTexture = "Status Bar Texture:",
	Text = "Text:",
	TextAlpha = "Text Alpha:",
	TextColor = "Text Color:",
	Texture = "Texture:",
	TextureAlpha = "Texture Alpha:",
	ThumbTexture = "Thumb Texture:",
	Tile = "Tile Background:",
	TileSize = "Tile Size:",
	TimeVisible = "Time Visible:",
	To = "To:",
	TopInset = "Top Inset:",
	Type = "|cFFAAAAAAType: ",
	Unlock = "Unlock",
	Unlocked = "UNLOCKED",
	UnnamedFrame = "Unnamed Frame",
	UpperLeftX = "Upper Left X:",
	UpperLeftY = "Upper Left Y:",
	UpperRightX = "Upper Right X:",
	UpperRightY = "Upper Right Y:",
	UserAdded = "User Added Frames",
	Width = "Width:",
	Yes = "YES",
}

DFM_HEADER_OPTIONS = {
	{text="Delete Header", value=1}
}

-- GLOBALS, DO NOT CHANGE
DFM_OPTIONS_LIST = {};
DFM_LODHOOKFUNC = "function DFM_$f()\nDFM_Old_$f();\nDFM_Initialize_AllFrames(1);\n$f = DFM_Old_$f;\nDFM_Old_$f = nil;\nDFM_$f = nil;\nend";

DFM_FRAMETYPES = {
	{ text="Button", value="Button" },
	{ text="CheckButton", value="CheckButton" },
	{ text="ColorSelect", value="ColorSelect" },
	{ text="DressUpModel", value="DressUpModel" },
	{ text="EditBox", value="EditBox" },
	{ text="Font", value="Font" },
	{ text="FontString", value="FontString" },
	{ text="Frame", value="Frame"},
	{ text="GameTooltip", value="GameTooltip" },
	{ text="LootButton", value="LootButton" },
	{ text="MessageFrame", value="MessageFrame" },
	{ text="Minimap", value="Minimap" },
	{ text="Model", value="Model" },
	{ text="MovieFrame", value="MovieFrame" },
	{ text="PlayerModel", value="PlayerModel" },
	{ text="ScrollFrame", value="ScrollFrame" },
	{ text="ScrollingMessageFrame", value="ScrollingMessageFrame" },
	{ text="SimpleHTML", value="SimpleHTML" },
	{ text="Slider", value="Slider" },
	{ text="StatusBar", value="StatusBar" },
	{ text="TabardModel", value="TabardModel" },
	{ text="TaxiRouteFrame", value="TaxiRouteFrame" },
	{ text="Texture", value="Texture" },
	{ text="WorldFrame", value="WorldFrame" },
}