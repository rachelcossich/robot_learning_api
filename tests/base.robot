*** Settings ***
Library     RequestsLibrary
Library     FakerLibrary    locale=pt_PT

*** Variables ***
${BASE_URL}         https://serverest.dev

${NAME}             Fulano da Silva
${EMAIL}            fulano@qa.com
${PASSWORD}         teste