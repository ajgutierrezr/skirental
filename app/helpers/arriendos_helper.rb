module ArriendosHelper

  def send_email(arr_final)
    if arr_final.endof
      if arr_final.user_id
        ArriendoMailer.order_confirm(User.find(arr_final.user_id), Equipo.find(arr_final.equipo_id), arr_final).deliver
        ArriendoMailer.order_alert(User.find(arr_final.user_id), Equipo.find(arr_final.equipo_id), arr_final).deliver
        ArriendoMailer.order_reminder(User.find(arr_final.user_id), Equipo.find(arr_final.equipo_id), arr_final).deliver_later(wait_until: (arr_final.fecha - 1).to_s)
      else
        ArriendoMailer.order_confirm(arr_final, Equipo.find(arr_final.equipo_id), arr_final).deliver
        ArriendoMailer.order_alert(arr_final, Equipo.find(arr_final.equipo_id), arr_final).deliver
        ArriendoMailer.order_reminder(arr_final, Equipo.find(arr_final.equipo_id), arr_final).deliver_later(wait_until: (arr_final.fecha - 1).to_s)
      end
    end
  end

end
