*Settings*
Documentation       Login test suite

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*
User Login

    ${user}                     Factory User Login
   
    Go To Login Page
    Fill Credentials            ${user}   
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Password
    [Tags]      i_pass

    ${user}     Create Dictionary       email=vivismonteiro@gmail.com       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User Not Found
    [Tags]      user_404

    ${user}     Create Dictionary       email=vivismonteiro@404.net       password=pwd123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect Email
    [Tags]      i_email

    ${user}     Create Dictionary       email=vivismonteiro.com.br       password=pwd123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Should Be Type Email