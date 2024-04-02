*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Login
    [Documentation]    KW: to perform a login
    [Arguments]        ${email}    ${password}

    ${header}        Create Dictionary
    ...              content-type=application/json    

    ${body}          Create Dictionary
    ...              email=${email}
    ...              password=${password}
    
    Create Session    serveRest        ${BASE_URL}    verify=True
    ${response}       POST   serveRest    /login
    ...               header=${header}
    ...               json=${body}
    
    Set Test Variable    ${response}