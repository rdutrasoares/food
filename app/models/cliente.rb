class Cliente < ActiveRecord::Base
	validates_presence_of :nome, message: " deve ser preenchido."
	validates_length_of :nome, maximum: 50, message: " deve ter no máximo 50 caracteres."
	validate :deve_ser_nascido_antes_de_2000

	has_many :qualificacoes

	private
	def deve_ser_nascido_antes_de_2000
		errors.add("data_nascimento", " deve ser anterior a 31/12/1999") unless data_nascimento < Date.new(1999, 12, 31)
	end
end
