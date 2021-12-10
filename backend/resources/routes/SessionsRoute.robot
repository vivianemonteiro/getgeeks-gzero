*Settings*
Documentation       Sessions route test suite

*Keywords*

POST Session
    [Arguments]          ${payload}

    ${response}          POST       
    ...                  ${API_USERS}/sessions
    ...                  json=${payload}
    ...                  expected_status=any    

    [return]             ${response}