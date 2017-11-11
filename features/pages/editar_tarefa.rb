class EditarTarefa <SitePrism::Page

	element :field_actions, "#tab-actions > a"
	element :btn_edit, "#edit_button"
	element :input_subject, "#name"
 	element :input_status, "#status"
 	element :contato_txt, "#contact_name"
 	elements :bt_save, "#SAVE"
 	element :txt_alteracao_sucesso, "#pagecontent > div.moduleTitle > h2"  
 	
 	def editar_task(subject, status, nome_contato)
 		field_actions.click
 		btn_edit.click
 		input_subject.set(subject)
 		input_status.select(status)
 		contato_txt.set(nome_contato)
 		bt_save.last.click

 	 end
	
 end