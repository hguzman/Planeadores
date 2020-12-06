class Usuario < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable

  validates :primerNombre, format: {  with: /([a-zA-Z]+)([\D])/, message: ': No se aceptan numeros'}
  validates :primerNombre, presence: {message: ': Este campo es obligatorio'}
<<<<<<< HEAD
  validates :segundoNombre, format: {  with: /([a-zA-Z]+)([\D])/, message: ': No se aceptan numeros'}
  validates :segundoNombre, presence: {message: ': Este campo es obligatorio'}
  validates :primerApellido, format: {  with: /([a-zA-Z]+)([\D])/, message: ': No se aceptan numeros'}
=======
>>>>>>> 8593fdb2e58f13a81d35b9da4ec11a97c66d1f67
  validates :primerApellido, presence: {message: ': Este campo es obligatorio'}
  validates :email, presence: {message: ': Este campo es obligatorio'}
  validates :password, presence: {message: ': Este campo es obligatorio'}
  validates :password, length: { minimum: 6, message: 'Mínimo 6 caracteres' }
  validates :password, confirmation: {message: ': No coinciden'}
  validates :password_confirmation, presence: {message: ': Este campo es obligatorio'}

end
