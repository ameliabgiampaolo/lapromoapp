class Article < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  validates :title, presence: { message: 'El titulo no puede estar en blanco' }, uniqueness: { message: 'El título ya existe' }, length: {minimum: 10, maximum:200, too_short: "El título debe tener un mínimo de %{count} caracteres",too_long: "El título debe tener un máximo de %{count} caracteres"}
  validates :description, presence: { message: 'El contenido no puede estar en blanco' }, uniqueness: { message: 'El contenido ya existe' }, length: {minimum: 20, too_short:'El contenido deber tener un mínimo de %{count} caracteres'}
  validates :topic, presence: {message: 'El tema no puede estar en blanco'}
end

