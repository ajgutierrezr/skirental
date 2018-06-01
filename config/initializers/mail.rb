ActionMailer::Base.smtp_settings = {
  :user_name => '',
  :password => '',
  :domain => 'www.rentalskichile.cl',
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :authentication => :plain,
  :enable_starttls_auto => true
}

SendGrid.configure do |config|
  config.dummy_recipient = 'rentalskichile2@gmail.com'
end
