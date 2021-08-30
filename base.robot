*** Settings ***
Library     SeleniumLibrary


*** Variable ***
${url}            https://training-wheels-protocol.herokuapp.com 

*** keywords ***
Nova sessão
    Open Browser                          ${url}              Chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser    