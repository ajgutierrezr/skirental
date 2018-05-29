ActionMailer::Base.register_interceptor(SendGrid::MailInterceptor)

ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.secrets.sendgrid_user,
  :password => Rails.application.secrets.sendgrid_password,
  :domain => 'www.rentalskichile.cl',
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :authentication => :plain,
  :enable_starttls_auto => true
}

SendGrid.configure do |config|
  config.dummy_recipient = 'rentalski@gmail.com'
end
