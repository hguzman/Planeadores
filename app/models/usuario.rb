class Usuario < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable

  validates :primerNombre, presence: {message: ': Este campo es obligatorio'}
  validates :segundoNombre, presence: {message: ': Este campo es obligatorio'}
  validates :primerApellido, presence: {message: ': Este campo es obligatorio'}
  validates :email, presence: {message: ': Este campo es obligatorio'}
  validates :password, presence: {message: ': Este campo es obligatorio'}
  validates :password, length: { minimum: 6, message: 'Mínimo 6 caracteres' }
  validates :password, confirmation: {message: ': No coinciden'}
  validates :password_confirmation, presence: {message: ': Este campo es obligatorio'}
  
end
