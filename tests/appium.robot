*** Settings ***
Library         AppiumLibrary     run_on_failure=Capture Page Screenshot
Library         String


*** Variable ***
${appium_host} =  http://127.0.0.1:4723/wd/hub
${platform_name} =  Android
${platformVersion} =  8.0
${udid} =  H2AZCY03D644YVH
${appPackage} =  com.kariyer.androidproject
${appActivity} =  com.kariyer.androidproject.ui.login.LoginActivity


${register} =  com.kariyer.androidproject:id/txt_register
${name} =  com.kariyer.androidproject:id/name
${surname} =  com.kariyer.androidproject:id/surname
${email} =  com.kariyer.androidproject:id/email
${password} =  com.kariyer.androidproject:id/password
${agreement} =  com.kariyer.androidproject:id/serviceAgreementChoice
${confirm_contract} =  com.kariyer.androidproject:id/confirm_contract
${permission} =  com.kariyer.androidproject:id/contact_permission
${start} =  com.kariyer.androidproject:id/start
${btn_no} =  com.kariyer.androidproject:id/btnNo
${skip} =  com.kariyer.androidproject:id/skip
${nav_jobsearch} =  com.kariyer.androidproject:id/navigation_jobsearch
*** Test Cases ***
App_Test_1
    [Documentation]    Test case to understand robotframework with appium
    [Tags]  test
    Open Application  ${appium_host}   platformName=${platform_name}   platformVersion=${platformVersion}   deviceName=${udid}   appPackage=${appPackage}   appActivity=${appActivity}   udid=${udid}
    Capture Page Screenshot

    click element     ${register}
    element should be visible  ${name}
    input text      ${name}  test
    input text  ${surname}  testrf
    input text  ${email}  test553355574963521444@test.com
    input text  ${password}  test123.T!testT456565
    click element  ${agreement}
    wait until element is visible  ${confirm_contract}
    click element  ${confirm_contract}
    wait until element is visible  ${permission}
    click element  ${permission}
    wait until element is visible  ${register}
    click element     ${register}
     wait until element is visible  ${confirm_contract}
    click element  ${confirm_contract}
    wait until element is visible  ${start}
    click element  ${start}
    wait until element is visible  ${btn_no}
    click element  ${btn_no}
    wait until element is visible  ${skip}
    click element  ${skip}
    wait until element is visible  ${skip}
    click element  ${skip}
    wait until element is visible  ${skip}
    click element  ${skip}
    wait until element is visible  ${skip}
    click element  ${skip}
    element should be visible  ${nav_jobsearch}








    Capture Page Screenshot