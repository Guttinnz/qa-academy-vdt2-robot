*** Settings ***
Documentation        Login tests

Resource    ${EXECDIR}/resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

Não deve logar com senha incorreta
    [Tags]              inv_pass

    Go To Login Page
    
    Submit Credentials         papito@gmail.com    abc123

    Toast Message Should Be    Credenciais inválidas, tente novamente!

    #Thinking Time
    Sleep                      1

Deve exibir notificação toaster se a senha não for preenchida

    Go To Login Page

    Submit Credentials         papito@gmail.com    ${EMPTY}

    Toast Message Should Be    Por favor, informe a sua senha secreta!

Deve exibir notificação toaster se o email não for preenchido

    Go To Login Page                               

    Submit Credentials         ${EMPTY}            vaibrasil
    
    Toast Message Should Be    Por favor, informe o seu email!

Deve exibir notificação toaster se o email e a senha não forem preenchidos

    Go To Login Page

    Submit Credentials         ${EMPTY}            ${EMPTY}

    Toast Message Should Be    Por favor, informe suas credenciais!

    # código abaixo para logar todo código html da página para assim ter o seletor do toast
    # Sleep               1
    # ${temp}             Get Page Source
    # Log                 ${temp}