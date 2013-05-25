.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$4;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final MY_IMMVIBE_LICENSE_KEY:Ljava/lang/String; = "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final TYPE_FEEDBACK_MAGNITUDE:I

.field private final TYPE_NOTIFICATION_MAGNITUDE:I

.field private final TYPE_RECVCALL_MAGNITUDE:I

.field private USE_SET_MAX_MAGNITUE:Z

.field private USE_VIBETONZ:Z

.field private final VIBE_DEBUG:Z

.field private levelToMagnitude:[I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private mDevHandle:I

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImmVibeAlertOnCallMagnitude:I

.field private mImmVibeCallMagnitude:I

.field private mImmVibeNotiMagnitude:I

.field private mImmVibeTouchMagnitude:I

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mTypeURIs:[Ljava/lang/String;

.field private mVibe:Lcom/immersion/android/ImmVibe;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 59
    iput v5, p0, Lcom/android/server/VibratorService;->TYPE_FEEDBACK_MAGNITUDE:I

    .line 60
    iput v4, p0, Lcom/android/server/VibratorService;->TYPE_RECVCALL_MAGNITUDE:I

    .line 61
    iput v7, p0, Lcom/android/server/VibratorService;->TYPE_NOTIFICATION_MAGNITUDE:I

    .line 63
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v2, v5

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v2, v4

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 68
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_ca

    iput-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    .line 69
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    .line 73
    iput v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 74
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 75
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 76
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 77
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeAlertOnCallMagnitude:I

    .line 78
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 86
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->VIBE_DEBUG:Z

    .line 90
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 91
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 502
    new-instance v2, Lcom/android/server/VibratorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 797
    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v2, :cond_77

    .line 173
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 176
    :cond_77
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 177
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 178
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "VibratorService"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 181
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_c8

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 189
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 190
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 191
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    invoke-direct {v2, p0, v7}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 193
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->openDevice(Landroid/content/Context;)V

    .line 195
    :cond_c8
    return-void

    .line 68
    nop

    :array_ca
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;JI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->doVibratorOn(JI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/VibratorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->doVibratorOn(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/VibratorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/VibratorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method private closeDevice(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 1192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 1193
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_16

    .line 1199
    :goto_c
    return-void

    .line 1194
    :catch_d
    move-exception v1

    .line 1195
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1196
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_16
    move-exception v0

    .line 1197
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_15

    .line 514
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 515
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 516
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 517
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 520
    :cond_15
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 521
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    return-void

    .line 517
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .prologue
    .line 654
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 6

    .prologue
    .line 685
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 686
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 687
    .local v1, vibratorCount:I
    if-eqz v1, :cond_1c

    .line 688
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_2b

    .line 689
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 692
    .end local v0           #i:I
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_2d

    .line 693
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_38

    if-eqz v2, :cond_2b

    .line 695
    :try_start_24
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_38
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_3b

    .line 703
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v3

    .line 704
    return-void

    .line 699
    :cond_2d
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 700
    const-string v2, "VibratorService"

    const-string v4, "JNI vibratorOff()"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 703
    .end local v1           #vibratorCount:I
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v2

    .line 696
    .restart local v1       #vibratorCount:I
    :catch_3b
    move-exception v2

    goto :goto_2b
.end method

.method private doVibratorOn(J)V
    .registers 9
    .parameter "millis"

    .prologue
    .line 658
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 659
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, vibratorCount:I
    if-eqz v1, :cond_1c

    .line 661
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_37

    .line 662
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 665
    .end local v0           #i:I
    :cond_1c
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 666
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JNI vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_37
    monitor-exit v3

    .line 669
    return-void

    .line 668
    .end local v1           #vibratorCount:I
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private doVibratorOn(JI)V
    .registers 8
    .parameter "millis"
    .parameter "magnitude"

    .prologue
    .line 672
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 673
    :try_start_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 674
    .local v1, vibratorCount:I
    if-eqz v1, :cond_1c

    .line 675
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_20

    .line 676
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 679
    .end local v0           #i:I
    :cond_1c
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 681
    :cond_20
    monitor-exit v3

    .line 682
    return-void

    .line 681
    .end local v1           #vibratorCount:I
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private getMagnitude(Ljava/lang/String;)I
    .registers 5
    .parameter "type"

    .prologue
    .line 928
    invoke-static {p1}, Landroid/os/SystemVibrator$MagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/SystemVibrator$MagnitudeType;

    move-result-object v0

    .line 929
    .local v0, magnitudeType:Landroid/os/SystemVibrator$MagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 942
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 931
    :pswitch_11
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    goto :goto_10

    .line 934
    :pswitch_14
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    goto :goto_10

    .line 937
    :pswitch_17
    iget v1, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    goto :goto_10

    .line 940
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    goto :goto_10

    .line 929
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private isAll0([J)Z
    .registers 8
    .parameter "pattern"

    .prologue
    .line 377
    array-length v0, p1

    .line 378
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 379
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 380
    const/4 v2, 0x0

    .line 383
    :goto_d
    return v2

    .line 378
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private openDevice(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x5

    .line 1165
    :try_start_1
    new-instance v2, Lcom/immersion/android/ImmVibe;

    invoke-direct {v2}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    .line 1166
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 1167
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v3, 0x0

    const-string v4, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v2, v3, v4}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    .line 1169
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1170
    .local v1, magnitudeLevel:I
    if-le v1, v5, :cond_55

    iput v1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 1172
    :goto_28
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    .line 1173
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    .line 1175
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v2, :cond_54

    .line 1176
    iget v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1185
    .end local v1           #magnitudeLevel:I
    :cond_54
    :goto_54
    return-void

    .line 1171
    .restart local v1       #magnitudeLevel:I
    :cond_55
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    :try_end_5b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_7a

    goto :goto_28

    .line 1180
    .end local v1           #magnitudeLevel:I
    :catch_5c
    move-exception v0

    .line 1181
    .local v0, e:Ljava/lang/Error;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 1182
    .end local v0           #e:Ljava/lang/Error;
    :catch_7a
    move-exception v0

    .line 1183
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .registers 6
    .parameter "token"

    .prologue
    .line 554
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 555
    .local v0, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 556
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 557
    .local v1, vib:Lcom/android/server/VibratorService$Vibration;
    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 558
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 559
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 569
    .end local v1           #vib:Lcom/android/server/VibratorService$Vibration;
    :goto_1f
    return-object v1

    .line 565
    :cond_20
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_34

    .line 566
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 567
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_1f

    .line 569
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private setVibeStrength(I)V
    .registers 7
    .parameter "strength"

    .prologue
    .line 818
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_12

    .line 824
    :goto_8
    return-void

    .line 819
    :catch_9
    move-exception v1

    .line 820
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 821
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_12
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private startNextVibrationLocked()V
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 532
    :goto_b
    return-void

    .line 530
    :cond_c
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 531
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_b
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 6
    .parameter "vib"

    .prologue
    .line 536
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 537
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_3d

    .line 538
    #getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_2f

    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    #getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;I)V

    .line 543
    :goto_23
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    :goto_2e
    return-void

    .line 539
    :cond_2f
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;I)V

    goto :goto_23

    .line 541
    :cond_3d
    #getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->doVibratorOn(J)V

    goto :goto_23

    .line 547
    :cond_45
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 548
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_2e
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .parameter "vib"

    .prologue
    .line 573
    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_e

    .line 577
    :try_start_6
    #getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 582
    :cond_e
    :goto_e
    return-void

    .line 578
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateInputDeviceVibrators()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 585
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 586
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 588
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_6f

    .line 589
    const/4 v8, 0x0

    :try_start_c
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_6c

    .line 591
    :try_start_e
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_input_devices"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_5d

    :goto_1c
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_6c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_1e} :catch_87

    .line 596
    :goto_1e
    :try_start_1e
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_5f

    .line 597
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_30

    .line 598
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 599
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 608
    :cond_30
    :goto_30
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 609
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_72

    .line 610
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 611
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_40
    array-length v4, v2

    if-ge v1, v4, :cond_72

    .line 612
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 613
    .local v0, device:Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 614
    .local v3, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 615
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .end local v0           #device:Landroid/view/InputDevice;
    .end local v1           #i:I
    .end local v2           #ids:[I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_5d
    move v4, v5

    .line 591
    goto :goto_1c

    .line 602
    :cond_5f
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_30

    .line 603
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 604
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_30

    .line 624
    :catchall_6c
    move-exception v4

    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_1e .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v4

    .line 627
    :catchall_6f
    move-exception v4

    monitor-exit v6
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6f

    throw v4

    .line 620
    :cond_72
    :try_start_72
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_83

    .line 621
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    .line 624
    :goto_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_6c

    .line 626
    :try_start_7e
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 627
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_6f

    .line 628
    return-void

    .line 623
    :cond_83
    const/4 v4, 0x1

    :try_start_84
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_6c

    goto :goto_7d

    .line 593
    :catch_87
    move-exception v4

    goto :goto_1e
.end method

.method private vibrate(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, duration:I
    sparse-switch p1, :sswitch_data_1e

    .line 264
    const/16 v0, 0x32

    .line 268
    :goto_6
    int-to-long v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 269
    return-void

    .line 236
    :sswitch_c
    const/16 v0, 0x32

    .line 237
    goto :goto_6

    .line 240
    :sswitch_f
    const/16 v0, 0x64

    .line 241
    goto :goto_6

    .line 244
    :sswitch_12
    const/16 v0, 0x1f4

    .line 245
    goto :goto_6

    .line 251
    :sswitch_15
    const/16 v0, 0x5dc

    .line 252
    goto :goto_6

    .line 255
    :sswitch_18
    const/16 v0, 0x32

    .line 256
    goto :goto_6

    .line 260
    :sswitch_1b
    const/16 v0, 0xb

    .line 261
    goto :goto_6

    .line 227
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_c
        0x3 -> :sswitch_c
        0x9 -> :sswitch_c
        0xa -> :sswitch_f
        0xc -> :sswitch_12
        0xd -> :sswitch_15
        0xe -> :sswitch_18
        0x10 -> :sswitch_15
        0x11 -> :sswitch_15
        0x12 -> :sswitch_15
        0x16 -> :sswitch_1b
        0x2710 -> :sswitch_c
        0x2711 -> :sswitch_c
    .end sparse-switch
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 8
    .parameter "token"

    .prologue
    .line 482
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 489
    .local v0, identity:J
    :try_start_d
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 490
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 491
    .local v2, vib:Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_1e

    .line 492
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 493
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 495
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 498
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    return-void

    .line 495
    .end local v2           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 498
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMaxMagnitude()I
    .registers 5

    .prologue
    .line 1153
    const/16 v1, 0x2710

    .line 1155
    .local v1, magnitude:I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    iget-object v3, p0, Lcom/android/server/VibratorService;->levelToMagnitude:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1159
    :goto_b
    return v1

    .line 1156
    :catch_c
    move-exception v0

    .line 1157
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasVibrator()Z
    .registers 2

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .parameter "deviceId"

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 633
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .parameter "deviceId"

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 638
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .parameter "deviceId"

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 643
    return-void
.end method

.method public resetMagnitude()V
    .registers 2

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_5

    .line 211
    :goto_4
    return-void

    .line 209
    :cond_5
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_4
.end method

.method public setMagnitude(I)V
    .registers 3
    .parameter "magnitude"

    .prologue
    .line 199
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 200
    :cond_3
    const/16 v0, 0x2710

    if-le p1, v0, :cond_9

    const/16 p1, 0x2710

    .line 202
    :cond_9
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 203
    iput p1, p0, Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I

    .line 204
    return-void
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 215
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/VibratorService$1;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 224
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;)V
    .registers 10
    .parameter "milliseconds"
    .parameter "token"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 273
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 298
    :cond_c
    :goto_c
    return-void

    .line 275
    :cond_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 277
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 283
    .local v5, uid:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 290
    :cond_35
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JI)V

    .line 291
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2

    .line 292
    :try_start_40
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 293
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 294
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 295
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 296
    monitor-exit v2

    goto :goto_c

    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public vibrate(JLandroid/os/IBinder;I)V
    .registers 5
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 301
    return-void
.end method

.method public vibrateCall(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_a

    .line 913
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 917
    :goto_9
    return-void

    .line 915
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->vibrate(I)V

    goto :goto_9
.end method

.method public vibrateImmVibe(II)V
    .registers 10
    .parameter "type"
    .parameter "magnitude"

    .prologue
    .line 827
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v3, :cond_8

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->vibrate(I)V

    .line 867
    :cond_7
    :goto_7
    return-void

    .line 832
    :cond_8
    const/4 v2, -0x4

    .line 838
    .local v2, ret:I
    if-gez p2, :cond_d

    iget p2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 839
    :cond_d
    const/16 v3, 0x2710

    if-le p2, v3, :cond_13

    const/16 p2, 0x2710

    .line 841
    :cond_13
    const/16 v3, 0x9

    if-lt p1, v3, :cond_7

    const/16 v3, 0x16

    if-gt p1, v3, :cond_7

    .line 844
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_20

    .line 845
    const/4 v2, -0x2

    .line 848
    :cond_20
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 850
    if-nez p2, :cond_26

    .line 851
    const/4 v2, 0x0

    .line 854
    :cond_26
    const/4 v3, -0x4

    if-ne v2, v3, :cond_7

    .line 857
    :try_start_29
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 858
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 859
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v5, Lcom/immersion/android/ImmVibeConstants;->ivt:[[B

    add-int/lit8 v6, p1, -0x9

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_41} :catch_43
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_4c

    move-result v2

    goto :goto_7

    .line 860
    :catch_43
    move-exception v1

    .line 861
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 862
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_4c
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateImmVibe()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public vibrateImmVibeMagnitudeType(ILjava/lang/String;)V
    .registers 11
    .parameter "type"
    .parameter "magnitudeType"

    .prologue
    .line 1068
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v4, :cond_8

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->vibrate(I)V

    .line 1108
    :cond_7
    :goto_7
    return-void

    .line 1073
    :cond_8
    const/4 v3, -0x4

    .line 1074
    .local v3, ret:I
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v1

    .line 1079
    .local v1, magnitude:I
    if-gez v1, :cond_11

    iget v1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1080
    :cond_11
    const/16 v4, 0x2710

    if-le v1, v4, :cond_17

    const/16 v1, 0x2710

    .line 1082
    :cond_17
    const/16 v4, 0x9

    if-lt p1, v4, :cond_7

    const/16 v4, 0x16

    if-gt p1, v4, :cond_7

    .line 1085
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v4, :cond_24

    .line 1086
    const/4 v3, -0x2

    .line 1089
    :cond_24
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1091
    if-nez v1, :cond_2a

    .line 1092
    const/4 v3, 0x0

    .line 1095
    :cond_2a
    const/4 v4, -0x4

    if-ne v3, v4, :cond_7

    .line 1098
    :try_start_2d
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1099
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1100
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    sget-object v6, Lcom/immersion/android/ImmVibeConstants;->ivt:[[B

    add-int/lit8 v7, p1, -0x9

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_45} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_50

    move-result v3

    goto :goto_7

    .line 1101
    :catch_47
    move-exception v2

    .line 1102
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at vibrateImmVibeMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1103
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_50
    move-exception v0

    .line 1104
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VibratorService"

    const-string v5, "Exception occured at vibrateImmVibeMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public vibrateImmVibePattern([BI)V
    .registers 9
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    .line 870
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v3, :cond_b

    .line 871
    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 909
    :cond_a
    :goto_a
    return-void

    .line 875
    :cond_b
    const/4 v2, -0x4

    .line 881
    .local v2, ret:I
    if-gez p2, :cond_10

    iget p2, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 882
    :cond_10
    const/16 v3, 0x2710

    if-le p2, v3, :cond_16

    const/16 p2, 0x2710

    .line 884
    :cond_16
    if-eqz p1, :cond_a

    .line 886
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_1d

    .line 887
    const/4 v2, -0x2

    .line 890
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 892
    if-nez p2, :cond_23

    .line 893
    const/4 v2, 0x0

    .line 896
    :cond_23
    const/4 v3, -0x4

    if-ne v2, v3, :cond_a

    .line 899
    :try_start_26
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 900
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 901
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_38} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_43

    move-result v2

    goto :goto_a

    .line 902
    :catch_3a
    move-exception v1

    .line 903
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateImmVibePattern()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 904
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_43
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateImmVibePattern()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public vibrateImmVibePatternMagnitudeType([BLjava/lang/String;)V
    .registers 10
    .parameter "pattern"
    .parameter "magnitudeType"

    .prologue
    .line 1111
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-nez v4, :cond_b

    .line 1112
    const-wide/16 v4, 0x64

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    .line 1150
    :cond_a
    :goto_a
    return-void

    .line 1116
    :cond_b
    const/4 v3, -0x4

    .line 1117
    .local v3, ret:I
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v1

    .line 1122
    .local v1, magnitude:I
    if-gez v1, :cond_14

    iget v1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 1123
    :cond_14
    const/16 v4, 0x2710

    if-le v1, v4, :cond_1a

    const/16 v1, 0x2710

    .line 1125
    :cond_1a
    if-eqz p1, :cond_a

    .line 1127
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v4, :cond_21

    .line 1128
    const/4 v3, -0x2

    .line 1131
    :cond_21
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1133
    if-nez v1, :cond_27

    .line 1134
    const/4 v3, 0x0

    .line 1137
    :cond_27
    const/4 v4, -0x4

    if-ne v3, v4, :cond_a

    .line 1140
    :try_start_2a
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 1141
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v4, v5}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1142
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v5, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_3c} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3c} :catch_47

    move-result v3

    goto :goto_a

    .line 1143
    :catch_3e
    move-exception v2

    .line 1144
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "VibratorService"

    const-string v5, "RuntimeException occured at vibrateImmVibePatternMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1145
    .end local v2           #re:Ljava/lang/RuntimeException;
    :catch_47
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VibratorService"

    const-string v5, "Exception occured at vibrateImmVibePatternMagnitudeType()."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public vibrateMagnitude(JLandroid/os/IBinder;I)V
    .registers 20
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 308
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 310
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 316
    .local v7, uid:I
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 374
    .end local v7           #uid:I
    :cond_2a
    :goto_2a
    return-void

    .line 323
    .restart local v7       #uid:I
    :cond_2b
    if-gez p4, :cond_31

    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    move/from16 p4, v0

    .line 324
    :cond_31
    const/16 v3, 0x2710

    move/from16 v0, p4

    if-le v0, v3, :cond_39

    const/16 p4, 0x2710

    .line 326
    :cond_39
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v3, :cond_8b

    .line 327
    const/4 v14, -0x4

    .line 329
    .local v14, ret:I
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v3, :cond_43

    .line 330
    const/4 v14, -0x2

    .line 333
    :cond_43
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 335
    if-nez p4, :cond_49

    .line 336
    const/4 v14, 0x0

    .line 339
    :cond_49
    const/4 v3, -0x4

    if-ne v14, v3, :cond_2a

    .line 346
    const/16 v3, 0x2710

    :try_start_4e
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 348
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p1, v3

    if-lez v3, :cond_75

    const v11, 0x7fffffff

    .line 349
    .local v11, duration:I
    :goto_5b
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v3, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 350
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p1

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_73} :catch_79
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_73} :catch_82

    .end local v7           #uid:I
    move-result v14

    goto :goto_2a

    .line 348
    .end local v11           #duration:I
    .restart local v7       #uid:I
    :cond_75
    move-wide/from16 v0, p1

    long-to-int v11, v0

    goto :goto_5b

    .line 359
    .end local v7           #uid:I
    :catch_79
    move-exception v13

    .line 360
    .local v13, re:Ljava/lang/RuntimeException;
    const-string v3, "VibratorService"

    const-string v4, "RuntimeException occured at vibrateMagnitude()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 361
    .end local v13           #re:Ljava/lang/RuntimeException;
    :catch_82
    move-exception v12

    .line 362
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "VibratorService"

    const-string v4, "Exception occured at vibrateMagnitude()."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 366
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #ret:I
    .restart local v7       #uid:I
    :cond_8b
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p3

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JI)V

    .line 367
    .local v2, vib:Lcom/android/server/VibratorService$Vibration;
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4

    .line 368
    :try_start_98
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 369
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 370
    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 371
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 372
    monitor-exit v4

    goto :goto_2a

    :catchall_a7
    move-exception v3

    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_a7

    throw v3
.end method

.method public vibrateMagnitudeType(JLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 21
    .parameter "milliseconds"
    .parameter "token"
    .parameter "magnitudeType"

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    .line 948
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 954
    .local v11, uid:I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1013
    :cond_30
    :goto_30
    return-void

    .line 961
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v5

    .line 962
    .local v5, magnitude:I
    if-gez v5, :cond_3f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 963
    :cond_3f
    const/16 v2, 0x2710

    if-le v5, v2, :cond_45

    const/16 v5, 0x2710

    .line 965
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v2, :cond_a3

    .line 966
    const/4 v15, -0x4

    .line 968
    .local v15, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_53

    .line 969
    const/4 v15, -0x2

    .line 972
    :cond_53
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 974
    if-nez v5, :cond_59

    .line 975
    const/4 v15, 0x0

    .line 978
    :cond_59
    const/4 v2, -0x4

    if-ne v15, v2, :cond_30

    .line 985
    const/16 v2, 0x2710

    :try_start_5e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->setVibeStrength(I)V

    .line 987
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-lez v2, :cond_8d

    const v12, 0x7fffffff

    .line 988
    .local v12, duration:I
    :goto_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->mDevHandle:I

    move-wide/from16 v0, p1

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_8b} :catch_91
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_8b} :catch_9a

    move-result v15

    goto :goto_30

    .line 987
    .end local v12           #duration:I
    :cond_8d
    move-wide/from16 v0, p1

    long-to-int v12, v0

    goto :goto_6d

    .line 998
    :catch_91
    move-exception v14

    .line 999
    .local v14, re:Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at vibrateMagnitudeType()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1000
    .end local v14           #re:Ljava/lang/RuntimeException;
    :catch_9a
    move-exception v13

    .line 1001
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at vibrateMagnitudeType()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1005
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #ret:I
    :cond_a3
    new-instance v6, Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-wide/from16 v9, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JI)V

    .line 1006
    .local v6, vib:Lcom/android/server/VibratorService$Vibration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1007
    :try_start_b3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1009
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1010
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1011
    monitor-exit v3

    goto/16 :goto_30

    :catchall_c9
    move-exception v2

    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_c9

    throw v2
.end method

.method public vibrateNotification(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->USE_VIBETONZ:Z

    if-eqz v0, :cond_a

    .line 921
    iget v0, p0, Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VibratorService;->vibrateImmVibe(II)V

    .line 925
    :goto_9
    return-void

    .line 923
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->vibrate(I)V

    goto :goto_9
.end method

.method public vibratePattern([JILandroid/os/IBinder;)V
    .registers 13
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 389
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 393
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 397
    .local v7, identity:J
    if-eqz p1, :cond_2a

    :try_start_1c
    array-length v1, p1

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_2a

    array-length v1, p1

    if-ge p2, v1, :cond_2a

    if-nez p3, :cond_35

    .line 400
    :cond_2a
    const-string v1, "VibratorService"

    const-string v2, "vibratePattern() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_5a

    .line 426
    :goto_31
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    return-void

    .line 404
    :cond_35
    :try_start_35
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JII)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_5a

    .line 406
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_3f
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_5f

    .line 411
    :try_start_42
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5a

    .line 412
    :try_start_45
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 413
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 414
    if-ltz p2, :cond_61

    .line 415
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 416
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 423
    :goto_55
    monitor-exit v2

    goto :goto_31

    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_57

    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 426
    .end local v0           #vib:Lcom/android/server/VibratorService$Vibration;
    :catchall_5a
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 407
    .restart local v0       #vib:Lcom/android/server/VibratorService$Vibration;
    :catch_5f
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    goto :goto_31

    .line 420
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_61
    :try_start_61
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 421
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_57

    goto :goto_55
.end method

.method public vibratePatternByMagnitude([JILandroid/os/IBinder;I)V
    .registers 15
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .parameter "magnitude"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 433
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 437
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 440
    .local v8, identity:J
    if-eqz p1, :cond_2a

    :try_start_1c
    array-length v1, p1

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_2a

    array-length v1, p1

    if-ge p2, v1, :cond_2a

    if-nez p3, :cond_35

    .line 443
    :cond_2a
    const-string v1, "VibratorService"

    const-string v2, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_45

    .line 477
    :goto_31
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    return-void

    .line 447
    :cond_35
    if-nez p4, :cond_4a

    .line 448
    :try_start_37
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 449
    :try_start_3a
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 450
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 451
    monitor-exit v2

    goto :goto_31

    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    :try_start_44
    throw v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 477
    :catchall_45
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 455
    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_45

    .line 457
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_55
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_70

    .line 462
    :try_start_58
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_45

    .line 463
    :try_start_5b
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 464
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 465
    if-ltz p2, :cond_72

    .line 466
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 474
    :goto_6b
    monitor-exit v2

    goto :goto_31

    :catchall_6d
    move-exception v1

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_45

    .line 458
    :catch_70
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_31

    .line 471
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_72
    :try_start_72
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 472
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_6d

    goto :goto_6b
.end method

.method public vibratePatternByMagnitudeType([JILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"
    .parameter "magnitudeType"

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 1018
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1022
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1025
    .local v8, identity:J
    if-eqz p1, :cond_2a

    :try_start_1c
    array-length v1, p1

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_2a

    array-length v1, p1

    if-ge p2, v1, :cond_2a

    if-nez p3, :cond_35

    .line 1028
    :cond_2a
    const-string v1, "VibratorService"

    const-string v2, "vibratePatternByMagnitude() request is failed by  illegal argument."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_49

    .line 1063
    :goto_31
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    return-void

    .line 1032
    :cond_35
    :try_start_35
    invoke-direct {p0, p4}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;)I

    move-result v6

    .line 1033
    .local v6, magnitude:I
    if-nez v6, :cond_4e

    .line 1034
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_49

    .line 1035
    :try_start_3e
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1036
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1037
    monitor-exit v2

    goto :goto_31

    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 1063
    .end local v6           #magnitude:I
    :catchall_49
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1041
    .restart local v6       #magnitude:I
    :cond_4e
    :try_start_4e
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIII)V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_49

    .line 1043
    .local v0, vib:Lcom/android/server/VibratorService$Vibration;
    const/4 v1, 0x0

    :try_start_58
    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_73

    .line 1048
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_49

    .line 1049
    :try_start_5e
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1050
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1051
    if-ltz p2, :cond_75

    .line 1052
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1053
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 1060
    :goto_6e
    monitor-exit v2

    goto :goto_31

    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_70

    :try_start_72
    throw v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_49

    .line 1044
    :catch_73
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_31

    .line 1057
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_75
    :try_start_75
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1058
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_70

    goto :goto_6e
.end method
