*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL_BLOG}  https://robotizandotestes.blogspot.com/
${BROWSER}   chrome
${LUPA}      css:svg.svg-icon-24.search-expand-icon
${CAMPO_PESQUISA}  name=q
${SUBMIT}   css:input[value^='Pesquisar'] 



*** Keywords ***
Dado o acesso a página do blog
    Open Browser  url=${URL_BLOG}  browser=${BROWSER}
    Title Should Be  Robotizando Testes

Quando pesquisa pelo post "${TEXT_PESQUISA}"
    Wait Until Element Is Visible  ${LUPA} 
    Click Element	${LUPA} 
    Input Text      ${CAMPO_PESQUISA}  ${TEXT_PESQUISA}  
    Click Element    ${SUBMIT}


Entao deve exibir a mensagem "${MENSAGEM}"
    Page Should Contain  text=${MENSAGEM} 
    Close Browser 