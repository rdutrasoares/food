class Prato < ActiveRecord::Base
	has_and_belongs_to_many :restaurantes
	has_one :receita
	has_many :comentarios, as: :comentavel

	validates_presence_of :nome, message: " deve ser preenchido."
	validates_uniqueness_of :nome, message: " já cadastrado."
end
