local maflib = {};
maflib.languages = {};
maflib.languagebase = {};

function maflib.languagebase:SetComments(...)
	maflib.languages[self.name].comments = {...};
end

funciton maflib:languagebase:SetAdvancedComment(cstart, cend)
	maflib.languages[self.name].advcomments[maflib.languages[self.name].advcomments + 1] = {cstart, cend};
end

function maflib:AddLanguage(name)
	self.languages[name] = {};
	self.languages[name].base = maflib.languagebase;
	self.languages[name].base.name = name;
	
	return (self.languages[name].base);
end

function maflib:CompileLanguage(name, text)
end
