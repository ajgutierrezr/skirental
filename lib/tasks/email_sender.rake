namespace :enviar_remember do
  desc 'Sends remember emails'
  task :send_remember => :environment do
    Arriendo.all.each do |arriendo|
      if (arriendo.fecha - Date.today).to_i == 1
        if arriendo.user_id
          ArriendoMailer.order_reminder(arriendo, Equipo.find(arriendo.equipo_id), arriendo).deliver
        else
          ArriendoMailer.order_reminder(User.find(arriendo.user_id), Equipo.find(arriendo.equipo_id), arriendo).deliver
        end
      end
    end
  end
end
