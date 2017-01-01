--[[
Add your languages here
C++ is already created for you
]]--

local cpp = maflib:AddLanguage("C++");
cpp:AddComment("//");
cpp:AddAdvancedComment("/*", "*/");
cpp:SetTypes("int", "float", "bool");
cpp:AddExtension("cpp");
