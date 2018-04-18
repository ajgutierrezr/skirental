class Arriendo < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :equipo
  after_create :send_email

  def send_email
    if self.user_id
      ArriendoMailer.order_confirm(User.find(self.user_id), Equipo.find(self.equipo_id), self).deliver
      ArriendoMailer.order_alert(User.find(self.user_id), Equipo.find(self.equipo_id), self).deliver
      ArriendoMailer.order_reminder(User.find(self.user_id), Equipo.find(self.equipo_id), self).deliver_later(wait_until: (self.fecha - 1).to_s)
    else
      ArriendoMailer.order_confirm(self, Equipo.find(self.equipo_id), self).deliver
      ArriendoMailer.order_alert(self, Equipo.find(self.equipo_id), self).deliver
      ArriendoMailer.order_reminder(self, Equipo.find(self.equipo_id), self).deliver_later(wait_until: (self.fecha - 1).to_s)
    end
  end

end
