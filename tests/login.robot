*** Settings ***
Resource  ../resources/base.resource

*** Test Cases ***
Login com sucesso
    Start session
    Get started
    Navigate to    Formulários
    Go to          Login    Olá Padawan, vamos testar o login?
    Input Text    com.qaxperience.yodapp:id/etEmail    yoda@qax.com
    Input Password    com.qaxperience.yodapp:id/etPassword    jedi
    Click Element    com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains   Boas vindas, logado você está.    
    Close session

Login com senha incorreta
    Start session
    Get started
    Navigate to    Formulários
    Go to          Login    Olá Padawan, vamos testar o login?
    Input Text    com.qaxperience.yodapp:id/etEmail    yoda@qax.com
    Input Password    com.qaxperience.yodapp:id/etPassword    errada
    Click Element    com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains   Oops! Credenciais incorretas. 
    Close session

