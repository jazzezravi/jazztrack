OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :google_oauth2, '843181442583-bjqni3dot7l6rs8td1vn37asoah9sn85.apps.googleusercontent.com', 'o7W-VMgt1_Ebe0KL38gdVgjV', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :google_oauth2, '843181442583-g8kn3lo69l7ec0tkedjvqd1347dcrvd7.apps.googleusercontent.com', 'kPc8R5AF0dgjBBM01u5o0bdj', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end