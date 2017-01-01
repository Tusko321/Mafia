maflib.languagebase = {};

function maflib.languagebase:SetComments(...)
	maflib.languages[self.name].comments = {...};
end

function maflib.languageBase:AddComment(comment)
	maflib.languages[self.name].comments[maflib.languages[self.name].comments + 1] = comment;
end

function maflib.languagebase:SetTypes(...)
	maflib.languages[self.name].types = {...};
end

function maflib.languagebase:SetAdvancedComments(...)
	for k,v in next, {...} do
		maflib.languages[self.language].advcomments[maflib.languages[self.language].advcomments + 1] = {v[1], v[2]};
	end
end
