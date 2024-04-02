*** Settings ***
Resource        ../base.robot
Resource    keywords/POSTLogin_KW.robot

Documentation    Test suite for serverest API - /login endpoint
Test Tags        @login

*** Test Cases ***
Login successfully
    [Tags]    @test     @regression
    Login    Fulano da Silva        teste
    Should Be Equal As Numbers    ${response.status_code}            200
    Should Be Equal As Strings    ${response.json()['message']}       Login realizado com sucesso!