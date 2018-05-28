ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '',
  :domain => 'www.rentalskichile.cl',
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :enable_starttls_auto => true
}

SendGrid.configure do |config|
  config.dummy_recipient = 'noreply@example.com'
end
