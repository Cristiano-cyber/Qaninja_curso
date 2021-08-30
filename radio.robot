***Settings*** 

Resource            base.robot

Test Setup          Nova sessão   #implementa um comportamento que sera executado antes de cada teste.
Test Teardown       Encerra sessão   # E o comportamento que é executado apps cada teste executado.

***Test Cases***
Selecionando por id
    Go To                               ${url}/radios
    Select Radio Button                 movies      cap  #seleciona 
    Radio Button Should Be Set To       movies      cap  #verifica se foi selecionado
    Sleep                               5

Selecionando por Value
    Go To                               ${url}/radios
    Select Radio Button                 movies       guardians
    Radio Button Should Be Set To       movies       guardians
    Sleep                               5