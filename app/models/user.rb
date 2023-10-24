class User < ApplicationRecord
  validates_presence_of :name, :email, :cpf, :phone
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "invalid email format" }
  validates :cpf, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "invalid CPF format" }, allow_blank: true
  validates :phone, format: { with: /\A\(\d{2}\) \d{4,5}-\d{4}\z/, message: "invalid phone format" }, allow_blank: true
end
