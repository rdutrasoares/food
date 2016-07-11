class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, :valor_gasto, message: " deve ser obrigatório."
	validates_numericality_of :valor_gasto, greather_than: 0, message: " deve ser maior do que 0."
	validates_numericality_of :nota, greather_than: 0, less_than_or_equals_to: 10, message: " deve ser um número entre 0 e 10."
	validates_presence_of :cliente, :restaurante
	validates_associated :cliente, :restaurante

	belongs_to :restaurante
	belongs_to :cliente
end