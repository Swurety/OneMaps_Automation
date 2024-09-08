*** Settings ***
Library    OperatingSystem
Library    Process
Library    SeleniumLibrary
Library    Screenshot
Library    logic.py


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
Open Browser - Incognito
    [Tags]    Open Browser - Incognito
    Open browser in Incognito Mode    ${base_url}
    Maximize Browser Window


Check necessary element
    [Tags]    Check all button on One Map
    [Documentation]    Check all button visible
    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Wait Until Element Is Visible    ${button search}
    SeleniumLibrary.Wait Until Element Is Visible    ${button route}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu}

    SeleniumLibrary.Click Element    ${button expand menu}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Drone Query}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Land Betterment}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Land Query}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-More Services}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Property}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Select Map Styles}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Shadow Analysis}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Show Nearby}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-Window View}
    SeleniumLibrary.Wait Until Element Is Visible    ${button expand menu-About}
    SeleniumLibrary.Click Element    ${button expand menu}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Drone Query}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Land Betterment}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Land Query}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-More Services}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Property}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Select Map Styles}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Shadow Analysis}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Show Nearby}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-Window View}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button expand menu-About}

    SeleniumLibrary.Input Text    ${field input-search}    ${random_number1}
    SeleniumLibrary.Wait Until Element Is Visible    ${button cancel search}
    SeleniumLibrary.Click Element    ${button cancel search}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button cancel search}

    SeleniumLibrary.Wait Until Element Is Visible    ${button comunity}
    SeleniumLibrary.Wait Until Element Is Visible    ${button SchoolQueryInfo}

    SeleniumLibrary.Click Element    ${button SchoolQueryInfo}
    SeleniumLibrary.Wait Until Element Is Visible    ${button SchoolQueryInfo-kindergarten}
    SeleniumLibrary.Wait Until Element Is Visible    ${button SchoolQueryInfo-priSchool}
    SeleniumLibrary.Wait Until Element Is Visible    ${button SchoolQueryInfo-secSchool}
    SeleniumLibrary.Wait Until Element Is Visible    ${button SchoolQueryInfo-postSecSchool}
    SeleniumLibrary.Wait Until Element Is Visible    ${button close school query}
    SeleniumLibrary.Click Element    ${button close school query}

    SeleniumLibrary.Wait Until Element Is Not Visible    ${button SchoolQueryInfo-kindergarten}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button SchoolQueryInfo-priSchool}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button SchoolQueryInfo-secSchool}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button SchoolQueryInfo-postSecSchool}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${button close school query}

    SeleniumLibrary.Wait Until Element Is Visible    ${button Medical}
    SeleniumLibrary.Wait Until Element Is Visible    ${button HawkerCentres}
    SeleniumLibrary.Wait Until Element Is Visible    ${button btn2D3D}
    SeleniumLibrary.Wait Until Element Is Visible    ${button drawTools}

    SeleniumLibrary.Click Element    ${button drawTools}
    SeleniumLibrary.Wait Until Element Is Not Visible  ${button drawTools}
    SeleniumLibrary.Wait Until Element Is Visible    ${button drawTools-drawLine}
    SeleniumLibrary.Wait Until Element Is Visible    ${button drawTools-drawPolygon}
    SeleniumLibrary.Wait Until Element Is Visible    ${button drawTools-deleteDraw}
    SeleniumLibrary.Wait Until Element Is Visible    ${button drawTools-closeDrawTray}
    SeleniumLibrary.Click Element    ${button drawTools-closeDrawTray}
    
    SeleniumLibrary.Wait Until Element Is Visible    ${button shareview}
    SeleniumLibrary.Wait Until Element Is Visible    ${button zoom-in}
    SeleniumLibrary.Wait Until Element Is Visible    ${button zoom-out}

Search on map
    [Tags]    Search on map
    [Documentation]    Search on map
    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Input Text    ${field input-search}    ${community - 1}
    SeleniumLibrary.Wait Until Element Is Visible    ${search drop down}
    SeleniumLibrary.Click Element    ${search drop down}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoboxwrapper"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoHeader"]/img[@id="markerInfoClose"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="markerInfoboxwrapper"]

    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Input Text    ${field input-search}    ${community - 2}
    SeleniumLibrary.Wait Until Element Is Visible    ${search drop down}
    SeleniumLibrary.Click Element    ${search drop down}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoboxwrapper"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoHeader"]/img[@id="markerInfoClose"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="markerInfoboxwrapper"]

    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Input Text    ${field input-search}    ${community - 3}
    SeleniumLibrary.Wait Until Element Is Visible    ${search drop down}
    SeleniumLibrary.Click Element    ${search drop down}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoboxwrapper"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoHeader"]/img[@id="markerInfoClose"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="markerInfoboxwrapper"]

    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Input Text    ${field input-search}    ${community - 4}
    SeleniumLibrary.Wait Until Element Is Visible    ${search drop down}
    SeleniumLibrary.Click Element    ${search drop down}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoboxwrapper"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoHeader"]/img[@id="markerInfoClose"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="markerInfoboxwrapper"]

    SeleniumLibrary.Wait Until Element Is Visible    ${field input-search}
    SeleniumLibrary.Input Text    ${field input-search}    ${community - 5}
    SeleniumLibrary.Wait Until Element Is Visible    ${search drop down}
    SeleniumLibrary.Click Element    ${search drop down}
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoboxwrapper"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoPos"]/img[@alt="Share"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="copyNotification2"]
    SeleniumLibrary.Click Element    xpath=//div[@id="markerInfoHeader"]/img[@id="markerInfoClose"]
    SeleniumLibrary.Wait Until Element Is Not Visible    xpath=//div[@id="markerInfoboxwrapper"]


*** Keywords ***
Open browser in Incognito Mode
    [Arguments]    ${url}

    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --incognito

    ${prefs}=    Create Dictionary
    ...    profile.default_content_setting_values.geolocation=1
    ...    profile.default_content_setting_values.notifications=2
    ...    profile.default_content_setting_values.media_stream_camera=2
    ...    profile.default_content_setting_values.media_stream_mic=2
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
    Open Browser    ${url}    Chrome    options=${chrome_options}