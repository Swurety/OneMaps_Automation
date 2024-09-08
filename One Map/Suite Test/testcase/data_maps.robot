*** Settings ***
Library    Collections
Library    json
Library    OperatingSystem
Library    Process
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Screenshot
Library    logic.py
Library    ExcelLibrary
Library    JSONLibrary

Resource   variables.robot

*** Keywords ***
Test Get Formatted Dates
    ${past_date}=    Formatted Past Date
    ${formatted_current_date}    ${formatted_current_date_2}    ${formatted_current_date_3}=    Formatted Current Date
    ${future_date}=    Formatted Future Date

    Log To Console    Generated Formatted Time Past: ${past_date}

    Log To Console    Generated Formatted Time Current A: ${formatted_current_date}
    Log To Console    Generated Formatted Time Current B: ${formatted_current_date_2}
    Log To Console    Generated Formatted Time Current C: ${formatted_current_date_3}

    Log To Console    Generated Formatted Time Future: ${future_date}

    Log    Generated Formatted Time Past: ${past_date}
    Log    Generated Formatted Time Current A: ${formatted_current_date}
    Log    Generated Formatted Time Current B: ${formatted_current_date_2}
    Log    Generated Formatted Time Current C: ${formatted_current_date_3}
    Log    Generated Formatted Time Future: ${future_date}

    Set Suite Variable    ${past_date}
    Set Suite Variable    ${formatted_current_date}
    Set Suite Variable    ${formatted_current_date_2}
    Set Suite Variable    ${formatted_current_date_3}
    Set Suite Variable    ${future_date}

Test Generate random angka
    ${random_number1}    Evaluate    random.randint(1, 10)
    ${random_number2}    Evaluate    random.randint(10, 100)
    ${random_number3}    Evaluate    random.randint(100, 1000)
    ${random_number4}    Evaluate    random.randint(1000, 10000)

    Set Suite Variable    ${random_number1}
    Set Suite Variable    ${random_number2}
    Set Suite Variable    ${random_number3}
    Set Suite Variable    ${random_number4}

    Log To Console    ${random_number1}
    Log To Console    ${random_number2}
    Log To Console    ${random_number3}
    Log To Console    ${random_number4}

    Log    ${random_number1}
    Log    ${random_number2}
    Log    ${random_number3}
    Log    ${random_number4}


#Start Test Case
#============================================================================================================#
Get Community Data
    [Tags]    Perform GET request Community Data
    [Documentation]    Perform GET request to retrieve Community Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_community}?lat=${lat_community}&lng=${lng_community}&dist=${dist_community}&theme=${theme_community}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END




Get schoolqueryInfo kindergarten
    [Tags]    Perform GET request schoolqueryInfo kindergarten Data
    [Documentation]    Perform GET request to retrieve schoolqueryInfo kindergarten Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_kindergarten}?lat=${lat_kindergarten}&lng=${lng_kindergarten}&postalcode=${postalcode_kindergarten}&blkno=${blkno_kindergarten}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts


Get schoolqueryInfo primary
    [Tags]    Perform GET request schoolqueryInfo primary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo primary
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_primary}?lat=${lat_primary}&lng=${lng_primary}&postalcode=${postalcode_primary}&blkno=${blkno_primary}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts



Get schoolqueryInfo secondary
    [Tags]    Perform GET request schoolqueryInfo secondary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo secondary Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_secondary}?lat=${lat_secondary}&lng=${lng_secondary}&postalcode=${postalcode_secondary}&blkno=${blkno_secondary}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts


Get schoolqueryInfo post-secondary
    [Tags]    Perform GET request schoolqueryInfo post-secondary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo post-secondary Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_post-secondary}?lat=${lat_post-secondary}&lng=${lng_post-secondary}&postalcode=${postalcode_post-secondary}&blkno=${blkno_post-secondary}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts



Get medical and dental clinics
    [Tags]    Perform GET request medical and dental clinics
    [Documentation]    Perform GET request to medical and dental clinics Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_medical}?lat=${lat_medical}&lng=${lng_medical}&dist=${dist_medical}&theme=${theme_medical}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts




Get hawker centres
    [Tags]    Perform GET request hawker centres
    [Documentation]    Perform GET request to retrieve hawker centres Data
    Create Session    MyCustomSession    ${base_url}    verify=True    timeout=60

        ${headers}    Create Dictionary    Content-Type=${content_type}    authority=${authority}    
        ...    Accept=${accept}    Accept-Encoding=${accept_encoding}    Accept-Language=${accept_language}    Cookie=${cookie_string}
        FOR    ${i}    IN RANGE    3
            TRY
                ${url}    Set Variable    ${base_url}${path_post-secondary}?lat=${lat_hawker}&lng=${lng_hawker}&dist=${dist_hawker}&blkno=${theme_hawker}
                ${response}    GET On Session    MyCustomSession    ${url}    headers=${headers}
                Log    Response: ${response}
                log to console    Response Status Code: ${response.status_code}
                log to console    Response JSON: ${response.json()}
                Run Keyword If    '${response.status_code}' == '200'    Exit For Loop
            EXCEPT    RemoteDisconnected
                Log    Connection lost. Retrying... Attempt ${i}
                Sleep    5s
            END
        END

    Run Keyword If    '${response.status_code}' != '200'    Fail    Request failed after 3 attempts


