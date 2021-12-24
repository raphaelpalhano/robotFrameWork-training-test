*** Settings ***
Resource  recursos.robot


*** Test Cases ***
CT001: Pesquisando por Posts
    Dado o acesso a página do blog 
    Quando pesquisa pelo post "Season WEB Testing - Ep. 03: Open Browser - Chrome Options"
    Entao deve exibir a mensagem "Mostrando postagens que correspondem à pesquisa por Season WEB Testing - Ep. 03: Open Browser - Chrome Options"
