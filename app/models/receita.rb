class Receita < ActiveRecord::Base
	belongs_to :prato

	validates_presence_of :conteudo, message: " deve ser preenchido."
end