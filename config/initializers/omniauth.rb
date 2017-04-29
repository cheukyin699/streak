OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '121987538341529', '4be91d878d3b3d618d5c6c9e158bd287'
end

OmniAuth.config.on_failure do |env|
  [200, {}, [env['omniauth.error'].inspect]]
end
