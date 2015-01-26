Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "LuFHcuPmknr3xGPMMH0d58Bd1", "IxSUKBOekInAHcXzWk4gXYU3Wg4il6KWJxOwdGAG3VneFAFTB6"	
	{
		secure_image_url: 'true',
		image_size: 'original',
		authorize_params: {
			force_login: 'true',
			lang: 'pt'
		}
	}
end

