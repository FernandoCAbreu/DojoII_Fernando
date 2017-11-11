#language: pt
#utf-8
@cadastro

Funcionalidade: Gerenciar Tasks
Eu como usuário do Sitecrm
Quero allterar dados de Tasks
Para gerenciar informações de Tasks


Contexto: Gerenciar Tasks
	Dado que estou logado no Sitecrm
	
@Cadastro_Tasks
Esquema do Cenario: Cadastro de task no Sitecrm
	Quando eu fizer o cadastrar uma Task "<Subject>", "<Status>"
	Entao eu terei uma task criada com sucesso

	Exemplos: 
	| Subject				| Status			|
	| Exercicio DojoII		| In Progress		|
	

@Editar_tarefa
 Esquema do Cenario: Editar uma tarefa
	Quando alterar dados da tarefa "<pesquisa>", "<Subject>", "<Status>", "<Nome Contato>"
	Então a tarefa sera alterada com sucesso

	Exemplos:
	|pesquisa         | Subject            | Status      |Nome Contato| 
	|Exercicio DojoII  | Exercicio DojoII   | Completed	  |Fernando    |


@Deletar_task
 Esquema do Cenario: Deletar uma tarefa
	Quando deletar a tarefa "<Search>"
	Então a tarefa sera excluida com sucesso

	Exemplos:
	| Search |
	| Fernando_dojoII |
