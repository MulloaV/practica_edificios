class Apartment < ApplicationRecord
  belongs_to :building

  validates :status, inclusion: { in: ['arrendado', 'disponible', 'propietario'] }

  STATUS_OPTION = [
    ['Arrendado','arrendado'],
    ['Disponible','disponible'],
    ['Propietario','propietario']]
    

  def badge_color 
    case status
    when 'arrendado'
      'secondary'
    when 'disponible'
      'success'
    when 'propietario'
      'info'
    end
  end
end
