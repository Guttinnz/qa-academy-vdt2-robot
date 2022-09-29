*** Settings ***
Documentation    Deve fazer a troca com sucesso das figurinhas

Resource    ../resources/main.resource

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

    Search User       legend
    Select Sticker    Neymar Jr
    Get In Touch
    Whatsapp Sticker Message    Neymar Jr
    Take Screenshot