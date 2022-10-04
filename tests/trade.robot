*** Settings ***
Documentation    Deve fazer a troca com sucesso das figurinhas

Resource    ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Do Login

    Search User       legend
    Select Sticker    Neymar Jr
    Get In Touch
    Whatsapp Sticker Message    Neymar Jr
    Take Screenshot