*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH}    http://www.cs.kku.ac.th
${BROWSER}    Chrome
${WELCOME URL}    http://www.google.co.th
${DELAY}    0.2

*** Test Cases ***
Go to HomePage
    Open Browser    ${WELCOME URL}    ${BROWSER}
	
Search URL
	Input text    q    ${SEARCH}

Test Submit
	Submit Form
	Set Selenium Speed    ${DELAY}
	Wait Unit Page Contains    www.cs.kku.ac.th
	
Test Tear down    Close Browser