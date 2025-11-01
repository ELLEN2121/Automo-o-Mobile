*** Settings ***
Resource  ../resources/base.resource

*** Test Cases ***
Cadastro com sucesso
    Start session
    Get started
    Navigate to    Formulários
    Go to          Cadastro    Crie sua conta.
    Input Text    com.qaxperience.yodapp:id/etUsername    Ellen
    Input Text    com.qaxperience.yodapp:id/etEmail    ellen@com
    Input Password    com.qaxperience.yodapp:id/etPassword    teste
    Click Element    com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.TextView
    Click Text    Jedi
    Click Element    com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains   Tudo certo, boas vindas ao Yodapp!   
    Close session

Cadastro com email inexistente 
    [Tags]    email
    Start session
    Get started
    Navigate to    Formulários
    Go to          Cadastro    Crie sua conta.
    Input Text    com.qaxperience.yodapp:id/etUsername    Ellen
    Input Text    com.qaxperience.yodapp:id/etEmail    ellen
    Input Password    com.qaxperience.yodapp:id/etPassword    teste
    Click Element    com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.TextView
    Click Text    Jedi
    Click Element    com.qaxperience.yodapp:id/btnSubmit
    Page Should Contain Text    Email válido você deve informar!
    Close session
