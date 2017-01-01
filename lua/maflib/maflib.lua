maflib = {};
maflib.languages = {};
include "maflib/languagebase.lua"

function maflib:AddLanguage(name)
	self.languages[name] = {};
	self.languages[name].base = maflib.languagebase;
	self.languages[name].base.name = name;
	
	return (self.languages[name].base);
end

function maflib:CompileLanguage(name, text)
	local comments = maflib.languages[name].comments;
	local advcomments = maflib.languages[name].advcomments;
end
