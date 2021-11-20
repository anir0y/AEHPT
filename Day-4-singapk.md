# Making a Code Signing Certificate

`keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000`

## Signing the APK

On Kali, execute this command:

`jarsigner -sigalg SHA1withRSA \
-digestalg SHA1 -keystore my-release-key.keystore \
bask.apk singed.apk

