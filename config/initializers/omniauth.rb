Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "AicB5BRPdri1UUzKXEimMQupu", "pT71CmM8H47DMOOaEDbfIRJK2u4cHjCOUjJcsyk2fcG9yrGgNQ"	
	{
		secure_image_url: 'true',
		image_size: 'original',
		authorize_params: {
			force_login: 'false',
			lang: 'pt'
		}
	}
end

