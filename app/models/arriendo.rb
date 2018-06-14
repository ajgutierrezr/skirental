class Arriendo < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :equipo

end
