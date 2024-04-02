*** Settings ***
Resource        ../base.robot
Resource    keywords/POSTLogin_KW.robot

Documentation    Test suite for serverest API - /login endpoint
Test Tags        @login

*** Test Cases ***
Login successfully
    [Tags]         @regression
    Login        fulano@qa.com        teste
    Should Be Equal As Numbers    ${response.status_code}            200
    Should Be Equal As Strings    ${response.json()['message']}       Login realizado com sucesso

Login unsuccessfully
    [Tags]         @regression
    Login        fulano@qa.com        senha3rr0
    Should Be Equal As Numbers    ${response.status_code}             401
    Should Be Equal As Strings    ${response.json()['message']}       Email e/ou senha inválidos