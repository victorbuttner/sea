class Client < ApplicationRecord

  require "cpf_cnpj"

  validate :check_cpf
  validates :cpf_cnpj,:rg,:birth_date, :name, :sex, :ocupation, :civil_status, :postal, :street, :addr_number , :district, :state,:city,:phone1, :email, :status, presence: true

  before_create :format_cpf

  has_many :orders
  has_many :recipes

  private

  def check_cpf
      if !CPF.valid?(self.cpf_cnpj, strict: true)
        errors.add(:cpf_cnpj  , "Digite um CPF válido")
      end
  end

  def format_cpf
    self.cpf_cnpj = CPF.new(self.cpf_cnpj).formatted

  end



end
