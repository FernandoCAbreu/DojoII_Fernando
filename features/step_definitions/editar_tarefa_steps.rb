
Quando("alterar dados da tarefa {string}, {string}, {string}, {string}") do |string, string2, string3, string4|                                    
  
  
   @task = string
   Home.new.pesquisar_tarefa(string)
   EditarTarefa.new.editar_task(string2, string3, string4)

 end

Então("a tarefa sera alterada com sucesso") do

  expect(EditarTarefa.new.txt_alteracao_sucesso.text).to eq (@task.upcase)
 
end