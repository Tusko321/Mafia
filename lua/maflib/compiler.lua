maflib.global = {};

function maflib:AddGlobal(type, name, value)
	maflib.global["name"] = {type = type, value = value};
end

function maflib:RemoveGlobal(name)
	
end

function maflib:CompileLanguage(name, text)
	local comments = maflib.languages[name].comments;
	local advcomments = maflib.languages[name].advcomments;
	local types = maflib.languages[name].types;
end
