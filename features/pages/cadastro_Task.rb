class Cadastro <SitePrism::Page

	element :input_subject, "#name"
 	element :input_status, "#status"
 	elements :bt_save, "#SAVE"
 	element :txt_cadastro_sucesso, "#pagecontent > div.moduleTitle > h2"


 	def inserir_cadastro(subject, status)
 		input_subject.set(subject)
 		input_status.select(status)
 		bt_save.last.click
 	end


 end