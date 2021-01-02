*** Settings ***
Library         AppiumLibrary     run_on_failure=Capture Page Screenshot
Library         String

#docker run --privileged -d -p 6081:6081 -p 5552:5552 -p 5553:5553 -e DEVICE="Samsung Galaxy S10" -e APPIUM=true --name android-container-v11 budtmo/docker-android-x86-11.0
*** Variable ***
${appium_host} =  http://172.17.0.2:4723/wd/hub
${platform_name} =  Android
${platformVersion} =  11
${udid} =  emulator-5554
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
    Open Application  ${appium_host}   platformName=${platform_name}   platformVersion=${platformVersion}   deviceName=${udid}   app=https://download.apkpure.com/b/APK/Y29tLmthcml5ZXIuYW5kcm9pZHByb2plY3RfMTEzXzljMTAxZjk?_fn=S2FyaXllciBuZXQgxLDFnyDEsGxhbmxhcsSxX3Y1LjMuMTBfYXBrcHVyZS5jb20uYXBr&as=454c27432e89d375f8ab6044f16217bf5ff09a68&ai=89297453&at=1609603568&_sa=ai%2Cat&k=b422a34b8d808b9c0708d55a1427387d5ff33cf0&_p=Y29tLmthcml5ZXIuYW5kcm9pZHByb2plY3Q&c=1%7CBUSINESS%7CZGV2PUthcml5ZXIubmV0JTIwWWF6JUM0JUIxbCVDNCVCMW0lMjBHZWxpJUM1JTlGdGlybWUmdD1hcGsmcz0xNTc5OTg3NyZ2bj01LjMuMTAmdmM9MTEz  appPackage=${appPackage}   appActivity=${appActivity}   udid=${udid}
    Capture Page Screenshot
    click element     ${register}
    sleep  5s
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