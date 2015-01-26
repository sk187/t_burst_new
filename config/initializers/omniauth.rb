Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "J6Z0uFbf6DjvpnnJMHjR8QMFh", "sVGE9NlctX8gW6w4NoA7N9iya3TkjDod2GE5OuRPVm5qPR83sk"	
	{
		secure_image_url: 'true',
		image_size: 'original',
		authorize_params: {
			force_login: 'false',
			lang: 'pt'
		}
	}
end

