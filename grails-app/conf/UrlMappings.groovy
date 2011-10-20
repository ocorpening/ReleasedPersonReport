class UrlMappings {

	static mappings = 
	{
		"/$controller/$action?/$id?"
		{
			constraints 
			{
				// apply constraints here
			}
		}
		"/"(controller: 'arrestData', action: 'list')
		"500"(view:'/error')
	}
}
