*** Variables ***
${BROWSER}   chrome
${base_url}    https://www.onemap.gov.sg

${random_number1}
${random_number2}
${random_number3}
${random_number4}

${past_date}
${formatted_current_date}
${formatted_current_date_2}
${formatted_current_date_3}
${future_date}

${script_content}    
${excel_file_path}    D:/One Map/Automation_API/Suite Test/testcase/




#============================================================================================================#
#Heders
#============================================================================================================#
${authority}   www.onemap.gov.sg
${accept}   text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7
${accept_encoding}   gzip, deflate, br, zstd
${accept_language}   en-US,en;q=0.9,id;q=0.8,zh-CN;q=0.7,zh;q=0.6
${content_Type}    application/json
${cookie_string}    OMITN=j%3A%7B%22OMITNver%22%3A%22eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Ik9NcHVibGljZCIsImlhdCI6MTcyNTU1MTQxNCwiZXhwIjoxNzI1NTUyMDE0fQ.dwHhKnS09-V8U4xbp8BCJWPgGOdUDA6y0Q2B-lhfruzeQs-9EayPyWt9yZWPvSY_XttnqTDFPnvT6pckOxp6CXaGj0kM1d-d62FTmiIlorxg8R5bNpVHaMMO6gbd59y3KmY48fcbIFZgaM5w1rAYBkpFYd4wbWgtHnqbhr5lJRfXRoeeJvFgcOFcWnkF6Z6K8Gs0fqeDipMo4Fvlfik9pwk8n8hxycVE3wg0XTm6d0QtO0vi__XYB96NdAvErwjtElf1_d8PF1AAsrlmrlNSc33qF6qO9hOCjN3Y4OFYTXuQuElGsFERoy6_IFjftE8bCrtOTaVglFQkP3Qoo8kyuw%22%7D; _toffsuid=rB8At2bZ0yiRceyJA5tnAg==; omiApp=s%3A47cf38a9-9c58-4ebf-b913-44617096d62b.60ol1CsZBC%2FlWRLeyW16Hxzjk8O3izbh15gd%2FCeCFsI



#============================================================================================================#
#Comunity name
#============================================================================================================#
${community - 1}    Ang Mo Kio CC
${community - 2}    Bedok CC
${community - 3}    Bishan CC
${community - 4}    Bukit Batok CC
${community - 5}    Bukit Merah CC
${community - 6}    Bukit Panjang CC
${community - 7}    Bukit Timah CC
${community - 8}    Buona Vista CC
${community - 9}    Cheng San CC
${community - 10}   Chua Chu Kang CC
${community - 11}   Clementi CC
${community - 12}   Eunos CC
${community - 13}   Hougang CC
${community - 14}   Jalan Besar CC
${community - 15}   Kallang CC
${community - 16}   Marine Parade CC
${community - 17}   Marsiling CC
${community - 18}   Pasir Ris CC
${community - 19}   Punggol CC
${community - 20}   Queenstown CC
${community - 21}   Sembawang CC
${community - 22}   Sengkang CC
${community - 23}   Toa Payoh CC
${community - 24}   Woodlands CC
${community - 13}   Hougang CC
${community - 14}   Jalan Besar CC
${community - 15}   Kallang CC
${community - 16}   Marine Parade CC
${community - 17}   Marsiling CC
${community - 18}   Pasir Ris CC
${community - 19}   Punggol CC
${community - 20}   Queenstown CC
${community - 21}   Sembawang CC
${community - 22}   Sengkang CC
${community - 23}   Toa Payoh CC
${community - 24}   Woodlands CC
${community - 37}   Bukit Panjang CC
${community - 38}   Bukit Timah CC
${community - 39}   Buona Vista CC
${community - 40}   Brickland CO @ c/o Keat Hong CC
${community - 41}   Nee Soon Link CC
${community - 42}   Cairnhill CC
${community - 43}   Canberra CC
${community - 44}   Changi Simei CC
${community - 45}   Cheng San CC (U/C)
${community - 46}   Cheng San CC (Temp Office)
${community - 47}   Chong Pang CC (New CC-U/C)
${community - 48}   Chong Pang CC (Temp Office)
${community - 49}   Chua Chu Kang CC
${community - 50}   Ci Yuan CC
${community - 51}   Clementi CC

#============================================================================================================#
#Maps Path
#============================================================================================================#

#====================================== Comunity =========================================================#
${path_community}        /omapp/getNearbyThemeInfo
${lat_community}         1.3509595409383786
${lng_community}         103.8277526435713
${dist_community}        54505
${theme_community}       communityclubpassionwave
#=========================================================================================================#

#============================ schoolqueryInfo kindergarten ===============================================#
${path_kindergarten}        /omapp/getAllKindergartens
${lat_kindergarten}         1.3074355
${lng_kindergarten}         103.8547139
${postalcode_kindergarten}    0
${blkno_kindergarten}       0
#=========================================================================================================#

#============================== schoolqueryInfo PRIMARY  =================================================#
${path_primary}        /omapp/getAllPriSchools
${lat_primary}         1.3074355
${lng_primary}         103.8547139
${postalcode_primary}    0
${blkno_primary}       0
#=========================================================================================================#

#============================= schoolqueryInfo SECONDARY   ===============================================#
${path_secondary}        /omapp/getnearbySecSchools
${lat_secondary}         1.3074355
${lng_secondary}         103.8547139
${postalcode_secondary}    0
${blkno_secondary}       0
#=========================================================================================================#

#============================= schoolqueryInfo POST-SECONDARY ============================================#
${path_post-secondary}        /omapp/getnearbyPostSecSchools
${lat_post-secondary}         1.3074355
${lng_post-secondary}         103.8547139
${postalcode_post-secondary}    0
${blkno_post-secondary}       0
#=========================================================================================================#

#============================= schoolqueryInfo POST-SECONDARY ============================================#
${path_post-secondary}        /omapp/getnearbyPostSecSchools
${lat_post-secondary}         1.3074355
${lng_post-secondary}         103.8547139
${postalcode_post-secondary}    0
${blkno_post-secondary}       0
#=========================================================================================================#

#================================ Medical and Dental Clinics =============================================#
${path_medical}        /omapp/getNearbyThemeInfo
${lat_medical}         1.3074355
${lng_medical}         103.8547139
${dist_medical}    18538
${theme_medical}       moh_medical_dental
#=========================================================================================================#

#======================================= Hawker Centres ==================================================#
${path_hawker}        /omapp/getNearbyThemeInfo
${lat_hawker}         1.3074355
${lng_hawker}         103.8547139
${dist_hawker}    18538
${theme_hawker}       ssot_hawkercentres
#=========================================================================================================#





#============================================================================================================#
#Maps Element
#============================================================================================================#
${field input-search}    xpath=//div[@id="search-input-wrapper"]/input[@id="search_property"]
${button search}    xpath=//div[@id="search-icon"]
${button cancel search}    xpath=//div[@id="cancel-icon"]
${button route}    xpath=//div[@id="route-icon"]
${button expand menu}    xpath=//div[@class="icon-expand-menu-wrapper"]/div[@id="icon-expand-menu"]
${button expand menu-Drone Query}    xpath=//div[@class="icon-details"]/div[@id="droneInfo"]
${button expand menu-Land Betterment}    xpath=//div[@class="icon-details"]/div[@id="lbcQueryInfoBtn"]
${button expand menu-Land Query}    xpath=//div[@class="icon-details"]/div[@id="LandQueryInfo"]
${button expand menu-More Services}    xpath=//div[@class="icon-details"]/div[@id="moreSvcs"]
${button expand menu-Property}    xpath=//div[@class="icon-details"]/div[@id="propertyQueryBtn"]
${button expand menu-Select Map Styles}    xpath=//div[@class="icon-details"]/div[@id="basemapsBtn"]
${button expand menu-Shadow Analysis}    xpath=//div[@class="icon-details"]/div[@id="shadowMode"]
${button expand menu-Show Nearby}    xpath=//div[@class="icon-details"]/div[@id="nearbyQueryBtn"]
${button expand menu-Window View}    xpath=//div[@class="icon-details"]/div[@id="view360"]
${button expand menu-About}    xpath=//div[@class="icon-details"]/div[@id="aboutInfo"]
${search drop down}    xpath=//*[@id="autocom-box"]/li[1]

${button comunity}    xpath=//div[@id="Community"]
${button SchoolQueryInfo}    xpath=//div[@id="SchoolQueryInfo"]
${button SchoolQueryInfo-kindergarten}    xpath=//div[@id="schoolQuerySelectBlock"]/div[@id="kindergarten"]
${button SchoolQueryInfo-priSchool}    xpath=//div[@id="schoolQuerySelectBlock"]/div[@id="priSchool"]
${button SchoolQueryInfo-secSchool}    xpath=//div[@id="schoolQuerySelectBlock"]/div[@id="secSchool"]
${button SchoolQueryInfo-postSecSchool}    xpath=//div[@id="schoolQuerySelectBlock"]/div[@id="postSecSchool"]
${button close school query}    xpath=//div[@class="schoolQueryTitleBlock"]/img[@class="sqOptionBack"]

${button Medical}    xpath=//div[@id="Medical"]
${button HawkerCentres}    xpath=//div[@id="HawkerCentres"]
${button btn2D3D}    xpath=//div[@id="btn2D3D"]

${button drawTools}    xpath=//div[@id="drawTools"]
${button drawTools-drawLine}    xpath=//div[@id="drawToolsTray"]/div[@class="drawLine"]
${button drawTools-drawPolygon}    xpath=//div[@id="drawToolsTray"]/div[@class="drawPolygon"]
${button drawTools-deleteDraw}    xpath=//div[@id="drawToolsTray"]/div[@class="deleteDraw"]
${button drawTools-closeDrawTray}    xpath=//div[@id="drawToolsTray"]/div[@class="closeDrawTray"]

${button shareview}    xpath=//div[@id="shareview"]
${button zoom-in}    xpath=//div[@class="zoomBtnWrapper"]/img[@class="zoomInBtn"]
${button zoom-out}    xpath=//div[@class="zoomBtnWrapper"]/img[@class="zoomOutBtn"]

