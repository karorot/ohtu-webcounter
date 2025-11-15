*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Setup  Reset Counter To Zero
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  Nappia painettu 0 kertaa