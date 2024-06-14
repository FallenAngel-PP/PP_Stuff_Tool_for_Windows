## Background
`SignApk.jar` is a utility used by the AOSP build process to sign builds or packages including JARs, APKs etc. with various signatures. The [SignApk.java](https://github.com/aosp-mirror/platform_build/blob/master/tools/signapk/src/com/android/signapk/SignApk.java) has been picked up from the [AOSP source tree](https://github.com/aosp-mirror) and fixed for dependencies. This project includes the JAR file along with it's dependencies packaged for those who don't have the AOSP source and would like to sign personal packages.
## Usage
The `Runme.sh` is a shell script prepared for making the JAR execution process a hair more easier for those unfamiliar with terminal commands. Nevertheless, usage of the script is revealed when you run `./Runme.sh` with no arguments. An example is shown with the test keys [testkey.pk8](https://github.com/aosp-mirror/platform_build/blob/master/target/product/security/testkey.pk8) and [testkey.x508.pem](https://github.com/aosp-mirror/platform_build/blob/master/target/product/security/testkey.x509.pem) (downloadable) from the source used to sign a sample `foo.apk`.  
  
The execution is as simple as,  
`./Runme.sh -w testkey.x509.pk8 testkey.pk8 foo.apk foo-signed.apk` on any Linux machine.  
  
Kindly note,
* `testkey.x509.pk8` and `testkey.pk8` if not in the current directory as the `Runme.sh`, would require the fully qualified path (e.g. `~/SignApk/testkey.x509.pk8`)
* `foo-signed.apk` is the signed APK that would be generated after the execution completes
## Disclaimer
This project by no means supports malicious intentions of signing third-party packages with platform signatures. You're directly responsible for your deeds - play safe and thanks!
