class Apartment < ApplicationRecord
  belongs_to :building

  validates :status, inclusion: { in: ['arrendado', 'disponible', 'propietario'] }

  STATUS_OPTION = [
    ['Arrendado','arrendado'],
    ['Disponible','disponible'],
    ['Propietario','propietario']]
    
end
