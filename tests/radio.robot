*** Settings ***
Resource  ../resources/base.resource

*** Test Cases ***
Deve marcar a tech preferida
    Start session
    Get started
    Navigate to    Check e Radio
    Go to          Botões de radio    Escolha sua linguagem preferida
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Javascript")]
   
    Close session

