*** Settings ***
Resource  ../resources/base.resource

*** Test Cases ***
Deve marcar as techs que utilizam appium
    Start session
    Get started
    Navigate to    Check e Radio
    Go to          Checkbox    Marque as techs que usam Appium
    @{techs}    Create List    Ruby    Python    Java    Javascript    C#

    FOR    ${tech}    IN    @{techs}

        Click Element    xpath=//android.widget.CheckBox[contains(@text,"${tech}")]
        Sleep    1
        
    END
    Sleep    3
   
    Close session
