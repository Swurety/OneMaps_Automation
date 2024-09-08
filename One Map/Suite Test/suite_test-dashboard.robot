*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    testcase/data_maps.robot
Resource    testcase/dashboard_maps.robot

*** Test Cases ***
#============================================================================================================#
Open Browser
    [Tags]    Open Browser (Chrome)[Incognito]
    dashboard_maps.Open Browser - Incognito

TC 1 - Maps - Dashboard - Check necessary element
    [Tags]    Perform Check necessary element
    [Documentation]    Perform Check necessary element on onemaps dashboard
#================================= Generate Data ======================================#
    dashboard_maps.Test Generate random angka
    dashboard_maps.Test Get Formatted Dates
#============================= Test Dashboard Perform =================================#
    dashboard_maps.Check necessary element

TC 2 - Maps - Dashboard - Search on map
    [Tags]    Perform Check necessary element
    [Documentation]    Perform Check necessary element
#================================= Generate Data ======================================#
    dashboard_maps.Test Generate random angka
    dashboard_maps.Test Get Formatted Dates
#============================= Test Dashboard Perform =================================#
    dashboard_maps.Search on map
#============================================================================================================#

