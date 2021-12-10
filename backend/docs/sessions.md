# API Users

Ator: Aplicação Web, Mobile ou qualquer outro front

## Sessions

### Login do Usuário

`Dado que o usuário submeteu o formulário de login com dados corretos`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 200`
`E deve retornar um token JWT na resposta`
`E esse token deve experiar em 10 dias`

### Senha Incorreta

`Dado que o usuário submeteu o formulário de login com a senha incorreta`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 401`
`E deve retornar a mensagem "Unauthorized"`

### Usuário Não Existe

`Dado que o usuário submeteu o formulário de login com a um email não cadastrado`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 401`
`E deve retornar a mensagem "Unauthorized"`

### Email no Formato Incorreto

`Dado que o usuário submeteu o formulário de login com a um email no formato incorreto`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Incorrect email"`

### Email  em Branco

`Dado que o usuário submeteu o formulário de login com a um email em branco`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required email"`

### Sem o  Campo Email

`Dado que o usuário submeteu o formulário de login sem o campo email`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required email"`

### Senha em Branco

`Dado que o usuário submeteu o formulário de login com a senha em branco`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required pass"`

### Sem o  Campo  Senha

`Dado que o usuário submeteu o formulário de login sem a senha`
`Quando faço uma requisição Post para a rota /sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required pass"`







