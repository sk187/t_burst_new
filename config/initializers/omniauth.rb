Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['consumer_key'], ENV['consumer_secret']	
	{
		secure_image_url: 'true',
		image_size: 'original',
		authorize_params: {
			force_login: 'false',
			lang: 'pt'
		}
	}
end

