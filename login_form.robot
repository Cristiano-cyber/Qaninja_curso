*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    Go to                   ${url}/login
    Input Text              css:input[name=username]    stark
    Input Text              css:input[name=password]    jarvis!
    Click Element           class:btn-login

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Senha Inválida
    [tags]                  login_error
    Go to                   ${url}/login
    Input Text              css:input[name=username]    stark
    Input Text              css:input[name=password]    acb123
    Click Element           class:btn-login

    ${message}=              Get WebElement          id:flash
    Should Contain           ${message.text}         Senha é infalida

Usuário não existe
    [tags]                  login_user404
    Go to                   ${url}/login
    Input Text              css:input[name=username]    criz
    Input Text              css:input[name=password]    123456
    Click Element           class:btn-login

    ${message}=             Get WebElement          id:flash
    Should Contain          ${message.text}         O usuário informado não esta cadastrado!

    