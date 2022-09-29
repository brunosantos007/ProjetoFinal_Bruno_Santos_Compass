# language: pt

Funcionalidade: Cadastrar usuários
    Como usuário do ServeRest
    Quero realizar um cadastro
    Para verificar o funcionamento do site

    Contexto: Esteja na tela de Cadastro
        Dado que esteja na tela de Cadastro

@cadastro_sucess
Cenário: Cadastro Administrador
    Quando inserir os dados válidos <nome>, <email>, <senha>
    Então o usuário administrador deverá ser cadastrado com a mensagem <msg_sucess>
    Exemplos:
    | nome          | email          | senha          | msg_sucess                       |
    | "nome_valido" | "email_valido" | "senha_valida" | "Cadastro realizado com sucesso" |

@cadastro_error
Cenário: Cadastro inválido
    Quando inserir os dados inválidos <nome>, <email>, <senha>
    Então o usuário deverá receber uma mensagem <msg_error>
    Exemplos:
    | nome          | email            | senha          | msg_error                           |
    | "nome_vazio"  | "email_valido"   | "senha_valida" | "Nome não pode ficar em branco"     |
    | "nome_valido" | "email_vazio"    | "senha_valida" | "Email é obrigatório"               |
    | "nome_valido" | "email_valido"   | "senha_vazia"  | "Password não pode ficar em branco" |

@cadastro_default
Cenário: Cadastro Default
    Quando inserir os dados <nome>, <email>, <senha>
    Então o user default será cadastrado <msg_sucess>
    Exemplos:
    | nome           | email           | senha           | msg_sucess                       |
    | "nome_default" | "email_default" | "senha_default" | "Cadastro realizado com sucesso" |