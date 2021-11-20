# Application Security Features by Android Operating System

## Android Permission Model

By default there are some Protected API’s in the Android Opertating System which can only be accessed by Operating System. The Protected APIs include

* Camera functions
* Location data (GPS)
* Bluetooth functions
* Telephony functions
* SMS/MMS functions
* Network/data connections

If a particular application needs access to any of the API then it need to mention that permission in AndroidManifest.xml file. You might have observed that when installing a particular application from Google Play Store it ask for several permissions needed,if you don’t allow then app won’t install. If that user agrees to grant those permissions then Android operating system gives access to that Protected API.

Below is the Permission Dialog while installing famous Subway Surfer Game.

![game-img](https://i.imgur.com/ju3T0BA.png)

Did you ever thought ? why this game needs access to your Photos, Browsing History, User Accounts,Bookmarks,etc? Probably not but you should.

## Application Signing

* Android requires that all apps be digitally signed with a certificate before they can be installed. Android uses this certificate to identify the author of an app.

* To run application on the device ,it should be signed.When application is installed on to an device then package manager verifies that whether the application has been properly signed with the certificate in the apk file or not.

* Application can be self signed or can be signed through CA.

* Application signing ensures that one application can’t access any other application except through well-defined IPC and also that it is passed unmodified to the device.

## Application Verification

* Android 4.2 and later support application verification. Users can choose to enable “Verify Apps” and have applications evaluated by an application verifier prior to installation.
* App verification can alert the user if they try to install an app that might be harmful; if an application is especially bad, it can block installation

## Android Sandbox

Once installed on a device, each Android app lives in its own security sandbox: – The Android operating system is a multi-user Linux system in which each app is a different user.

* By default, the system assigns each app a unique Linux user ID (the ID is used only by the system and is unknown to the app). The system sets permissions for all the files in an app so that only the user ID assigned to that app can access them.

* Each process has its own virtual machine (VM), so an app’s code runs in isolation from other apps.

* By default, every app runs in its own Linux process. Android starts the process when any of the app’s components need to be executed, then shuts down the process when it’s no longer needed or when the system must recover memory for other apps.

In this way, the Android system implements the principle of least privilege, that is each app by default has access only to the components that it requires to do its work and no more. This creates a very secure environment in which an app cannot access parts of the system for which it is not having permission. As every Android app runs in its own sandbox environment and cannot affect other apps by default but two apps can have same Linux User ID and can also share the same Dalvik VM if they are signed with the same Certificates.