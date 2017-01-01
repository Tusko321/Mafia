maflib = {};
maflib.languages = {};
include "maflib/languagebase.lua"
include "maflib/compiler.lua"

function maflib:AddLanguage(name)
	self.languages[name] = {};
	self.languages[name].base = maflib.languagebase;
	self.languages[name].base.name = name;
	
	return (self.languages[name].base);
end
