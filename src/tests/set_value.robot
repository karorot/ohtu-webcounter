*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter to 5
    Go To  ${HOME_URL}
    Input Text  value  5
    Click Button  Aseta
    Page Should Contain  Nappia painettu 5 kertaa

When counter is set and then incremented value increases accordingly
    Go To  ${HOME_URL}
    Input Text  value  3
    Click Button  Aseta
    Click Button  Paina
    Page Should Contain  Nappia painettu 4 kertaa