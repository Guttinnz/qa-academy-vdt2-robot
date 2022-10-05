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

    # código abaixo para logar todo código html da página para assim ter o seletor do toast
    # Sleep               1
    # ${temp}             Get Page Source
    # Log                 ${temp}

    #Deve exibir notificação toaster se a senha não for preenchida
     #Deve exibir notificação toaster se o email não for preenchido
      #Deve exibir notificação toaster se o email e a senha não forem preenchidos