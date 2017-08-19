--[[
Name: AceHook-2.0
Revision: $Rev: 7464 $
Author(s): cladhaire (cladhaire@gmail.com)
           ckknight (ckknight@gmail.com)
Inspired By: AceHook 1.x by Turan (<email here>)
Website: http://www.wowace.com/
Documentation: http://wiki.wowace.com/index.php/AceHook-2.0
SVN: http://svn.wowace.com/root/trunk/Ace2/AceHook-2.0
Description: Mixin to allow for safe hooking of functions, methods, and scripts.
Dependencies: AceLibrary, AceOO-2.0
]]

local MAJOR_VERSION = "AceHook-2.0"
local MINOR_VERSION = "$Revision: 7464 $"

-- This ensures the code is only executed if the libary doesn't already exist, or is a newer version
if not AceLibrary then error(MAJOR_VERSION .. " requires AceLibrary.") end
if not AceLibrary:IsNewVersion(MAJOR_VERSION, MINOR_VERSION) then return end

if not AceLibrary:HasInstance("AceOO-2.0") then error(MAJOR_VERSION .. " requires AceOO-2.0") end

--[[---------------------------------------------------------------------------------
  Create the library object
----------------------------------------------------------------------------------]]

local AceOO = AceLibrary:GetInstance("AceOO-2.0")
local AceHook = AceOO.Mixin {
								"Hook",
								"Unhook",
								"UnhookAll",
								"HookReport",
								"IsHooked",
								"HookScript",
							}

--[[---------------------------------------------------------------------------------
  Library Definitions
----------------------------------------------------------------------------------]]

local protFuncs = {
	CameraOrSelectOrMoveStart = true, 	CameraOrSelectOrMoveStop = true,
	TurnOrActionStart = true,			TurnOrActionStop = true,
	PitchUpStart = true,				PitchUpStop = true,
	PitchDownStart = true,				PitchDownStop = true,
	MoveBackwardStart = true,			MoveBackwardStop = true,
	MoveForwardStart = true,			MoveForwardStop = true,
	Jump = true,						StrafeLeftStart = true,
	StrafeLeftStop = true,				StrafeRightStart = true,
	StrafeRightStop = true,				ToggleMouseMove = true,
	ToggleRun = true,					TurnLeftStart = true,
	TurnLeftStop = true,				TurnRightStart = true,
	TurnRightStop = true,
}

local _G = getfenv(0)

--[[---------------------------------------------------------------------------------
  Private definitions (Not exposed)
----------------------------------------------------------------------------------]]

--[[----------------------------------------------------------------------
	_debug - Internal Method
-------------------------------------------------------------------------]]		
local function print(text)
	DEFAULT_CHAT_FRAME:AddMessage(text)
end

local function _debug(self, msg)
	local name = self.hooks.name
	if name then
		print(string.format("[%s]: %s", name, msg))
	else
		print(msg)
	end		
end

local donothing

local new, del
do
	local list = setmetatable({}, {__mode = "k"})
	function new()
		local t = next(list)
		if not t then
			return {}
		end
		list[t] = nil
		return t
	end
	
	function del(t)
		setmetatable(t, nil)
		table.setn(t, 0)
		for k in pairs(t) do
			t[k] = nil
		end
		list[t] = true
	end
end

--[[----------------------------------------------------------------------
	AceHook:_getFunctionHook- internal method
-------------------------------------------------------------------------]]		

local function _getFunctionHook(self, func, handler)
	local orig = self.hooks[func].orig
	if type(handler) == "string" then
		-- The handler is a method, need to self it
		return function(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			if self.hooks and self.hooks[func] and self.hooks[func].active then
				return self[handler](self, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			elseif orig then
				return orig(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			end
		end
	else
		-- The handler is a function, just call it
		return function(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			if self.hooks and self.hooks[func] and self.hooks[func].active then
				return handler(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			elseif orig then
				return orig(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
			end
		end
	end
end

--[[----------------------------------------------------------------------
	AceHook:_getMethodHook - Internal Method
-------------------------------------------------------------------------]]		
local function _getMethodHook(self, object, method, handler, script)
	local orig = self.hooks[object][method].orig
	if type(handler) == "string" then
		-- The handler is a method, need to self it
		if script then
			return function()
				if self.hooks and self.hooks[object] and self.hooks[object][method] and self.hooks[object][method].active then
					return self[handler](self, object)
				elseif orig then
					return orig()
				end
			end
		else
			return function(obj,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				if self.hooks and self.hooks[obj] and self.hooks[obj][method] and self.hooks[obj][method].active then
					return self[handler](self, obj, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				elseif orig then
					return orig(object, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				end
			end
		end
	else
		-- The handler is a function, just call it
		if script then
			return function()
				if self.hooks and self.hooks[object] and self.hooks[object][method] and self.hooks[object][method].active then
					return handler(object)
				elseif orig then
					return orig()
				end
			end
		else
			return function(obj,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				if self.hooks and self.hooks[obj] and self.hooks[obj][method] and self.hooks[obj][method].active then
					return handler(obj,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				elseif orig then
					return orig(object, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
				end
			end	
		end
	end
end

--[[----------------------------------------------------------------------
	AceHook:HookFunc - internal method.
	o You can only hook each function once from each source.
	o If there is an inactive hook for this func/handler pair, we reactivate it
	o If there is an inactive hook for another handler, we error out.
	o Looks for handler as a method of the calling class, error if not available
	o If handler is a function, it just uses it directly through the wrapper
-------------------------------------------------------------------------]]		
local function _hookFunc(self, func, handler)						
	local f = _G[func]
	
	if not f or type(f) ~= "function" then
		_debug(self, string.format("Attempt to hook a non-existant function %q", func),3)
		return
	end
	
	if not handler then handler = func end

	if self.hooks[func] then
		-- We have an active hook from this source.  Don't multi-hook
		if self.hooks[func].active then
			_debug(self, string.format("%q already has an active hook from this source.", func))
			return
		end
		-- The hook is inactive, so reactivate it
		if self.hooks[func].handler == handler then
			self.hooks[func].active = true
			return
		else
			AceHook:error("There is a stale hook for %q can't hook or reactivate.", func)
		end
	end	
	
	if type(handler) == "string" then
		if type(self[handler]) ~= "function" then
			AceHook:error("Could not find the the handler %q when hooking function %q", handler, func)
		end
	elseif type(handler) ~= "function" then
		AceHook:error("Could not find the handler you supplied when hooking %q", func)
	end
	
	local t = new()
	self.hooks[func] = t
	t.orig = f
	t.active = true
	t.handler = handler
	t.func = _getFunctionHook(self, func, handler)
	
	_G[func] = t.func
end

--[[----------------------------------------------------------------------
	AceHook:UnhookFunc - internal method
	o If you attempt to unhook a function that has never been hooked, or to unhook in a
	  system that has never had a hook before, the system will error with a stack trace
	o If we own the global function, then put the original back in its place and remove
	  all references to the Hooks[func] structure.
	o If we don't own the global function (we've been hooked) we deactivate the hook,
	  forcing the handler to passthrough.
-------------------------------------------------------------------------]]		
local function _unhookFunc(self, func)
	if not self.hooks[func] then
		_debug(self, string.format("Tried to unhook %q which is not currently hooked.", func))
		return
	end
	if self.hooks[func].active then
		-- See if we own the global function
		if _G[func] == self.hooks[func].func then
			_G[func] = self.hooks[func].orig
			del(self.hooks[func])
			self.hooks[func] = nil
			-- Magically all-done
		else
			self.hooks[func].active = nil
		end
	end
end

--[[----------------------------------------------------------------------
	AceHook:HookMeth - Takes an optional fourth argument
	o script - Signifies whether this is a script hook or not
-------------------------------------------------------------------------]]		

local function _hookMeth(self, obj, method, handler, script)
	if not handler then handler = method end
	if (not obj or type(obj) ~= "table") then
		AceHook:error("The object you supplied could not be found, or isn't a table.")
	end
	
	if self.hooks[obj] and self.hooks[obj][method] then
		-- We have an active hook from this source.  Don't multi-hook
		if self.hooks[obj][method].active then
			_debug(self, string.format("%q already has an active hook from this source.", method))
			return
		end
		-- The hook is inactive, so reactivate it.
		if self.hooks[obj][method].handler == handler then
			self.hooks[obj][method].active = true
			return
		else
			AceHook:error("There is a stale hook for %q can't hook or reactivate.", method)
		end
	end
	-- We're clear to try the hook, let's make some checks first
	if type(handler) == "string" then
		if type(self[handler]) ~= "function" then
			AceHook:error("Could not find the handler %q you supplied when hooking method %q", handler, method)
		end
	elseif type(handler) ~= "function" then
		AceHook:error("Could not find the handler you supplied when hooking method %q", method)
	end
	-- Handler has been found, so now try to find the method we're trying to hook	
	local orig
	-- Script
	if script then
		if not obj.GetScript then
			AceHook:error("The object you supplied does not have a GetScript method.")
		end
		if not obj:HasScript(method) then
			AceHook:error("The object you supplied doesn't allow the %q method.", method)
		end
		-- Sometimes there is not a original function for a script.
		orig = obj:GetScript(method)
		if not orig then
			if not donothing then
				function donothing() end
			end
			orig = donothing
		end
	-- Method
	else
		orig = obj[method]
	end
	if not orig then
		AceHook:error("Could not find the method or script %q you are trying to hook.", method)
	end
	if not self.hooks[obj] then
		self.hooks[obj] = new()
	end
	local t = new()
	self.hooks[obj][method] = t
	t.orig = orig
	t.active = true
	t.handler = handler
	t.script = script
	t.func = _getMethodHook(self, obj, method, handler, script)
	
	if script then
		obj:SetScript(method, t.func)
	else
		obj[method] = t.func
	end
end	

--[[----------------------------------------------------------------------
	AceHook:UnhookMeth - Internal method
	o If you attempt to unhook a method that has never been hooked, or to unhook in a
	  system that has never had a hook before, the system will error with a stack trace
	o If we own the global method, then put the original back in its place and remove
	  all references to the Hooks[obj][method] structure.
	o If we don't own the global method (we've been hooked) we deactivate the hook,
	  forcing the handler to passthrough.
-------------------------------------------------------------------------]]		
local function _unhookMeth(self, obj, method)
	if not self.hooks[obj] or not self.hooks[obj][method] then
		_debug(self, string.format("Attempt to unhook a method %q that is not currently hooked.", method))
		return
	end
	if self.hooks[obj][method].active then
		-- If this is a script
		if self.hooks[obj][method].script then
			if obj:GetScript(method) == self.hooks[obj][method].func then
				-- We own the script.  Kill it.
				obj:SetScript(method, self.hooks[obj][method].orig)
				del(self.hooks[obj][method])
				self.hooks[obj][method] = nil
			else
				self.hooks[obj][method].active = nil
			end
		else
			if obj[method] == self.hooks[obj][method].func then
				-- We own the method.  Kill it.
				obj[method] = self.hooks[obj][method].orig
				del(self.hooks[obj][method])
				self.hooks[obj][method] = nil
			else
				self.hooks[obj][method].active = nil
			end
		end
	end
	if not next(self.hooks[obj]) then
		-- Spank the table
		del(self.hooks[obj])
		self.hooks[obj] = nil
	end
end

function AceHook:OnInstanceInit(object)
	if not object.hooks then
		object.hooks = new()
	end
	
	local name
	
	if type(rawget(object, 'GetLibraryVersion')) == "function" then
		name = object:GetLibraryVersion()
	end
	if not name and type(object.GetName) == "function" then
		name = object:GetName()
	end
	if not name and type(object.name) == "string" then
		name = object.name
	end
	if not name then
		for k,v in pairs(_G) do
			if v == object then
				name = tostring(k)
				break
			end
		end
	end
	
	object.hooks.name = name
end

AceHook.OnManualEmbed = AceHook.OnInstanceInit

--[[----------------------------------------------------------------------
	AceHook:Hook
		self:Hook("functionName", ["handlerName" | handler])
		self:Hook(ObjectName, "Method", ["Handler" | handler])
-------------------------------------------------------------------------]]		
function AceHook:Hook(arg1, arg2, arg3)
	if type(arg1)== "string" then
		if protFuncs[arg1] then
 			if self.hooks.name then
				AceHook:error("%s tried to hook %q, which is a Blizzard protected function.", self.hooks.name, arg1)
			else
				_debug(self, string.format("An Addon tried to hook %q, which is a Blizzard protected function.", arg1))
			end
		else
			_hookFunc(self, arg1, arg2)
		end
	else
		_hookMeth(self, arg1, arg2, arg3)
	end
end

function AceHook:HookScript(arg1, arg2, arg3)
	_hookMeth(self, arg1, arg2, arg3, true)
end

--[[----------------------------------------------------------------------
	AceHook:IsHooked()
		self:Hook("functionName")
		self:Hook(ObjectName, "Method")
		
		Returns whether or not the given function is hooked in the current	
		namespace.  A hooked, but inactive function is considered NOT
		hooked in this context.
-------------------------------------------------------------------------]]		
function AceHook:IsHooked(obj, method)
	if method and obj then
		if self.hooks and self.hooks[obj] and self.hooks[obj][method] and self.hooks[obj][method].active then
			return true, self.hooks[obj][method].handler
		end
	else
		if self.hooks and self.hooks[obj] and self.hooks[obj].active then
			return true, self.hooks[obj].handler
		end
	end
	
	return false, nil
end

--[[----------------------------------------------------------------------
	AceHook:Unhook
		self:Unhook("functionName")
		self:Unhook(ObjectName, "Method")
-------------------------------------------------------------------------]]		
function AceHook:Unhook(arg1, arg2)
	if type(arg1) == "string" then
		_unhookFunc(self, arg1)
	else
		_unhookMeth(self, arg1, arg2)
	end
end			

--[[----------------------------------------------------------------------
	AceHook:UnhookAll - Unhooks all active hooks from the calling source
-------------------------------------------------------------------------]]		
function AceHook:UnhookAll()
	for key, value in pairs(self.hooks) do
		if type(key) == "table" then
			for method in pairs(value) do
				self:Unhook(key, method)
			end
		else
			self:Unhook(key)
		end
	end
end


function AceHook:OnEmbedDisable(target)
	self.UnhookAll(target)
end
	
--[[----------------------------------------------------------------------
	AceHook:HookReport - Lists registered hooks from this source
-------------------------------------------------------------------------]]		

function AceHook:HookReport()
	_debug(self, "This is a list of all active hooks for this object:")
	if not self.hooks then _debug(self, "No registered hooks.") return end

	for key, value in pairs(self.hooks) do
		if type(value) == "table" then
			for method in pairs(value) do
				_debug(self, string.format("key: %s method: %q |cff%s|r", tostring(key), method, self.hooks[key][method].active and "00ff00Active" or "ffff00Inactive"))
			end
		else
			_debug(self, string.format("key: %s value: %q |cff%s|r", tostring(key), tostring(value), self.hooks[key].active and "00ff00Active" or "ffff00Inactive"))
		end
	end
end

--[[---------------------------------------------------------------------------------
  Stub and Library registration
----------------------------------------------------------------------------------]]

function AceHook:activate(oldLib, oldDeactivate)
	AceHook = AceLibrary(MAJOR_VERSION)
	
	AceHook.super.activate(self, oldLib, oldDeactivate)
end

AceLibrary:Register(AceHook, MAJOR_VERSION, MINOR_VERSION, AceHook.activate)
AceHook = AceLibrary(MAJOR_VERSION)
