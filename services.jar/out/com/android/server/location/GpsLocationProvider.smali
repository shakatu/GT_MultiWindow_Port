.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$7;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$Vendor;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0xa

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field public static final APN_CTWAP:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DB_ID:Ljava/lang/String; = "_id"

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x7

.field private static final DOWNLOAD_XTRA_DATA_COMPLETED:I = 0x8

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_COMPLETED:I = 0x6

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xc

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field public static final SERVER_PORT:I = 0x1c6b

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x9

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static isActive:Z


# instance fields
.field private ktPositionMode:I

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:I

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataStarted:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGnssUsed:[I

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimeStarted:Z

.field private mIsKtGps:Z

.field private mIsNIstarted:Z

.field private mIsSKAF:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field private mProperties:Ljava/util/Properties;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTrackingafterSingleShot:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mXtraData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 205
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PREFERAPN_URI:Landroid/net/Uri;

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->isActive:Z

    .line 2465
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 15
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const v11, 0x3000000a

    const/4 v10, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 516
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mIsSKAF:Z

    .line 192
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    .line 195
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    .line 210
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    .line 214
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 217
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 240
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 241
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 244
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    .line 250
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 253
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 256
    const/16 v6, 0x3e8

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 259
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 271
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 273
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 279
    const-string v6, "STANDALONE"

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    .line 280
    const-string v6, "supl.google.com"

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    .line 281
    const/16 v6, 0x1c6c

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    .line 282
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    .line 283
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    .line 284
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    .line 296
    new-instance v6, Landroid/location/Location;

    const-string v7, "gps"

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 297
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 298
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 305
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 316
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 338
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 349
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 400
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 2149
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$6;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2455
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2456
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2457
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2458
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2459
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2460
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    .line 2463
    const/16 v6, 0x78

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 517
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 518
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 519
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 520
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v6, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 522
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 525
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 527
    .local v4, powerManager:Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v6, v7, :cond_1af

    .line 528
    const-string v6, "GpsLocationProvider"

    invoke-virtual {v4, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 537
    :goto_d2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 539
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 540
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 541
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 543
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v6, "sms"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 546
    const-string v6, "localhost"

    const-string v7, "7275"

    invoke-virtual {v2, v6, v7}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 549
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    :try_start_126
    const-string v6, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_12b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_126 .. :try_end_12b} :catch_1cb

    .line 556
    :goto_12b
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 561
    const-string v6, "batteryinfo"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 563
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 565
    :try_start_14d
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 567
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 568
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 570
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 571
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, portString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_175} :catch_1ef

    if-eqz v6, :cond_17f

    if-eqz v3, :cond_17f

    .line 574
    :try_start_179
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_17f
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_17f} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17f} :catch_1ef

    .line 580
    :cond_17f
    :goto_17f
    :try_start_17f
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 581
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 582
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_193} :catch_1ef

    if-eqz v6, :cond_19d

    if-eqz v3, :cond_19d

    .line 584
    :try_start_197
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_19d
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_19d} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19d} :catch_1ef

    .line 594
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_19d
    :goto_19d
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 595
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 598
    :goto_1a9
    :try_start_1a9
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1ae
    .catch Ljava/lang/InterruptedException; {:try_start_1a9 .. :try_end_1ae} :catch_212

    .line 604
    return-void

    .line 530
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_1af
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v6, v7, :cond_1c1

    .line 531
    const-string v6, "GpsLocationProvider"

    invoke-virtual {v4, v11, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_d2

    .line 534
    :cond_1c1
    const-string v6, "GpsLocationProvider"

    invoke-virtual {v4, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_d2

    .line 553
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    :catch_1cb
    move-exception v0

    .line 554
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Malformed SUPL init mime type"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    .line 575
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1d5
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_1d6
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse SUPL_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1ee} :catch_1ef

    goto :goto_17f

    .line 589
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_1ef
    move-exception v0

    .line 590
    .local v0, e:Ljava/io/IOException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    .line 585
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1f8
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_1f9
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse C2K_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_211} :catch_1ef

    goto :goto_19d

    .line 600
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_212
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1a9
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/GpsLocationProvider;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTimeCompleted(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraDataCompleted()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3072(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3110(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->setServer(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 454
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 455
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_39

    .line 456
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 458
    .local v2, supl_init:[B
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v3, v4, :cond_20

    .line 460
    const-string v3, "GpsLocationProvider"

    const-string v4, "checkSmsSuplInit : mIsNIstarted =true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 463
    :cond_20
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v3, v4, :cond_32

    .line 464
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setSktSuplVer()V

    .line 466
    const-string v3, "GpsLocationProvider"

    const-string v4, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_32
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 471
    .end local v2           #supl_init:[B
    :cond_39
    return-void
.end method

.method private checkUDPSuplInit()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 629
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->isActive:Z

    if-ne v1, v2, :cond_6

    .line 665
    :goto_5
    return-void

    .line 633
    :cond_6
    sput-boolean v2, Lcom/android/server/location/GpsLocationProvider;->isActive:Z

    .line 634
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 664
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 474
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 477
    .local v2, supl_init:[B
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v3, v4, :cond_6f

    .line 479
    const-string v3, "GpsLocationProvider"

    const-string v4, "checkWapSuplInit : mIsNIstarted =true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 482
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "agps_function_switch"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 483
    .local v1, isAgpsSwitchMode:I
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-ne v1, v6, :cond_65

    .line 485
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_5d

    .line 486
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 487
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 488
    const-string v3, "GpsLocationProvider"

    const-string v4, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #isAgpsSwitchMode:I
    :goto_5c
    return-void

    .line 492
    .restart local v1       #isAgpsSwitchMode:I
    :cond_5d
    const-string v3, "GpsLocationProvider"

    const-string v4, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 495
    :cond_65
    const/4 v3, 0x2

    if-ne v1, v3, :cond_86

    .line 496
    const-string v3, "GpsLocationProvider"

    const-string v4, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v1           #isAgpsSwitchMode:I
    :cond_6f
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v3, v4, :cond_81

    .line 505
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setSktSuplVer()V

    .line 506
    const-string v3, "GpsLocationProvider"

    const-string v4, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_81
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    goto :goto_5c

    .line 498
    .restart local v1       #isAgpsSwitchMode:I
    :cond_86
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "extras"

    .prologue
    .line 1600
    if-nez p1, :cond_c

    .line 1601
    const v0, 0xffff

    .line 1619
    .local v0, flags:I
    :cond_5
    :goto_5
    if-eqz v0, :cond_95

    .line 1620
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1621
    const/4 v1, 0x1

    .line 1624
    :goto_b
    return v1

    .line 1603
    .end local v0           #flags:I
    :cond_c
    const/4 v0, 0x0

    .line 1604
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x1

    .line 1605
    :cond_17
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 1606
    :cond_21
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 1607
    :cond_2b
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 1608
    :cond_35
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    or-int/lit8 v0, v0, 0x10

    .line 1609
    :cond_3f
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v0, v0, 0x20

    .line 1610
    :cond_49
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 1611
    :cond_53
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 1612
    :cond_5d
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 1613
    :cond_67
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    or-int/lit16 v0, v0, 0x200

    .line 1614
    :cond_71
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x400

    .line 1615
    :cond_7b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1616
    :cond_87
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_5

    .line 1624
    :cond_95
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method private extCtcSelectPositionMode(Z)I
    .registers 10
    .parameter "singleShot"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1157
    const-string v3, "GpsLocationProvider"

    const-string v4, "extCTCSelectPositionMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, ctcPositionMode:I
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1161
    .local v2, roamingInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    if-eqz v3, :cond_20

    .line 1162
    const-string v3, "GpsLocationProvider"

    const-string v4, "Reset mTrackingafterSingleShot after MS-Assisted is fixed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v0, 0x0

    .line 1164
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    .line 1228
    :cond_1f
    :goto_1f
    return v0

    .line 1166
    :cond_20
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1167
    const-string v3, "GpsLocationProvider"

    const-string v4, "Roaming, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x0

    .line 1169
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto :goto_1f

    .line 1171
    :cond_33
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->getGpsCurrentApn(Landroid/content/Context;)I

    move-result v3

    if-ne v6, v3, :cond_d3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d3

    .line 1174
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1176
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_68

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1177
    const-string v3, "GpsLocationProvider"

    const-string v4, "This is WIFI, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, 0x0

    .line 1179
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto :goto_1f

    .line 1183
    :cond_68
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v3, :cond_c7

    .line 1184
    if-eqz p1, :cond_78

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 1185
    const/4 v0, 0x2

    .line 1186
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto :goto_1f

    .line 1189
    :cond_78
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mAGpsDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Tracking Mode after MS-Assisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->getGpsCurrentApn(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1192
    const/4 v0, 0x2

    .line 1193
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto/16 :goto_1f

    .line 1198
    :cond_c7
    const-string v3, "GpsLocationProvider"

    const-string v4, "There is no Data Connection, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v0, 0x0

    .line 1200
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto/16 :goto_1f

    .line 1207
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_d3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1209
    .restart local v1       #info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_f3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 1210
    const-string v3, "GpsLocationProvider"

    const-string v4, "This is WIFI, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x0

    .line 1212
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto/16 :goto_1f

    .line 1214
    :cond_f3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->getGpsCurrentApn(Landroid/content/Context;)I

    move-result v3

    if-ne v6, v3, :cond_112

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v3, :cond_112

    .line 1215
    const-string v3, "GpsLocationProvider"

    const-string v4, "Start MS-Based GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1217
    const/4 v0, 0x1

    .line 1218
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto/16 :goto_1f

    .line 1222
    :cond_112
    const-string v3, "GpsLocationProvider"

    const-string v4, "There is no Data Connection, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v0, 0x0

    .line 1224
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    goto/16 :goto_1f
.end method

.method private extSelectPositionMode(Z)I
    .registers 12
    .parameter "singleShot"

    .prologue
    const/16 v3, 0xd

    const/4 v9, 0x2

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1053
    const-string v0, "GpsLocationProvider"

    const-string v2, "extSelectPositionMode()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assisted_gps_enabled"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_129

    .line 1055
    if-eqz p1, :cond_51

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1056
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    if-eqz v0, :cond_3e

    .line 1057
    const-string v0, "GpsLocationProvider"

    const-string v2, "KT GPS mode : SUPL2.0 MSA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1064
    :goto_39
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1127
    :cond_3b
    :goto_3b
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    return v0

    .line 1061
    :cond_3e
    const-string v0, "GpsLocationProvider"

    const-string v1, "Non KT GPS mode : SUPL1.0 MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object v0, p0

    move v1, v8

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_39

    .line 1065
    :cond_51
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1066
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1067
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1070
    .local v7, phone:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v2, :cond_a5

    .line 1071
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1073
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setSktSuplVer()V

    .line 1074
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_3b

    .line 1075
    :cond_77
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_90

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSKAFEnable()Z

    move-result v0

    if-nez v0, :cond_90

    .line 1078
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1079
    const-string v0, "GpsLocationProvider"

    const-string v1, "extSelectPositionMode : LTO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_3b

    .line 1083
    :cond_90
    const-string v0, "GpsLocationProvider"

    const-string v1, "extSelectPositionMode : AGPS_TYPE_SUPL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object v0, p0

    move v1, v8

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1086
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_3b

    .line 1088
    :cond_a5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v2, :cond_ba

    .line 1090
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1091
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_agps_xtra_set(1) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_3b

    .line 1093
    :cond_ba
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v2, :cond_11e

    .line 1094
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v3, :cond_ef

    .line 1095
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    if-eqz v0, :cond_e1

    .line 1096
    const-string v0, "GpsLocationProvider"

    const-string v2, "[LTE] KT GPS mode : SUPL2.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1098
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b

    .line 1101
    :cond_e1
    const-string v0, "GpsLocationProvider"

    const-string v1, "[LTE] Non KT GPS mode : LTO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1103
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b

    .line 1106
    :cond_ef
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    if-eqz v0, :cond_108

    .line 1107
    const-string v0, "GpsLocationProvider"

    const-string v2, "[3G] KT GPS mode : SUPL2.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1109
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b

    .line 1112
    :cond_108
    const-string v0, "GpsLocationProvider"

    const-string v1, "[3G] Non KT GPS mode : SUPL1.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move-object v0, p0

    move v1, v8

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1114
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b

    .line 1118
    :cond_11e
    const-string v0, "GpsLocationProvider"

    const-string v1, "extSelectPositionMode() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b

    .line 1123
    .end local v7           #phone:Landroid/telephony/TelephonyManager;
    :cond_129
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1124
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_agps_xtra_set(0) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_3b
.end method

.method public static getGpsCurrentApn(Landroid/content/Context;)I
    .registers 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1133
    const/4 v6, 0x1

    .line 1135
    .local v6, apn:I
    const-string v1, "GpsLocationProvider"

    const-string v3, "getGpsCurrentApn"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1138
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->PREFERAPN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1140
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_66

    .line 1141
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :try_start_34
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1144
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1145
    :cond_44
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] get apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_61

    .line 1147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 1152
    :goto_60
    return v1

    .line 1147
    :catchall_61
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1152
    :cond_66
    const/4 v1, -0x1

    goto :goto_60
.end method

.method private getSKAFEnable()Z
    .registers 4

    .prologue
    .line 1033
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsSKAF:Z

    return v0
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2408
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2409
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2411
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2414
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2d

    .line 2416
    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2417
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result-object v6

    .line 2420
    :cond_2a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2423
    :cond_2d
    return-object v6

    .line 2420
    :catchall_2e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;
    .registers 3

    .prologue
    .line 991
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 993
    :cond_e
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    :cond_14
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

    .line 997
    .local v1, vendor:Lcom/android/server/location/GpsLocationProvider$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 998
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;

    .line 1024
    :cond_20
    :goto_20
    return-object v1

    .line 999
    :cond_21
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1000
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1001
    :cond_2c
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1002
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1003
    :cond_37
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1004
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1005
    :cond_42
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1006
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1007
    :cond_4d
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1008
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1009
    :cond_58
    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1010
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1011
    :cond_63
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1012
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1013
    :cond_6e
    const-string v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1014
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1015
    :cond_79
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1016
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1017
    :cond_84
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1018
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1019
    :cond_8f
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1020
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 1021
    :cond_9a
    const-string v2, "CHN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1022
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto/16 :goto_20
.end method

.method private handleAddListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1470
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_25

    .line 1472
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    monitor-exit v2

    .line 1484
    :goto_24
    return-void

    .line 1475
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_36

    if-eqz v1, :cond_34

    .line 1478
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_39

    .line 1483
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v2

    goto :goto_24

    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v1

    .line 1479
    :catch_39
    move-exception v0

    .line 1480
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3a
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_36

    goto :goto_34
.end method

.method private handleDisable()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1309
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleDisable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v1, :cond_d

    .line 1332
    :goto_c
    return-void

    .line 1312
    :cond_d
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v1, v2, :cond_17

    .line 1314
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    .line 1317
    :cond_17
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1320
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDisable() : mStarted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    .line 1322
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleDisable() : send an intent to notify that the GPS has been disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1325
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1328
    .end local v0           #intent:Landroid/content/Intent;
    :cond_50
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1331
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    goto :goto_c
.end method

.method private handleDownloadXtraData()V
    .registers 2

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_5

    .line 818
    :goto_4
    return-void

    .line 810
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 811
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$5;->start()V

    goto :goto_4
.end method

.method private handleDownloadXtraDataCompleted()V
    .registers 6

    .prologue
    const/4 v3, 0x7

    .line 821
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 822
    const/4 v0, 0x1

    .line 823
    .local v0, retry:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    if-eqz v1, :cond_19

    .line 830
    const-string v1, "GpsLocationProvider"

    const-string v2, "calling native_inject_xtra_data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 833
    const/4 v0, 0x0

    .line 835
    :cond_19
    if-eqz v0, :cond_2e

    .line 838
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 841
    :cond_2e
    return-void
.end method

.method private handleEnable()V
    .registers 14

    .prologue
    const/16 v3, 0x1c6b

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1234
    const-string v0, "GpsLocationProvider"

    const-string v4, "handleEnable"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_10

    .line 1295
    :cond_f
    :goto_f
    return-void

    .line 1236
    :cond_10
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1238
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_c9

    .line 1239
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1240
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 1241
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    if-ne v0, v1, :cond_41

    .line 1242
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1289
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1290
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_f

    .line 1245
    :cond_41
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 1246
    const-string v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1247
    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 1248
    const-string v0, "GpsLocationProvider"

    const-string v4, "Set A-GPS server."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_54
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_d2

    .line 1284
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_34

    .line 1252
    :pswitch_6b
    const-string v2, "lbs.geo.t-mobile.com"

    move-object v0, p0

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_34

    .line 1255
    :pswitch_74
    const/4 v2, 0x0

    .line 1256
    .local v2, suplServerAutoConfig:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1257
    if-eqz v2, :cond_82

    move-object v0, p0

    move v4, v1

    move v6, v5

    .line 1258
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_34

    .line 1260
    :cond_82
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_34

    .line 1264
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_8a
    const-string v8, "dcm-supl.com"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_34

    .line 1267
    :pswitch_96
    const-string v8, "supl.telusmobility.com"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_34

    .line 1270
    :pswitch_a2
    const-string v8, "supl.wireless.bell.ca"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_34

    .line 1273
    :pswitch_ae
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_34

    .line 1276
    :pswitch_b7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setSktSuplVer()V

    goto/16 :goto_34

    .line 1280
    :pswitch_bc
    const-string v8, "221.176.0.55"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_34

    .line 1293
    :cond_c9
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1250
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_74
        :pswitch_8a
        :pswitch_96
        :pswitch_a2
        :pswitch_ae
        :pswitch_b7
        :pswitch_bc
    .end packed-switch
.end method

.method private handleEnableLocationTracking(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1368
    if-eqz p1, :cond_d

    .line 1369
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1371
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1385
    :goto_c
    return-void

    .line 1373
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1374
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1375
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1378
    :cond_22
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_2c

    .line 1380
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    .line 1383
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_c
.end method

.method private handleInjectNtpTime()V
    .registers 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_5

    .line 773
    :goto_4
    return-void

    .line 759
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 760
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$4;->start()V

    goto :goto_4
.end method

.method private handleInjectNtpTimeCompleted(Z)V
    .registers 15
    .parameter "success"

    .prologue
    const/4 v12, 0x5

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 777
    if-eqz p1, :cond_3b

    .line 778
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 779
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 780
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 781
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 791
    .local v10, now:J
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 796
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    :goto_21
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_3a

    .line 799
    if-eqz p1, :cond_43

    const-wide/32 v8, 0x5265c00

    .line 800
    .local v8, delay:J
    :goto_2a
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 803
    .end local v8           #delay:J
    :cond_3a
    return-void

    .line 793
    :cond_3b
    const-string v0, "GpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 799
    :cond_43
    const-wide/32 v8, 0x493e0

    goto :goto_2a
.end method

.method private handleRemoveListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    .line 1498
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1499
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_25

    .line 1501
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    monitor-exit v2

    .line 1513
    :goto_24
    return-void

    .line 1504
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1505
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_35

    if-eqz v1, :cond_33

    .line 1507
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_38

    .line 1512
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v2

    goto :goto_24

    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v1

    .line 1508
    :catch_38
    move-exception v0

    .line 1509
    .local v0, e:Landroid/os/RemoteException;
    :try_start_39
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_35

    goto :goto_33
.end method

.method private handleRequestSingleShot()V
    .registers 3

    .prologue
    .line 1401
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1404
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 853
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 856
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 13
    .parameter "state"
    .parameter "info"

    .prologue
    .line 702
    const/4 v0, 0x2

    if-ne p1, v0, :cond_cc

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 705
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_cf

    const-string v0, "available"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    if-eqz p2, :cond_6a

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_6a

    .line 710
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d3

    const/4 v8, 0x1

    .line 712
    .local v8, dataEnabled:Z
    :goto_45
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d6

    if-eqz v8, :cond_d6

    const/4 v4, 0x1

    .line 713
    .local v4, networkAvailable:Z
    :goto_4e
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_56

    .line 715
    const-string v6, "dummy-apn"

    .line 718
    :cond_56
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v8           #dataEnabled:Z
    :cond_6a
    if-eqz p2, :cond_cb

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_cb

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cb

    .line 725
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, apnName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_d9

    .line 727
    if-nez v7, :cond_84

    .line 730
    const-string v7, "dummy-apn"

    .line 732
    :cond_84
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 733
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_be

    .line 736
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v9

    .line 739
    .local v9, route_result:Z
    if-nez v9, :cond_be

    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v9           #route_result:Z
    :cond_be
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 752
    .end local v7           #apnName:Ljava/lang/String;
    :cond_cb
    :goto_cb
    return-void

    .line 702
    :cond_cc
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 705
    :cond_cf
    const-string v0, "unavailable"

    goto/16 :goto_19

    .line 710
    :cond_d3
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 712
    .restart local v8       #dataEnabled:Z
    :cond_d6
    const/4 v4, 0x0

    goto/16 :goto_4e

    .line 745
    .end local v8           #dataEnabled:Z
    .restart local v7       #apnName:Ljava/lang/String;
    :cond_d9
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 748
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_cb
.end method

.method private hasCapability(I)Z
    .registers 3
    .parameter "capability"

    .prologue
    .line 1774
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hibernate()V
    .registers 9

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1766
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1767
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1769
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1771
    return-void
.end method

.method private initialize()V
    .registers 5

    .prologue
    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v1

    .line 614
    .local v1, vendor:Lcom/android/server/location/GpsLocationProvider$Vendor;
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v1, v2, :cond_22

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v1, v2, :cond_25

    .line 615
    :cond_22
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->checkUDPSuplInit()V

    .line 618
    :cond_25
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v2, v3, :cond_4f

    .line 619
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 623
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    :cond_4f
    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 513
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 957
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 958
    .local v3, szUrl:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 959
    .local v4, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, SimOperator:Ljava/lang/String;
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_84

    .line 962
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 963
    .local v1, mcc:I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 964
    .local v2, mnc:I
    const-string v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 965
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :goto_83
    return-object v5

    :cond_84
    const/4 v5, 0x0

    goto :goto_83
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(III)V
    .registers 11
    .parameter "type"
    .parameter "status"
    .parameter "ipaddr"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2038
    packed-switch p2, :pswitch_data_da

    .line 2103
    :cond_6
    :goto_6
    return-void

    .line 2040
    :pswitch_7
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v2, v3, :cond_24

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2047
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS Disable Can\'t connect Data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2052
    :cond_24
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2053
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 2055
    .local v0, result:I
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    .line 2056
    if-nez v0, :cond_8d

    .line 2057
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 2059
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_75

    .line 2062
    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    .line 2066
    .local v1, route_result:Z
    if-nez v1, :cond_75

    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    .end local v1           #route_result:Z
    :cond_75
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 2069
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_6

    .line 2071
    :cond_7d
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2073
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2075
    :cond_8d
    if-ne v0, v5, :cond_98

    .line 2076
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2079
    :cond_98
    const-string v2, "GpsLocationProvider"

    const-string v3, "startUsingNetworkFeature failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 2081
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_6

    .line 2085
    .end local v0           #result:I
    :pswitch_a6
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_6

    .line 2087
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2089
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 2090
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto/16 :goto_6

    .line 2094
    :pswitch_bf
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2097
    :pswitch_c8
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2100
    :pswitch_d1
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2038
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a6
        :pswitch_bf
        :pswitch_c8
        :pswitch_d1
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 26
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1785
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v9

    .line 1786
    :try_start_3
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1787
    and-int/lit8 v8, p1, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1e

    .line 1788
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide v0, p2

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 1789
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1790
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1792
    :cond_1e
    and-int/lit8 v8, p1, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_af

    .line 1793
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1797
    :goto_2a
    and-int/lit8 v8, p1, 0x4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_b9

    .line 1798
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1802
    :goto_36
    and-int/lit8 v8, p1, 0x8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_c0

    .line 1803
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1807
    :goto_43
    and-int/lit8 v8, p1, 0x10

    const/16 v10, 0x10

    if-ne v8, v10, :cond_c7

    .line 1808
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1812
    :goto_50
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v10}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_b6

    .line 1815
    :try_start_57
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5f} :catch_cd

    .line 1819
    :goto_5f
    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_b6

    .line 1821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1823
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_176

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_176

    .line 1824
    iget-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1825
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFF: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1829
    :try_start_94
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1830
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9b
    if-ge v4, v7, :cond_e6

    .line 1831
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_a5
    .catchall {:try_start_94 .. :try_end_a5} :catchall_1fe

    .line 1833
    .local v6, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_a5
    iget-object v8, v6, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v8, v10}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1fe
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_ac} :catch_d6

    .line 1830
    :goto_ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 1795
    .end local v4           #i:I
    .end local v6           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v7           #size:I
    :cond_af
    :try_start_af
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_2a

    .line 1819
    :catchall_b6
    move-exception v8

    monitor-exit v9
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_b6

    throw v8

    .line 1800
    :cond_b9
    :try_start_b9
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_36

    .line 1805
    :cond_c0
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_43

    .line 1810
    :cond_c7
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAccuracy()V

    goto :goto_50

    .line 1816
    :catch_cd
    move-exception v3

    .line 1817
    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_b9 .. :try_end_d5} :catchall_b6

    goto :goto_5f

    .line 1834
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v4       #i:I
    .restart local v6       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v7       #size:I
    :catch_d6
    move-exception v3

    .line 1835
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_d7
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException in stopNavigating"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1838
    add-int/lit8 v7, v7, -0x1

    goto :goto_ac

    .line 1841
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_e6
    monitor-exit v9
    :try_end_e7
    .catchall {:try_start_d7 .. :try_end_e7} :catchall_1fe

    .line 1843
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v8, v9, :cond_176

    .line 1844
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "clock_sync_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_176

    .line 1845
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gps clock sync: CLOCK_SYNC_ENABLED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "clock_sync_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "gps:timestamp(Ms) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p11

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "currentTimeMillis:(Ms)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long v8, v8, p11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-lez v8, :cond_176

    .line 1848
    const-wide/16 v8, 0x3e8

    div-long v8, p11, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-gez v8, :cond_176

    .line 1849
    const-string v8, "GpsLocationProvider"

    const-string v9, "[GPS Time for DRM] reportLocation call setAndBroadcastGPSSetTimeForDRM"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v2, "android.intent.action.GPS_SET_TIME"

    .line 1851
    .local v2, ACTION_GPS_SET_TIME:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v5, intent:Landroid/content/Intent;
    const/high16 v8, 0x2000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1853
    const-string v8, "time"

    move-wide/from16 v0, p11

    invoke-virtual {v5, v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1854
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1855
    invoke-static/range {p11 .. p12}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1863
    .end local v2           #ACTION_GPS_SET_TIME:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #size:I
    :cond_176
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v8, :cond_17d

    .line 1864
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1867
    :cond_17d
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v8, v9, :cond_193

    .line 1869
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    if-eqz v8, :cond_193

    .line 1870
    const-string v8, "GpsLocationProvider"

    const-string v9, "MS-Assisted Fix is Success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1875
    :cond_193
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v8, :cond_1c9

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1c9

    .line 1878
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_1b1

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v9, 0xea60

    if-ge v8, v9, :cond_1b1

    .line 1879
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1883
    :cond_1b1
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1884
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1885
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1886
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1889
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1c9
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_1e4

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v8, :cond_1e4

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v9, 0x2710

    if-le v8, v9, :cond_1e4

    .line 1891
    const-string v8, "GpsLocationProvider"

    const-string v9, "got fix, hibernating"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1894
    :cond_1e4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v8, v9, :cond_1fd

    .line 1896
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTrackingafterSingleShot:Z

    if-eqz v8, :cond_1fd

    .line 1897
    const-string v8, "GpsLocationProvider"

    const-string v9, "Send ENABLE_TRACKING Message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1901
    :cond_1fd
    return-void

    .line 1841
    :catchall_1fe
    move-exception v8

    :try_start_1ff
    monitor-exit v9
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fe

    throw v8
.end method

.method private reportNmea(J)V
    .registers 12
    .parameter "timestamp"

    .prologue
    .line 2109
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2110
    :try_start_3
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2111
    .local v5, size:I
    if-lez v5, :cond_3f

    .line 2113
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 2114
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2116
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v5, :cond_3f

    .line 2117
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_41

    .line 2119
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_27
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2f

    .line 2116
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 2120
    :catch_2f
    move-exception v0

    .line 2121
    .local v0, e:Landroid/os/RemoteException;
    :try_start_30
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2124
    add-int/lit8 v5, v5, -0x1

    goto :goto_2c

    .line 2128
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_3f
    monitor-exit v7

    .line 2129
    return-void

    .line 2128
    .end local v5           #size:I
    :catchall_41
    move-exception v6

    monitor-exit v7
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_41

    throw v6
.end method

.method private reportStatus(I)V
    .registers 13
    .parameter "status"

    .prologue
    const/4 v10, 0x1

    .line 1907
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportStatus status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1910
    :try_start_1c
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1912
    .local v6, wasNavigating:Z
    packed-switch p1, :pswitch_data_fa

    .line 1929
    :goto_21
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v7

    sget-object v9, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v7, v9, :cond_50

    .line 1931
    const-string v7, "GpsLocationProvider"

    const-string v9, "reportStatus : mIsNIstarted =true,WakeLock Only NI"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    if-ne v7, v10, :cond_50

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v7, :cond_3c

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v7, :cond_50

    :cond_3c
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_50

    .line 1934
    const-string v7, "GpsLocationProvider"

    const-string v9, "Acquiring wakelock"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1939
    :cond_50
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v6, v7, :cond_f7

    .line 1940
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1941
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    if-ge v1, v4, :cond_a0

    .line 1942
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_65
    .catchall {:try_start_1c .. :try_end_65} :catchall_78

    .line 1944
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_65
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_8a

    .line 1945
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_90

    .line 1941
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 1914
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_71
    const/4 v7, 0x1

    :try_start_72
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1915
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_21

    .line 1977
    .end local v6           #wasNavigating:Z
    :catchall_78
    move-exception v7

    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_78

    throw v7

    .line 1918
    .restart local v6       #wasNavigating:Z
    :pswitch_7b
    const/4 v7, 0x0

    :try_start_7c
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_21

    .line 1921
    :pswitch_7f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_21

    .line 1924
    :pswitch_83
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1925
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_78

    goto :goto_21

    .line 1947
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_8a
    :try_start_8a
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8f} :catch_90

    goto :goto_6e

    .line 1949
    :catch_90
    move-exception v0

    .line 1950
    .local v0, e:Landroid/os/RemoteException;
    :try_start_91
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_78

    .line 1953
    add-int/lit8 v4, v4, -0x1

    goto :goto_6e

    .line 1959
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_a0
    :try_start_a0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_a8
    if-ltz v1, :cond_ca

    .line 1960
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1961
    .local v5, uid:I
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_bc

    .line 1962
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1959
    :goto_b9
    add-int/lit8 v1, v1, -0x1

    goto :goto_a8

    .line 1964
    :cond_bc
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_c1
    .catchall {:try_start_a0 .. :try_end_c1} :catchall_78
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_c1} :catch_c2

    goto :goto_b9

    .line 1967
    .end local v5           #uid:I
    :catch_c2
    move-exception v0

    .line 1968
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_c3
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_ca
    const-string v7, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send an intent to notify that the GPS has been enabled or disabled mNavigating = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "enabled"

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1975
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1977
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_f7
    monitor-exit v8
    :try_end_f8
    .catchall {:try_start_c3 .. :try_end_f8} :catchall_78

    .line 1978
    return-void

    .line 1912
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_71
        :pswitch_7b
        :pswitch_7f
        :pswitch_83
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 18

    .prologue
    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I[I)I

    move-result v2

    .line 1987
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1988
    :try_start_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1989
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2e
    if-ge v12, v15, :cond_7d

    .line 1990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_de

    .line 1992
    .local v14, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_3a
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    invoke-interface/range {v1 .. v10}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII[I)V
    :try_end_68
    .catchall {:try_start_3a .. :try_end_68} :catchall_de
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_68} :catch_6b

    .line 1989
    :goto_68
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    .line 1995
    :catch_6b
    move-exception v11

    .line 1996
    .local v11, e:Landroid/os/RemoteException;
    :try_start_6c
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1999
    add-int/lit8 v15, v15, -0x1

    goto :goto_68

    .line 2002
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v14           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_7d
    monitor-exit v16
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_de

    .line 2021
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2023
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_dd

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_dd

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_dd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_dd

    .line 2026
    const-string v1, "GpsLocationProvider"

    const-string v3, "send an intent to notify that the GPS is no longer receiving fixes"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2028
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2030
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2032
    .end local v13           #intent:Landroid/content/Intent;
    :cond_dd
    return-void

    .line 2002
    .end local v12           #i:I
    .end local v15           #size:I
    :catchall_de
    move-exception v1

    :try_start_df
    monitor-exit v16
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v1
.end method

.method private requestRefLocation(I)V
    .registers 12
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    .line 2282
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2284
    .local v9, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 2285
    .local v7, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v7, :cond_6c

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_6c

    .line 2287
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2288
    .local v2, mcc:I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2289
    .local v3, mnc:I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 2291
    .local v8, networkType:I
    if-eq v8, v5, :cond_52

    const/16 v0, 0x8

    if-eq v8, v0, :cond_52

    const/16 v0, 0x9

    if-eq v8, v0, :cond_52

    const/16 v0, 0xf

    if-eq v8, v0, :cond_52

    const/16 v0, 0xa

    if-ne v8, v0, :cond_6d

    .line 2296
    :cond_52
    const/4 v1, 0x2

    .line 2303
    .local v1, type:I
    :goto_53
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v4, :cond_5c

    .line 2304
    const/4 v1, 0x1

    .line 2307
    :cond_5c
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIIII)V

    .line 2310
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v8           #networkType:I
    :cond_6c
    return-void

    .line 2297
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v8       #networkType:I
    :cond_6d
    const/16 v0, 0xd

    if-ne v8, v0, :cond_73

    .line 2298
    const/4 v1, 0x4

    .restart local v1       #type:I
    goto :goto_53

    .line 2300
    .end local v1           #type:I
    :cond_73
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_53
.end method

.method private requestSetID(I)V
    .registers 8
    .parameter "flags"

    .prologue
    .line 2240
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2242
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2243
    .local v3, type:I
    const-string v0, ""

    .line 2245
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 2246
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2247
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 2265
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2266
    return-void

    .line 2251
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1c
    move-object v0, v1

    .line 2252
    const/4 v3, 0x1

    goto :goto_18

    .line 2255
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_1f
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 2256
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2257
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 2261
    move-object v0, v1

    .line 2262
    const/4 v3, 0x2

    goto :goto_18
.end method

.method private requestUtcTime()V
    .registers 4

    .prologue
    .line 2273
    const-string v0, "GpsLocationProvider"

    const-string v1, "requestUtcTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2275
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 8
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2314
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2315
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 2316
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v1, v3, :cond_17

    .line 2317
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2318
    :cond_17
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2319
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2320
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2321
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2322
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2323
    monitor-exit v2

    .line 2324
    return-void

    .line 2323
    .end local v0           #m:Landroid/os/Message;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .registers 2
    .parameter "capabilities"

    .prologue
    .line 2135
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 2136
    return-void
.end method

.method private setSKAFEnable(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mIsSKAF:Z

    .line 1029
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void
.end method

.method private setServer(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 432
    const-string v5, "GpsLocationProvider"

    const-string v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, ""

    .line 435
    .local v2, mServerAddr:Ljava/lang/String;
    const-string v3, ""

    .line 437
    .local v3, mServerPort:Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    :try_start_4b
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 446
    .local v4, stream:Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_61} :catch_62

    .line 451
    .end local v1           #file:Ljava/io/File;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :goto_61
    return-void

    .line 448
    :catch_62
    move-exception v0

    .line 449
    .local v0, e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private setSktSuplVer()V
    .registers 9

    .prologue
    const/16 v3, 0x1c6b

    const/4 v4, 0x0

    .line 1038
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1039
    .local v7, model:Ljava/lang/String;
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v0, "m0skt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1042
    const-string v0, "GpsLocationProvider"

    const-string v1, "AGPS_TYPE_SUPL_1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x1

    const-string v2, "wpde.nate.com"

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1049
    :goto_3f
    return-void

    .line 1046
    :cond_40
    const-string v0, "GpsLocationProvider"

    const-string v1, "AGPS_TYPE_SUPL_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v1, 0x3

    const-string v2, "wpde.nate.com"

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_3f
.end method

.method private startNavigating(Z)V
    .registers 13
    .parameter "singleShot"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1628
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_13d

    .line 1629
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1631
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1632
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1634
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1636
    if-eqz p1, :cond_13e

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 1637
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1642
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_95

    .line 1643
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OperationTestMode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1644
    .local v6, OperationTestMode:I
    if-nez v6, :cond_84

    .line 1645
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1646
    .local v8, isAgpsSwitchMode:I
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating SW test : isAgpsSwitchMode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    if-ne v8, v9, :cond_174

    .line 1649
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_169

    .line 1650
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1651
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_148

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1652
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1653
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v8           #isAgpsSwitchMode:I
    :cond_84
    :goto_84
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_95

    .line 1681
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : mIsNIstarted =false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 1686
    .end local v6           #OperationTestMode:I
    :cond_95
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v0, v1, :cond_a5

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_c1

    .line 1687
    :cond_a5
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1688
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating mPositionMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_c1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v0, v1, :cond_d9

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v0, v1, :cond_d9

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_f9

    .line 1692
    :cond_d9
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->extSelectPositionMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1693
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating mPositionMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_f9
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_121

    .line 1698
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->extCtcSelectPositionMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1699
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating mPositionMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_121
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1c4

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1703
    .local v3, interval:I
    :goto_129
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 1705
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1706
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .end local v3           #interval:I
    :cond_13d
    :goto_13d
    return-void

    .line 1638
    :cond_13e
    invoke-direct {p0, v10}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1639
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_2d

    .line 1656
    .restart local v6       #OperationTestMode:I
    .restart local v7       #info:Landroid/net/NetworkInfo;
    .restart local v8       #isAgpsSwitchMode:I
    :cond_148
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OperationMode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1657
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-eq v0, v9, :cond_84

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-eq v0, v10, :cond_84

    .line 1658
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1659
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : agps on only for hom network info.isRoaming() == false have not record. MS_BASED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 1663
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_169
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1664
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : agps on only for hom network PS error  STANDALONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 1666
    :cond_174
    if-ne v8, v10, :cond_1a8

    .line 1668
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OperationMode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1669
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-eq v0, v9, :cond_84

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-eq v0, v10, :cond_84

    .line 1670
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1671
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating : //agpson for all network isAgpsSwitchMode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 1674
    :cond_1a8
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1675
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 1702
    .end local v6           #OperationTestMode:I
    .end local v8           #isAgpsSwitchMode:I
    :cond_1c4
    const/16 v3, 0x3e8

    goto/16 :goto_129

    .line 1710
    .restart local v3       #interval:I
    :cond_1c8
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_1d9

    .line 1711
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1712
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13d

    .line 1716
    :cond_1d9
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 1717
    const-string v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_1e6
    invoke-direct {p0, v9, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1723
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_13d

    .line 1726
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_13d

    .line 1727
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v10, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_13d
.end method

.method private stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1735
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_54

    .line 1737
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1738
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1739
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1740
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1741
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1742
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1743
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_2c

    .line 1745
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating : mIsNIstarted =false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 1749
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1750
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->setSKAFEnable(Z)V

    .line 1751
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const-string v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_43
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    if-eqz v0, :cond_50

    .line 1755
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    .line 1756
    const-string v0, "GpsLocationProvider"

    const-string v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_50
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1761
    :cond_54
    return-void
.end method

.method private updateStatus(II)V
    .registers 7
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    monitor-enter v1

    .line 1347
    :try_start_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1c

    .line 1348
    :cond_b
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1349
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1350
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v2, "satellites"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1353
    :cond_1c
    monitor-exit v1

    .line 1354
    return-void

    .line 1353
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 2142
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2144
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 6
    .parameter "uid"

    .prologue
    .line 1458
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1459
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1460
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v1, v3, :cond_16

    .line 1461
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1462
    :cond_16
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1463
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1464
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1465
    monitor-exit v2

    .line 1466
    return-void

    .line 1465
    .end local v0           #m:Landroid/os/Message;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public disable()V
    .registers 5

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1304
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1305
    monitor-exit v1

    .line 1306
    return-void

    .line 1305
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 950
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 951
    monitor-exit v1

    .line 952
    return-void

    .line 951
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1363
    const/4 v2, 0x3

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    const/4 v3, 0x0

    :try_start_8
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1364
    monitor-exit v1

    .line 1365
    return-void

    .line 1363
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 1364
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 940
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    :cond_37
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    :cond_43
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :cond_4f
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    :cond_5c
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :cond_69
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 672
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 922
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .parameter "extras"

    .prologue
    .line 1339
    if-eqz p1, :cond_9

    .line 1340
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    :cond_9
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1357
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 930
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeListener(I)V
    .registers 6
    .parameter "uid"

    .prologue
    .line 1487
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1488
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1489
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v1, v3, :cond_16

    .line 1490
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1491
    :cond_16
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1492
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1493
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1494
    monitor-exit v2

    .line 1495
    return-void

    .line 1494
    .end local v0           #m:Landroid/os/Message;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2182
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2196
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2197
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2198
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_f3

    const/4 v7, 0x1

    :goto_93
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2199
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_f5

    const/4 v7, 0x1

    :goto_9a
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2200
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_f7

    const/4 v7, 0x1

    :goto_a1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2201
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2202
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2203
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2204
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2205
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2206
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2212
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_c0

    const-string p10, ""

    .line 2213
    :cond_c0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2216
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_c5
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_f9

    .line 2223
    :goto_cf
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2225
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 2198
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_f3
    const/4 v7, 0x0

    goto :goto_93

    .line 2199
    :cond_f5
    const/4 v7, 0x0

    goto :goto_9a

    .line 2200
    :cond_f7
    const/4 v7, 0x0

    goto :goto_a1

    .line 2218
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_f9
    move-exception v2

    .line 2220
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 2228
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_115
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2230
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2231
    return-void
.end method

.method public requestSingleShotFix()Z
    .registers 5

    .prologue
    .line 1388
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_6

    .line 1390
    const/4 v1, 0x0

    .line 1397
    :goto_5
    return v1

    .line 1392
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1393
    :try_start_9
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1395
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1396
    monitor-exit v2

    .line 1397
    const/4 v1, 0x1

    goto :goto_5

    .line 1396
    .end local v0           #m:Landroid/os/Message;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1518
    .local v3, identity:J
    const/4 v6, 0x0

    .line 1520
    .local v6, result:Z
    const-string v9, "delete_aiding_data"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1521
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v6

    .line 1593
    :cond_13
    :goto_13
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 1594
    :goto_17
    return v7

    .line 1522
    :cond_18
    const-string v9, "force_time_injection"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1523
    const/4 v7, 0x5

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1524
    const/4 v6, 0x1

    goto :goto_13

    .line 1525
    :cond_27
    const-string v9, "force_xtra_injection"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 1526
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v7, :cond_13

    .line 1527
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1528
    const/4 v6, 0x1

    goto :goto_13

    .line 1530
    :cond_38
    const-string v9, "set_csc_parameters"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 1531
    invoke-virtual {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->setCscParameters(Landroid/os/Bundle;)V

    .line 1532
    const/4 v6, 0x1

    goto :goto_13

    .line 1533
    :cond_45
    const-string v9, "request_running"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 1534
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1535
    :try_start_50
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_5d

    :goto_58
    monitor-exit v9

    goto :goto_17

    .line 1536
    :catchall_5a
    move-exception v7

    monitor-exit v9
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5a

    throw v7

    :cond_5d
    move v7, v8

    .line 1535
    goto :goto_58

    .line 1537
    :cond_5f
    const-string v9, "com.skt.intent.action.AGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 1538
    const-string v9, "opType"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1539
    .local v5, opType:Ljava/lang/String;
    const-string v9, "cmdType"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, cmdType:Ljava/lang/String;
    const-string v9, "on"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 1542
    const-string v8, "msAssisted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8b

    const-string v8, "msBased"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 1543
    :cond_8b
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->setSKAFEnable(Z)V

    .line 1551
    :cond_8e
    :goto_8e
    const/4 v6, 0x1

    .line 1552
    goto :goto_13

    .line 1546
    :cond_90
    const-string v7, "off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1547
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->setSKAFEnable(Z)V

    .line 1548
    const-string v7, "sys.sktgps"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 1552
    .end local v0           #cmdType:Ljava/lang/String;
    .end local v5           #opType:Ljava/lang/String;
    :cond_a3
    const-string v9, "setOllehServer"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 1553
    const-string v8, "host"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1554
    .local v2, hostURL:Ljava/lang/String;
    const-string v8, "port"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1555
    .local v1, hostPort:I
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    .line 1556
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    .line 1557
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    .line 1558
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " port ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v6, 0x1

    .line 1560
    goto/16 :goto_13

    .end local v1           #hostPort:I
    .end local v2           #hostURL:Ljava/lang/String;
    :cond_e6
    const-string v9, "setNativeServer"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 1561
    const-string v7, "GpsLocationProvider"

    const-string v9, "setNativeServer"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mIsKtGps:Z

    .line 1563
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1564
    :cond_fa
    const-string v9, "activateGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 1565
    const-string v8, "GpsLocationProvider"

    const-string v9, "activateGPS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gps"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1567
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1568
    :cond_117
    const-string v9, "deactivateGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_134

    .line 1569
    const-string v7, "GpsLocationProvider"

    const-string v9, "deactivateGPS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "gps"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1571
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1572
    :cond_134
    const-string v9, "activateAGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_151

    .line 1573
    const-string v8, "GpsLocationProvider"

    const-string v9, "activateAGPS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assisted_gps_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1575
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1576
    :cond_151
    const-string v7, "deactivateAGPS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16e

    .line 1577
    const-string v7, "GpsLocationProvider"

    const-string v9, "deactivateAGPS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "assisted_gps_enabled"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1579
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1580
    :cond_16e
    const-string v7, "setMode"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 1581
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    .line 1582
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMode ktPositionMode :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1584
    :cond_19b
    const-string v7, "getMode"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c7

    .line 1585
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMode ktPositionMode :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v7, "mode"

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1587
    const/4 v6, 0x1

    goto/16 :goto_13

    .line 1590
    :cond_1c7
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendExtraCommand: unknown command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method setCscParameters(Landroid/os/Bundle;)V
    .registers 9
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2427
    const-string v0, "GpsLocationProvider"

    const-string v2, "setCscParameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    if-nez p1, :cond_c

    .line 2446
    :cond_b
    :goto_b
    return-void

    .line 2432
    :cond_c
    const-string v0, "operation_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    .line 2433
    const-string v0, "hslp_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    .line 2434
    const-string v0, "hslp_port"

    const/16 v2, 0x1c6c

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    .line 2435
    const-string v0, "ssl"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    .line 2436
    const-string v0, "ssl_cert"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    .line 2438
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    const-string v2, "MSBASED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2439
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_82

    .line 2442
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 2444
    :cond_82
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    goto :goto_b
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 10
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1407
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_41

    .line 1410
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1412
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1413
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1415
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_41
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 902
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 848
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 849
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 6
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v2, 0x4

    .line 687
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v0, v1, :cond_26

    .line 688
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 689
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 690
    const-string v0, "GpsLocationProvider"

    const-string v1, "Mobile Type is not SUPL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_1f
    return-void

    .line 689
    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    .line 693
    :cond_22
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_1f

    .line 697
    :cond_26
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_1f
.end method
