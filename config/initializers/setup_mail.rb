# config/initializers/setup_mail.rb

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "frontinojr@gmail.com",
  :password             => "senhordosexercitos",
  :authentication       => "plain",
  :enable_starttls_auto => true
}