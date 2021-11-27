*Settings*
Documentation       Login test suite

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Variables*
${PWD}      pwd123

*Test Cases*
User Login

    ${user}                     Factory User Login
   
    Go To Login Page
    Fill Credentials            ${user}   
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Password
    [Tags]      inv_pass

    ${user}     Create Dictionary       email=vivismonteiro@gmail.com       password=ab123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User Not Found
    [Tags]      user_404

    ${user}     Create Dictionary       email=vivismonteiro@404.net         password=${PWD}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]      inv_email

    ${user}     Create Dictionary       email=vivismonteiro.com.br          password=${PWD}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Should Be Type Email

# Aqui iniciam-se os testes do desafio 1 do módulo PRO 
# O run do projeto está com a tag dsf caso precise rodar outros testes favor alterá-lo
Without Email
    [Tags]      empty_mail      dsf
    ${user}     Create Dictionary       email=${EMPTY}                      password=${PWD}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be        E-mail obrigatório

Without Password
    [Tags]      empty_pass      dsf
    ${user}     Create Dictionary       email=vivismonteiro@gmail.com       password=${EMPTY}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Alert Span Should Be        Senha obrigatória

Without Required Fields
    [Tags]      empty_fields    dsf
     
    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória
    Go To Login Page
    Submit Credentials  
    Alert Spans Should Be   ${expected_alerts}

#Fim dos cenários de testes do desafio


#Primeiramente eu havia tentando implementar o template mas ai lembrei o que o Papito falou de que para apenas 2 cenários não valia a pena
#de qualquer forma deixei aqui comentado.
# *Keywords*
# User Invalid Login
#     [Arguments]     ${email}      ${password}     ${expect_alert}

#     ${user}     Create Dictionary       ${email}        ${password}
    
#     Go To Login Page
#     Fill Credentials            ${user}
#     Submit Credentials
#     Alert Span Should Be        ${expect_alert}