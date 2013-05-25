.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$ForcedSvcLEDOnTask;,
        Lcom/android/server/LightsService$SvcLEDTask;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field static final LIGHT_SEC_FLASH_POWERING:I = 0xf

.field private static final SVCLED_ATTENTION_MASK:I = 0x0

.field private static final SVCLED_BATTERY_MASK:I = 0x39

.field private static final SVCLED_CHARGING:I = 0x8

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x20

.field private static final SVCLED_LOW_BATTERY:I = 0x10

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x3

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x6

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x5

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x4

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field private static mForceMode:Z

.field private static mPrevSvcLedState:I

.field private static mSVCLEDPattern:[I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I


# instance fields
.field private isHappyNight:Z

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Landroid/os/Handler;

.field private final mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;

.field private mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightnessEnabled:Z

.field private mUseSoftwareAutoBrightness:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/LightsService;->mSVCLEDPattern:[I

    .line 120
    sput v1, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 121
    sput v1, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 122
    sput v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 123
    sput v1, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 124
    sput v1, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 125
    sput v1, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    .line 126
    sput-boolean v1, Lcom/android/server/LightsService;->mForceMode:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v2, Lcom/android/server/LightsService$SvcLEDTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$SvcLEDTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;

    .line 74
    new-instance v2, Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$ForcedSvcLEDOnTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    .line 75
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    .line 79
    iput-boolean v4, p0, Lcom/android/server/LightsService;->isHappyNight:Z

    .line 83
    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    .line 139
    new-array v2, v6, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 256
    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 347
    new-instance v2, Lcom/android/server/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 369
    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    .line 384
    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 293
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 294
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 296
    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 298
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4b
    if-ge v1, v6, :cond_59

    .line 299
    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v5}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 303
    :cond_59
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 304
    new-instance v2, Lcom/android/server/LightsService$2;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 321
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 322
    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 323
    :goto_6c
    :try_start_6c
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_8e

    if-nez v2, :cond_78

    .line 325
    :try_start_70
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_8e
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_75} :catch_76

    goto :goto_6c

    .line 326
    :catch_76
    move-exception v2

    goto :goto_6c

    .line 330
    :cond_78
    :try_start_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_8e

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    return-void

    .line 330
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_8e
    move-exception v2

    :try_start_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v2
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/LightsService;->mForceMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1300(IIIIIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/LightsService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/LightsService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLEDBrightnessLocked(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LightsService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/LightsService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isHappyNight:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/LightsService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/LightsService;->isHappyNight:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/LightsService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;IIIIIZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 558
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 559
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    if-eqz v0, :cond_13

    .line 372
    if-eqz p1, :cond_14

    .line 373
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    .line 381
    :cond_13
    :goto_13
    return-void

    .line 376
    :cond_14
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LightsService;->mSvcLEDTask:Lcom/android/server/LightsService$SvcLEDTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_13
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 9
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v4, "LightsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_42

    .line 544
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 545
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_4f

    move-object v2, v3

    .line 554
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_3c
    return-void

    .line 539
    :catch_3d
    move-exception v0

    .line 540
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_3c

    .line 546
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_42
    move-exception v0

    .line 547
    .local v0, e:Ljava/io/IOException;
    :goto_43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 549
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3c

    .line 550
    :catch_4a
    move-exception v1

    .line 551
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 546
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4f
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_43
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLEDBrightnessLocked(I)V
    .registers 14
    .parameter "sensorValue"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 487
    const/4 v11, 0x0

    .line 488
    .local v11, priority:I
    const/4 v10, 0x1

    .line 489
    .local v10, operator:I
    const/4 v9, -0x1

    .line 490
    .local v9, mode:I
    const/4 v11, 0x0

    :goto_8
    const/4 v0, 0x6

    if-ge v11, v0, :cond_12

    .line 491
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v11

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    .line 496
    :cond_12
    const-string v2, "/sys/class/sec/led/led_lowpower"

    const/16 v0, 0x14

    if-ge p1, v0, :cond_36

    move v0, v1

    :goto_19
    invoke-static {v2, v0}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    .line 497
    sput-boolean v1, Lcom/android/server/LightsService;->mForceMode:Z

    .line 498
    packed-switch v11, :pswitch_data_98

    .line 524
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    sget v4, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v6, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v7, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    move v8, v5

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 528
    :goto_30
    sput-boolean v5, Lcom/android/server/LightsService;->mForceMode:Z

    .line 529
    return-void

    .line 490
    :cond_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_36
    move v0, v5

    .line 496
    goto :goto_19

    .line 500
    :pswitch_38
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xb

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 504
    :pswitch_48
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v4

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xc

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 508
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v4

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 512
    :pswitch_68
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xa

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 516
    :pswitch_78
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xd

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 520
    :pswitch_88
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xe

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2600(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_30

    .line 498
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_38
        :pswitch_48
        :pswitch_58
        :pswitch_68
        :pswitch_78
        :pswitch_88
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 10
    .parameter "id"
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "set"

    .prologue
    .line 563
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_55

    const-string v0, "Off"

    :goto_26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", set = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_5a

    const-string v0, "On"

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 565
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a4

    .line 566
    if-eqz p6, :cond_9d

    .line 567
    const/16 v0, 0xa

    if-ne p3, v0, :cond_5d

    .line 568
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 598
    :goto_54
    return-void

    .line 563
    :cond_55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26

    :cond_5a
    const-string v0, "Off"

    goto :goto_34

    .line 569
    :cond_5d
    const/16 v0, 0xe

    if-ne p3, v0, :cond_6a

    .line 570
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 571
    :cond_6a
    const/16 v0, 0xd

    if-ne p3, v0, :cond_77

    .line 572
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 573
    :cond_77
    const/16 v0, 0xb

    if-ne p3, v0, :cond_84

    .line 574
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 576
    :cond_84
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 579
    :cond_9d
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 581
    :cond_a4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_ca

    .line 582
    if-eqz p6, :cond_c3

    .line 583
    const/16 v0, 0xc

    if-ne p3, v0, :cond_b4

    .line 584
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 586
    :cond_b4
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 587
    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 588
    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 589
    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 590
    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto :goto_54

    .line 593
    :cond_c3
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_54

    .line 596
    :cond_ca
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 339
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 340
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 341
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .registers 3
    .parameter "id"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method systemReady()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 357
    const-string v1, "LightsService"

    const-string v2, "[SvcLED] systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v0, updateSvcLEDIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 362
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 363
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    if-eqz v1, :cond_3e

    .line 364
    iget-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 366
    :cond_3e
    return-void
.end method
