# Android Application Fundamentals

Android apps are written in the Java programming language. The Android SDK tools compile your code—along with any data and resource files—into an APK: an Android package, which is an archive file with an .apk suffix. One APK file contains all the contents of an Android app and is the file that Android-powered devices use to install the app.

![img](https://i.imgur.com/AS6V70w.png)

An APK file is an Archive that usually contains the following directories:

* `AndroidManifest.xml`: The AndroidManifest.xml file is the control file that tells the system what to do with all the top-level components (specifically activities, services, broadcast receivers, and content providers described below) in an application. This also specifies which permissions are required. This file may be in Android binary XML that can be converted into human-readable plaintext XML with tools such as android-apktool, or Androguard which we will cover in the upcoming post.

* `META-INF` directory:

	* `MANIFEST.MF`: the Manifest File
	* `CERT.RSA`: The certificate of the application.
	* `CERT.SF`: The list of resources and SHA-1 digest of the corresponding lines in the MANIFEST.MF file.

* `lib`: the directory containing the compiled code that is specific to a software layer of a processor, the directory is split into more directories within it
	* `armeabi`: compiled code for all ARM based processors only
	* `armeabi-v7a`: compiled code for all ARMv7 and above based processors only
	* `x86`: compiled code for X86
	* `mips`: compiled code for MIPS processors only

* `res`: the directory containing resources not compiled into resources.arsc (see below).

* `assets`: a directory containing applications assets, which can be retrieved by AssetManager

* `classes.dex`: The classes compiled in the dex file format understandable by the Dalvik virtual machine

* `resources.arsc`: a file containing precompiled resources, such as binary XML for example

## App components 

The essential building blocks of an Android app. Each component is a different point through which the system can enter your app. Not all components are actual entry points for the user and some depend on each other, but each one exists as its own entity and plays a specific role—each one is a unique building block that helps define your app’s overall behavior. You can skip the content given below if you are already familiar with them.There are following four components of app:-

### Content Provider

* Content Provider component supplies data from one application to others on request.

* You can store the data in the file system, an SQLite database, on the web, or any other persistent storage location your app can access.

* Through the content provider, other apps can query or even modify the data (if the content provider allows it).

* Content Provider is useful in cases when an app want to share data with another app.
It is much similar like databases and has four methods.

* insert()
* update()
* delete()
* query()

### Activity

To be simple an activity represents a single screen with a user interface. For Example,one activity for Login and another activity after login has been successful. It is kind of every new screen I will discuss more about it later when needed.

### Services

* A service is a component that runs in the background to perform long-running operations or to perform work for remote processes.

* A service does not provide a user interface,neither component, such as an activity, can start the service and let it run or bind to it in order to interact with it.

* For example, a service might play music in the background while the user is in a different application, or it might fetch data over the network without blocking user interaction with an activity.

### Broadcast Receiver

* A broadcast receiver is a component that responds to system-wide broadcast announcements.

* Many broadcasts originate from the system—for example, a broadcast announcing that the screen has turned off, the battery is low, or a picture was captured.

* Apps can also initiate broadcasts—for example, to let other apps know that some data has been downloaded to the device and is available for them to use.

* Although broadcast receivers don’t display a user interface, they may create a status bar notification to alert the user when a broadcast event occurs.

* More commonly, though, a broadcast receiver is just a “gateway” to other components and is intended to do a very minimal amount of work. For instance, it might initiate a service to perform some work based on the event.

* An application may register a receiver for the low battery message for example, and change its behavior based on that information.

### Activating Components

* Three of the four component types—activities, services, and broadcast receivers—are activated by an asynchronous message called an intent.

* Intents bind individual components to each other at runtime (you can think of them as the messengers that request an action from other components), whether the component belongs to your app or to other.

* In the upcoming post we will be using Drozer which uses Intents to showcase the vulnerabilities.





