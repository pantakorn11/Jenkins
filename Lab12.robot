* Settings *
Library    SeleniumLibrary

* Variables *
${HOMEPAGE}    http://www.google.com
${CS}    http://www.cs.kku.ac.th
${BROWSER}    Chrome
${Submit}    btnK

* Test Cases *
Go To Homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
	Input Text    q    ${CS}
	Submit form
	Wait Until Page Contains    http://www.cs.kku.ac.th
Test Teardown    Close Browser