*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    testcase/data_maps.robot
Resource    testcase/dashboard_maps.robot   

*** Test Cases ***
#============================================================================================================#
Maps - API - Get Data Community Data
    [Tags]    Perform GET request Community Data
    [Documentation]    Perform GET request to retrieve Community Data
#============================= Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get Community Data



Maps - API - Get Data schoolqueryInfo kindergarten
    [Tags]    Perform GET request schoolqueryInfo kindergarten
    [Documentation]    Perform GET request to retrieve schoolqueryInfo kindergarten
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get schoolqueryInfo kindergarten



Maps - API - Get Data schoolqueryInfo primary
    [Tags]    Perform GET request schoolqueryInfo primary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo primary
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get schoolqueryInfo primary



Maps - API - Get Data schoolqueryInfo secondary
    [Tags]    Perform GET request schoolqueryInfo secondary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo secondary
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get schoolqueryInfo secondary



Maps - API - Get Data schoolqueryInfo post-secondary
    [Tags]    Perform GET request schoolqueryInfo post-secondary
    [Documentation]    Perform GET request to retrieve schoolqueryInfo post-secondary
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get schoolqueryInfo post-secondary



Maps - API - Get Data medical and dental clinics
    [Tags]    Perform GET request medical and dental clinics
    [Documentation]    Perform GET request to retrieve medical and dental clinics
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get medical and dental clinics



Maps - API - Get Data hawker centres
    [Tags]    Perform GET request hawker centres
    [Documentation]    Perform GET request to retrieve hawker centres
#============================== Generate Data =================================#
    data_maps.Test Generate random angka
    data_maps.Test Get Formatted Dates
#============================= Get Data  Test =================================#
    data_maps.Get hawker centres


#============================================================================================================#