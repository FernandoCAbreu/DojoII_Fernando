Dado("que estou logado no Sitecrm") do
  
  Login.new.load  
  Login.new.login('will','will')

end

Quando("eu fizer o cadastrar uma Task {string}, {string}") do |string, string2|
  
  @task = string
  Home.new.bt_criar.click
  Home.new.input_create_task.click
  Cadastro.new.inserir_cadastro(string, string2)

end

Entao("eu terei uma task criada com sucesso") do
  
expect(Cadastro.new.txt_cadastro_sucesso.text).to eq (@task.upcase)

end