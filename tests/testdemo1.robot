*** settings ***
documentation   to validate the login form
Library  SeleniumLibrary
#Resource

*** Test Cases ***
validate the login is possbile
    Open the browser
    fill the login details
    wait for the response of the login 
    #check if the information are right
    #adding some comments to testing github


*** Keywords ***
Open the browser
    Create Webdriver    Chrome  executable_path=\Users\Home\AppData\Local\Programs\Python\Python311\Scripts
    Go To    https://accounts.google.com
    
fill the login details
    Input Text    id=identifierId    hilal.faris.1990
    Click Button    xpath=//*[@id="identifierNext"]/div/button
    Input Password    xpath=//*[@id="password"]   iamagoodnoob@0523443958
    Click Button    xpath=//*[@id="passwordNext"]/div/button/div[3]
    
wait for the response of the login 
    Wait Until Element Is Visible    locator