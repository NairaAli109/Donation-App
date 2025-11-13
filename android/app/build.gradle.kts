plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin") // Flutter Gradle plugin
}

android {
    namespace = "com.example.Fatoorah"
    compileSdk = 36 // أو flutter.compileSdkVersion

    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {
        applicationId = "com.example.Fatoorah"
        minSdk = 28 // أو flutter.minSdkVersion
        targetSdk = 36 // أو flutter.targetSdkVersion
        versionCode = 1 // أو flutter.versionCode
        versionName = "1.0" // أو flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // مثال لإضافة مكتبة AAR:
//     implementation(files("libs/nearpay-sdk.aar"))
}
