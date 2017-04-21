namespace :demo do
     desc "This is to send an email to users"
     task(:mail_users => :environment) do
        User.all.each do |user|
          UserMailer.demo_mail(user).deliver!
        end   
     end
 end
