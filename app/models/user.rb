# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role
  has_one :restaurant, dependent: :destroy
  has_one :diner, dependent: :destroy
  has_many :hist_searches
  has_many :articles
  accepts_nested_attributes_for :restaurant
  accepts_nested_attributes_for :diner

  include PermisosConcern
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, omniauth_providers: [:google_oauth2]
  validates :password_confirmation, presence: true, on: :create
  validates :password, confirmation: true, presence: true,
                       length: { minimum: 6 }, on: :create
  validates :user_name, :presence => {message: "Debe colocar el nombre de usuario"},
            uniqueness: {message: "El nombre de usuario ya existe"},
            length: {minimum:6, maximum:20, 
            message: "El nombre de usuario debe tener al menos 6 carácteres"},
            format: { with: /\A[a-z0-9]*[a-z]+[a-z0-9]*\z/i, message: "Debe contener al menos una letra" }, unless: :google?
  validates :email, :presence => {message: "Debe colocar el correo"},
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/, message: "Debe colocar un formato de correo válido"},
  uniqueness: {message: "El correo ya existe"} 
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}\-\d{4}\z/ }, allow_blank: true
  
  # Metodo para preguntar si el usuario esta aprobado
  def active_for_authentication?
    super && approved?
  end
  # Mensaje de no aprobacion devise
  def inactive_message
    approved? ? super : :not_approved
  end




  scope :get_username, ->(iduser) {where(id: iduser).pluck('user_name')}


  def self.from_omniauth(access_token, role)
    data = access_token.info
    another_data = access_token
    user = User.where(email: data['email']).first

    # Si el usuario no existe, se crea
    unless user
      user = User.new(user_name: data['email'],
                      email: data['email'],
                      password: Devise.friendly_token[0, 20],
                      is_google: true,
                      provider: another_data['provider'],
                      uid: another_data['uid'],
                      role_id: role)
      if role != 2
        user.role_id = 3
        diner = Diner.new(name: data['first_name'], last_name: data['last_name'])
        diner.save(validate: false)
        user.diner = diner
      else
        user.role_id = 2
        user.provider = data['image']
        restaurant = Restaurant.new(name: data['name'])
        restaurant.save(validate: false)
        user.restaurant = restaurant
      end
      user.save(validate: false)
    end
    user
  end

  scope :get_username, ->(iduser) {where(id: iduser).pluck('user_name')}
  
  protected

  def google?
    is_google == true
  end


  
end
