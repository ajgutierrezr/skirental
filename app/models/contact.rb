class Contact < ApplicationRecord
  belongs_to :user, optional: true
  after_create :send_question

  def send_question
    ContactMailer.contactar(self).deliver
  end
end
