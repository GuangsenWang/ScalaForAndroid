# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/Guangsen/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontwarn **$$anonfun$*
-dontwarn scala.beans.ScalaBeanInfo
-dontwarn scala.collection.generic.GenTraversableFactory
-dontwarn scala.collection.immutable.RedBlack$Empty
-dontwarn scala.concurrent.forkjoin.**
-dontwarn scala.reflect.**
-dontwarn scala.sys.process.**
-dontwarn scala.swing.**
-dontwarn scala.concurrent.**
-dontwarn scala.tools.**,plugintemplate.**

-dontnote org.xml.sax.EntityResolver

-keep class scala.collection.SeqLike {
    public protected *;
}

-dontnote org.apache.james.mime4j.storage.DefaultStorageProvider

-dontwarn sun.misc.Unsafe

-dontobfuscate
-dontoptimize
-dontpreverify

-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers

-dontnote scala.Enumeration

-dontnote org.xml.sax.EntityResolver

-dontnote org.apache.james.mime4j.storage.DefaultStorageProvider

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,Annotation,EnclosingMethod

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepattributes Signature
-dontwarn scala.collection.**


-dontwarn android.support.**
-keep class android.support.** {*;}
-keep interface android.support.** { *; }
-keepattributes InnerClasses
-dontoptimize

# # -------------------------------------------
# #  ############### volley  ###############
# # -------------------------------------------
-keep class com.android.volley.** {*;}
-keep class com.android.volley.toolbox.** {*;}
-keep class com.android.volley.Response$* { *; }
-keep class com.android.volley.Request$* { *; }
-keep class com.android.volley.RequestQueue$* { *; }
-keep class com.android.volley.toolbox.HurlStack$* { *; }
-keep class com.android.volley.toolbox.ImageLoader$* { *; }

 #==================gson===================
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.examples.android.model.** { *; }
      #==================protobuf======================
-dontwarn com.google.**
-keep class com.google.protobuf.** {*;}


-keepattributes InnerClasses
-dontoptimize

-keepattributes EnclosingMethod
-dontobfuscate


#==================okhttp3 and retrofit2===================
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okio.*

-dontwarn retrofit2.**
-dontwarn org.codehaus.mojo.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions
-keepattributes *Annotation*
-keepclasseswithmembers class * {
    @retrofit2.* <methods>;
}
-keepclasseswithmembers interface * {
    @retrofit2.* <methods>;
}
