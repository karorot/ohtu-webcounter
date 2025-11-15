*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Setup  Reset Counter To Zero
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  Nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  Nappia painettu 2 kertaa