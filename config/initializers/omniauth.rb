Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['TWITTER_C_KEY_TWO'], ENV['TWITTER_SECRET_TWO']	
	{
		secure_image_url: 'true',
		image_size: 'original',
		authorize_params: {
			force_login: 'false',
			lang: 'pt'
		}
	}
end

