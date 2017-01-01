local maflib = {};
maflib.languages = {};
maflib.languagebase = {
	function SetComments(...)
		maflib.languages[self.name]["comments"]	= {...};
	end
};

function maflib:AddLanguage(name)
	self.languages[name] = {};
	self.languages[name].base = maflib.languagebase;
	self.languages[name].base["name"] = name;
	
	return (self.languagebase);
end
