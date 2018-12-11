class NotifierPreview < ActionMailer::Preview
  # Accessible from http://localhost:3000/rails/mailers/notifier/welcome
  def welcome
    Notifier.welcome(User.first)
  end
end