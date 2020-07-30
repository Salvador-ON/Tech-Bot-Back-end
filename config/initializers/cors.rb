Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins  (Rails.env.production? ? 'https://.herokuapp.com' : 'http://localhost:3000')
    resource '*', headers: :any, methods: [:get], credentials: true
  end

end   