# frozen_string_literal: true

class Diner < ApplicationRecord
  belongs_to :user
  belongs_to :place, optional: true
  has_many :invitations
  has_many :favorites
  has_many :restaurants, through: :favorites
  has_many :reservations
  has_one :comment, through: :reservations
  has_many :hist_yumis

  accepts_nested_attributes_for :user

  VALID_NAME_REGEX = /\A[A-Za-zÁÉÍÓÚñáéíóúÑ]+\z/.freeze
  # VALID_NUMBER_REGEX = /\A\([0-9]{3}\)\d{3}-\d{4}\z/.freeze
  VALID_IDENTITY_CARD_REGEX = /\A[VE]?[1-9]\d{6,7}\z/.freeze

  validates :name,
            presence: { message: 'El nombre no puede estar vacio' },
            format: { with: VALID_NAME_REGEX,
                      message: 'El nombre solo puede tener caracteres alfabeticos sin espacios' },
            length: { in: 4..20,
                      too_short: 'El nombre debe tener al menos 4 caracteres',
                      too_long: 'El nombre debe tener maximo 20 caracteres' }

  validates :last_name,
            presence: { message: 'El apellido no puede estar vacio' },
            format: { with: VALID_NAME_REGEX,
                      message: 'El apellido solo puede tener caracteres alfabeticos sin espacios' },
            length: { in: 4..20,
                      too_short: 'El apellido debe tener al menos 4 caracteres',
                      too_long: 'El apellido debe tener maximo 20 caracteres' }

  validates :identity_card,
            presence: { message: 'El numero de cédula no puede estar vacio' },
            format: { with: VALID_IDENTITY_CARD_REGEX,
                      message: 'Número de cédula inválido' }
  # formato de numero: (412)122-3212
  # validates :phone,
  #           format: { with: VALID_NUMBER_REGEX,
  #                     message: 'Formato de numero incorrecto' },
  #           allow_blank: true

  validates :user,
            presence: { message: 'EL usuario no puede estar vacio' }

  validates :place,
            presence: { message: 'El lugar no puede estar vacio' }

  validates :gender,
            format: { with: /\A[FM]\z/, message: 'Sexo invalido' }

  validate :fecha_nacimiento_valida

  def fecha_mayor_edad?
    return true if birth_date.blank?
    return unless birth_date.is_a?(Date)

    fecha_actual = Date.today
    edad = (fecha_actual - birth_date).to_i / 365
    edad.between?(18, 80)
  end

  def fecha_nacimiento_valida
    errors.add(:birth_date, 'Fecha de nacimiento inválida') unless fecha_mayor_edad?
  end
end
