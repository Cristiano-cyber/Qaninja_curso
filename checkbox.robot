*** Settings ***
Resource            base.robot

Test Setup          Nova sessão   #implementa um comportamento que sera executado antes de cada teste.
Test Teardown       Encerra sessão   # E o comportamento que é executado apps cada teste executado.


*** Variable ***
   
${check_thor}     id:thor
${check_iron}     css:input[value='iron-man'] 
${check_panther}  Xpath://*[@id = 'checkboxes']/input [7]


*** Test Cases ***
Marcando opção com ID
                      
    Go To                                ${url}/checkboxes    
    Select checkbox                      ${check_thor}   
    Checkbox Should Be Selected          ${check_thor}   
    Sleep                                5   
       

Marcando opção com CSS Selector
                     
    Go To                                ${url}/checkboxes    
    Select checkbox                      ${check_iron} 
    checkbox Should Be Selected          ${check_iron}  
    Sleep                                5  

Marcando opção com Xpath 
                       
    Go To                                ${url}/checkboxes    
    Select checkbox                      ${check_panther}
    checkbox Should Be Selected          ${check_panther}
    Sleep                                5   
   

