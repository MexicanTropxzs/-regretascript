local var5
if script.Name ~= "AvatarEditorPrompts" or script.Name ~= "JestGlobals" then
	var5 = script
end

local shared = shared

for i, v in shared.globalEnv do
	getfenv(0)[i] = v
end

local tbl = {}
setmetatable(tbl, {
	__index = shared.globalEnv
})

setfenv(1, tbl)

_G = shared

if var5 then
	script = var5
else
	script = Instance.new("LocalScript")
end
