-optimizationpasses 5
-dontskipnonpubliclibraryclasses
-dontpreverify
-dontobfuscate
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Fragment
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

-keepclasseswithmembers class * {
	public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
	public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
	public static **[] values();
	public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# android-support
-dontwarn android.support.v4.**

# bitcoinj
-keep class org.bitcoinj.wallet.Protos$** { *; }
-keep class org.bitcoin.protocols.payments.Protos$** { *; }

# Guava
-dontwarn com.google.common.collect.MinMaxPriorityQueue

# logback-android
-dontwarn javax.mail.**

# Ignore all warnings
-ignorewarnings
