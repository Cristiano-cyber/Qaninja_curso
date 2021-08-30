*** Settings ***
Resource            base.robot

Test Setup          Nova sessão   #implementa um comportamento que sera executado antes de cada teste.
Test Teardown       Encerra sessão   # E o comportamento que é executado apps cada teste executado.



*** Test Case ***
Should See Page Title
    Title Should Be      Training Wheels Protocol     
    