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
    ${response}       POST On Session   serveRest    /login
    ...               headers=${header}
    ...               json=${body}
    ...               expected_status=any
    
    Set Test Variable    ${response}