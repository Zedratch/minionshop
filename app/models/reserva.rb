class Reserva < ApplicationRecord
  before_save { email.downcase! }
  validates :nome,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :telefone, presence: true, length: { minimum: 7, maximum:14 },
                    uniqueness: true
  validates :cpf, presence: true, length: { is:11 }, uniqueness: true
  validates :quantidade, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
