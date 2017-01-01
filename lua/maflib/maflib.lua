local maflib = {};
maflib.languages = {};
maflib.languagebase = {};

function maflib.languagebase:SetComments(...)
	maflib.languages[self.name].comments = {...};
end

function maflib.languagebase:SetAdvancedComments(...)
	for k,v in next, {...} do
		maflib.languages[self.language].advcomments[maflib.languages[self.language].advcomments + 1] = {v[1], v[2]};
	end
end

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
