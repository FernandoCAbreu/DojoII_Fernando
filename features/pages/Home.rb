class Home <SitePrism::Page

	element :bt_criar, "#quickcreatetop"
	element :input_create_task, "#quickcreatetop > ul > li.last > a"
	element :search_btn, "#searchbutton"
	element :input_search, "#query_string"
	element :search_btn_txt, "#searchformdropdown > div > span > button"
	element :field_task, "#pagecontent > table > tbody:nth-child(3) > tr:nth-child(1) > td:nth-child(2) > a"
	element :field_task_txt_no_results, "#pagecontent > table > tbody:nth-child(3) > tr > td"

	def home_criar()
		bt_criar.click
		input_create_task.click	
		
	end

	def pesquisar_tarefa(pesquisa)
		search_btn.click
		input_search.set(pesquisa)
		search_btn_txt.click
		field_task.click

	 end
end

