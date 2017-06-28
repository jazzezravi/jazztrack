OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '843181442583-bjqni3dot7l6rs8td1vn37asoah9sn85.apps.googleusercontent.com', 'o7W-VMgt1_Ebe0KL38gdVgjV', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end