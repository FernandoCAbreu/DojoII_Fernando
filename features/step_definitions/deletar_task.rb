Quando("deletar a tarefa {string}") do |string|

  @task = string
  Home.new.pesquisar_tarefa(string)
  Deletar.new.field_actions.click
  Deletar.new.btn_delete.click
  page.driver.browser.switch_to.alert.accept


end

Então("a tarefa sera excluida com sucesso") do

  	Home.new.search_btn.click
	Home.new.input_search.set('Fernando_dojoII')
	Home.new.search_btn_txt.click
	expect(Home.new.field_task_txt_no_results.text).to eq('No results')

end