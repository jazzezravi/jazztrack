OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1087501204224-0nro0n9iohs54n4150v9r6nggk1r6r34.apps.googleusercontent.com', 'uqLJnDj4VzVEE1WWUEUvBgAP',   {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  #provider :google_oauth2, '843181442583-g8kn3lo69l7ec0tkedjvqd1347dcrvd7.apps.googleusercontent.com', 'kPc8R5AF0dgjBBM01u5o0bdj', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end