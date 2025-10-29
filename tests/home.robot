*** Settings ***

Library    AppiumLibrary
*** Variables ***
${START}     QAX

*** Test Cases ***
Deve realizar um clique simples
    Start session
    Get started
    Navigate to    Clique em Botões
    Go to          Clique simples    Botão clique simples
    Click Text     CLIQUE SIMPLES 
    Wait Until Page Contains    Isso é um clique simples
    Close session

*** Keywords ***
#Inicia a sessão 
Start session
    Open Application    http://localhost:4723    platformName=Android    deviceName=Android Emulator   automationName=UIAutomator2   app=${EXECDIR}/app/yodapp-beta.apk    udid=emulator-5554    autoGrantPermissions=true 
#
Get started
    Wait Until Page Contains    ${START}    5
    Click Text                  ${START}
 
 Navigate to 
     [Arguments]    ${item-menu}

     ${menulateral}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
     Wait Until Element Is Visible     ${menulateral}  5
     Click Element                     ${menulateral}  

     ${item-menu}      Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item-menu}"]
     Wait Until Element Is Visible     ${item-menu}    5
     Click Element                     ${item-menu}   
Go to 
     [Arguments]     ${item}    ${checkpoint}
    Wait Until Page Contains    ${item}    5
    Click Text                  ${item}
    Wait Until Page Contains    ${checkpoint}

Close session
    Close Application