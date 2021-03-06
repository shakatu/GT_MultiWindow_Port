.class public Lcom/android/server/pm/FakeShutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# static fields
.field public static final DOWN_FINISH:I = 0x4

.field public static final DOWN_LOWLV:I = 0x2

.field public static final DOWN_START:I = 0x1

.field public static final NOTHING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FakeShutdown"

.field public static final UP_FINISH:I = 0x5

.field public static final UP_START:I = 0x3

.field private static bluetoothOn:I

.field private static bootupAnim:Lcom/android/server/pm/ShutdownDialog;

.field private static final isPlayBootAnim:Z

.field private static mContext:Landroid/content/Context;

.field private static oldAirplaneMode:I

.field private static powerConnected:I

.field private static powerConnectedReceiver:Landroid/content/BroadcastReceiver;

.field private static sBatteryStatusLock:Ljava/lang/Object;

.field private static sFakeStateGuard:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/pm/FakeShutdown;

.field private static sState:I

.field private static shutdownAnim:Lcom/android/server/pm/ShutdownDialog;


# instance fields
.field private activitiesDoneSync:Ljava/lang/Object;

.field private airplaneDoneSync:Ljava/lang/Object;

.field private autoPowerOffObserver:Landroid/os/UEventObserver;

.field private mHandler:Landroid/os/Handler;

.field private syncObj:Ljava/lang/Object;

.field private wakeupSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    sput v3, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    .line 95
    sput-object v1, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    .line 96
    sput-object v1, Lcom/android/server/pm/FakeShutdown;->bootupAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 97
    sput-object v1, Lcom/android/server/pm/FakeShutdown;->shutdownAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    .line 104
    sput v2, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 113
    sput v2, Lcom/android/server/pm/FakeShutdown;->bluetoothOn:I

    .line 117
    sput-object v1, Lcom/android/server/pm/FakeShutdown;->sInstance:Lcom/android/server/pm/FakeShutdown;

    .line 428
    sput v3, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    .line 429
    new-instance v0, Lcom/android/server/pm/FakeShutdown$2;

    invoke-direct {v0}, Lcom/android/server/pm/FakeShutdown$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/FakeShutdown;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 706
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/FakeShutdown;->sBatteryStatusLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ShutdownDialog;)V
    .registers 5
    .parameter "context"
    .parameter "dlg"

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "FakeShutdown"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 99
    iput-object v1, p0, Lcom/android/server/pm/FakeShutdown;->airplaneDoneSync:Ljava/lang/Object;

    .line 100
    iput-object v1, p0, Lcom/android/server/pm/FakeShutdown;->activitiesDoneSync:Ljava/lang/Object;

    .line 101
    iput-object v1, p0, Lcom/android/server/pm/FakeShutdown;->wakeupSync:Ljava/lang/Object;

    .line 744
    new-instance v0, Lcom/android/server/pm/FakeShutdown$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/FakeShutdown$5;-><init>(Lcom/android/server/pm/FakeShutdown;)V

    iput-object v0, p0, Lcom/android/server/pm/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    .line 164
    sput-object p1, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    .line 165
    if-eqz p2, :cond_19

    .line 166
    sput-object p2, Lcom/android/server/pm/FakeShutdown;->shutdownAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 167
    :cond_19
    return-void
.end method

.method static synthetic access$000()Landroid/content/BroadcastReceiver;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->sBatteryStatusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 90
    sget v0, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    sput p0, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/FakeShutdown;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 90
    sget v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    return v0
.end method

.method public static addFakeConfirm(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 676
    return-void
.end method

.method private airplaneMode(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 419
    const-string v1, "FakeShutdown"

    const-string v2, "!@AirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v1, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/pm/FakeShutdown;->makeAirplaneModeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 421
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_10

    .line 426
    :goto_f
    return-void

    .line 425
    :cond_10
    const-string v2, "AirplaneMode"

    if-nez p1, :cond_1a

    const/4 v1, 0x2

    :goto_15
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/pm/FakeShutdown;->waitForIntentBrDone(Landroid/content/Intent;Ljava/lang/String;II)V

    goto :goto_f

    :cond_1a
    const/16 v1, 0x14

    goto :goto_15
.end method

.method private beginFakeShutdown()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 267
    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFakeShutdown, FAKE_STATE = DOWN_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v1, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    const/4 v0, 0x1

    :try_start_d
    sput v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 270
    const-string v0, "sys.fakeShutdown.state"

    const-string v2, "power_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_93

    .line 273
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->shutdownAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {p0, v0}, Lcom/android/server/pm/FakeShutdown;->waitForAnimStart(Lcom/android/server/pm/ShutdownDialog;)V

    .line 274
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->killAllActivities()V

    .line 277
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/pm/FakeShutdown;->bluetoothOn:I

    .line 281
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    .line 282
    invoke-direct {p0, v3}, Lcom/android/server/pm/FakeShutdown;->airplaneMode(I)V

    .line 286
    sget v0, Lcom/android/server/pm/FakeShutdown;->bluetoothOn:I

    if-ne v0, v3, :cond_54

    .line 287
    const-string v0, "FakeShutdown"

    const-string v1, "!@ [p9p9] Settings.Secure.putInt - BLUETOOTH_ON 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    :cond_54
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->shutdownAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {p0, v0}, Lcom/android/server/pm/FakeShutdown;->waitForAnimEnd(Lcom/android/server/pm/ShutdownDialog;)V

    .line 293
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/FakeShutdown;->updateBatteryState(Landroid/content/Context;)V

    .line 295
    const/16 v0, 0xb4

    invoke-direct {p0, v0}, Lcom/android/server/pm/FakeShutdown;->waitForPhoneOff(I)V

    .line 296
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    sget v2, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->resetShutdownThread()V

    .line 298
    const/16 v0, 0x1f4

    invoke-direct {p0, v0, v3}, Lcom/android/server/pm/FakeShutdown;->vibrate(IZ)V

    .line 299
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->gotoSleepMode()V

    .line 300
    const-string v0, "FakeShutdown"

    const-string v1, "!@wait start for bootup animation finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v1, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_85
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_8a} :catch_99

    .line 306
    :goto_8a
    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_96

    .line 307
    const-string v0, "FakeShutdown"

    const-string v1, "!@finish wait bootup animation finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 271
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 306
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0

    .line 304
    :catch_99
    move-exception v0

    goto :goto_8a
.end method

.method private beginFastboot()V
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 170
    const-string v10, "FakeShutdown"

    const-string v11, "!@beginFastboot"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v12}, Lcom/android/server/pm/ShutdownThread;->setInputKeys(Z)V

    .line 173
    const/16 v10, 0x1f4

    invoke-direct {p0, v10, v14}, Lcom/android/server/pm/FakeShutdown;->vibrate(IZ)V

    .line 174
    iget-object v10, p0, Lcom/android/server/pm/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    invoke-virtual {v10}, Landroid/os/UEventObserver;->stopObserving()V

    .line 177
    sget-object v10, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 178
    .local v9, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, baseTime:J
    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    invoke-virtual {v9, v10, v11, v14}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 181
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->lauchCamera()Z

    move-result v5

    .line 183
    .local v5, cameraMode:Z
    sget v10, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    invoke-direct {p0, v10}, Lcom/android/server/pm/FakeShutdown;->airplaneMode(I)V

    .line 184
    const/4 v10, 0x2

    sput v10, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    .line 188
    const-string v10, "bluetooth"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    .line 190
    .local v4, bluetooth:Landroid/bluetooth/IBluetooth;
    sget-object v10, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "bluetooth_on"

    invoke-static {v10, v11, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/server/pm/FakeShutdown;->bluetoothOn:I

    .line 194
    :try_start_4e
    sget v10, Lcom/android/server/pm/FakeShutdown;->bluetoothOn:I

    if-ne v10, v12, :cond_5c

    .line 195
    const-string v10, "FakeShutdown"

    const-string v11, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5c} :catch_c6

    .line 206
    :cond_5c
    :goto_5c
    sget-object v11, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v11

    .line 207
    const/4 v10, 0x5

    :try_start_60
    sput v10, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 208
    sget-object v10, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v11
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_cf

    .line 212
    const-wide/16 v10, 0x5dc

    :try_start_6a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_de

    .line 215
    :goto_6d
    if-eqz v5, :cond_72

    .line 216
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->waitForCamera()V

    .line 218
    :cond_72
    sget-object v10, Lcom/android/server/pm/FakeShutdown;->bootupAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {p0, v10}, Lcom/android/server/pm/FakeShutdown;->cancelDlg(Landroid/app/Dialog;)V

    .line 219
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->releaseWakeLocks()V

    .line 222
    sget-object v10, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 223
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v10, "shutdown"

    const-string v11, "0"

    invoke-virtual {v1, v10, v11}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_8b
    const-string v10, "alarm"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 228
    .local v0, alarmManager:Landroid/app/IAlarmManager;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9a} :catch_d2

    .line 233
    .end local v0           #alarmManager:Landroid/app/IAlarmManager;
    :goto_9a
    const-string v10, "FakeShutdown"

    const-string v11, "!@FAKE_STATE = NOTHING"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v11, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v11

    .line 235
    const/4 v10, 0x0

    :try_start_a5
    sput v10, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 236
    const-string v10, "sys.fakeShutdown.state"

    const-string v12, "power_on"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    monitor-exit v11
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_db

    .line 244
    const-string v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v8

    .line 247
    .local v8, ipm:Landroid/os/IPowerManager;
    :try_start_b9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v8, v10, v11, v12, v13}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c2} :catch_e0

    .line 251
    :goto_c2
    invoke-static {v14}, Lcom/android/server/pm/ShutdownThread;->setInputKeys(Z)V

    .line 252
    return-void

    .line 198
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v8           #ipm:Landroid/os/IPowerManager;
    :catch_c6
    move-exception v7

    .line 199
    .local v7, ex:Landroid/os/RemoteException;
    const-string v10, "FakeShutdown"

    const-string v11, "!@RemoteException during bluetooth enable"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 209
    .end local v7           #ex:Landroid/os/RemoteException;
    :catchall_cf
    move-exception v10

    :try_start_d0
    monitor-exit v11
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v10

    .line 229
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    :catch_d2
    move-exception v6

    .line 230
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "FakeShutdown"

    const-string v11, "!@is service dead?"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a

    .line 237
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_db
    move-exception v10

    :try_start_dc
    monitor-exit v11
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v10

    .line 213
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :catch_de
    move-exception v10

    goto :goto_6d

    .line 248
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v8       #ipm:Landroid/os/IPowerManager;
    :catch_e0
    move-exception v10

    goto :goto_c2
.end method

.method public static bootup(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 120
    sget v2, Lcom/android/server/pm/FakeShutdown;->sState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 121
    const-string v2, "FakeShutdown"

    const-string v3, "!@+++++++ duplicate fake bootup ++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_c
    return-void

    .line 126
    :cond_d
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 128
    .local v1, powerManagerService:Landroid/os/IPowerManager;
    const/4 v2, 0x0

    :try_start_18
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_55

    .line 133
    :goto_1b
    const-string v2, "FakeShutdown"

    const-string v3, "!@FAKE_STATE = UP_START"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v3, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    const/4 v2, 0x3

    :try_start_26
    sput v2, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 136
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_5a

    .line 137
    new-instance v2, Lcom/android/server/pm/FakeShutdown;

    sget-object v3, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/pm/ShutdownDialog;)V

    sput-object v2, Lcom/android/server/pm/FakeShutdown;->sInstance:Lcom/android/server/pm/FakeShutdown;

    .line 138
    sput-object p0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    .line 139
    sget-object v2, Lcom/android/server/pm/FakeShutdown;->shutdownAnim:Lcom/android/server/pm/ShutdownDialog;

    sput-object v2, Lcom/android/server/pm/FakeShutdown;->bootupAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 140
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/video/shutdown/warmboot.qmg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 146
    :cond_46
    sget-object v2, Lcom/android/server/pm/FakeShutdown;->sInstance:Lcom/android/server/pm/FakeShutdown;

    new-instance v3, Lcom/android/server/pm/FakeShutdown$1;

    invoke-direct {v3}, Lcom/android/server/pm/FakeShutdown$1;-><init>()V

    iput-object v3, v2, Lcom/android/server/pm/FakeShutdown;->mHandler:Landroid/os/Handler;

    .line 148
    sget-object v2, Lcom/android/server/pm/FakeShutdown;->sInstance:Lcom/android/server/pm/FakeShutdown;

    invoke-virtual {v2}, Lcom/android/server/pm/FakeShutdown;->start()V

    goto :goto_c

    .line 129
    :catch_55
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b

    .line 136
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method private cancelDlg(Landroid/app/Dialog;)V
    .registers 4
    .parameter "dlg"

    .prologue
    .line 600
    if-nez p1, :cond_a

    .line 601
    const-string v0, "FakeShutdown"

    const-string v1, "anim dialog not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_9
    return-void

    .line 603
    :cond_a
    const-string v0, "FakeShutdown"

    const-string v1, "!@anim dlg cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    goto :goto_9
.end method

.method public static fakeState()I
    .registers 1

    .prologue
    .line 671
    sget v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    return v0
.end method

.method private gotoSleepMode()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 539
    sget v3, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    if-ne v3, v4, :cond_b

    .line 540
    sget-object v3, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->silentShutdown(Landroid/content/Context;)V

    .line 576
    :goto_a
    return-void

    .line 545
    :cond_b
    const-string v3, "FakeShutdown"

    const-string v4, "!@startObserving PMEVENT=AutoPowerOff"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v3, p0, Lcom/android/server/pm/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    const-string v4, "PMEVENT=AutoPowerOff"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 548
    :try_start_19
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 549
    .local v0, alarmManager:Landroid/app/IAlarmManager;
    const/4 v3, 0x1

    const/16 v4, 0x5a0

    invoke-interface {v0, v3, v4}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_6e

    .line 555
    .end local v0           #alarmManager:Landroid/app/IAlarmManager;
    :goto_29
    const-string v3, "FakeShutdown"

    const-string v4, "!@powerManagerService.forceDisableWakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 558
    .local v2, powerManagerService:Landroid/os/IPowerManager;
    const/4 v3, 0x1

    :try_start_3b
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_77

    .line 563
    :goto_3e
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->setInputKeys(Z)V

    .line 565
    const-string v3, "FakeShutdown"

    const-string v4, "!@gotoSleepMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v4, Lcom/android/server/pm/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 567
    :try_start_4c
    const-string v3, "FakeShutdown"

    const-string v5, "!@FAKE_STATE = DOWN_LOWLV"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v3, 0x2

    sput v3, Lcom/android/server/pm/FakeShutdown;->sState:I

    .line 569
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_7c

    .line 571
    :try_start_57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x5

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleepWithReason(JI)V

    .line 572
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_a

    .line 573
    :catch_65
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FakeShutdown"

    const-string v4, "!@is powermanagerservice dead?"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 550
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #powerManagerService:Landroid/os/IPowerManager;
    :catch_6e
    move-exception v1

    .line 551
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "FakeShutdown"

    const-string v4, "!@is service dead?"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 559
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #powerManagerService:Landroid/os/IPowerManager;
    :catch_77
    move-exception v1

    .line 560
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3e

    .line 569
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v3
.end method

.method public static isFake()Z
    .registers 1

    .prologue
    .line 667
    sget v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private killAllActivities()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 447
    const-string v11, "FakeShutdown"

    const-string v12, "!@am.goingToSleep"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v11, "activity"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 450
    .local v5, iam:Landroid/app/IActivityManager;
    if-eqz v5, :cond_19

    .line 452
    const/16 v11, 0x2710

    :try_start_16
    invoke-interface {v5, v11}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a2

    .line 458
    :cond_19
    :goto_19
    const-string v11, "FakeShutdown"

    const-string v12, "create fakeActivity"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, fakeActivity:Landroid/content/Intent;
    const-string v11, "fake"

    invoke-virtual {v1, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const/high16 v11, 0x1000

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    sget-object v11, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 464
    sget-object v11, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 468
    .local v0, am:Landroid/app/ActivityManager;
    const-string v11, "FakeShutdown"

    const-string v12, "!@killRunningActivities"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v11, 0x64

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 470
    .local v10, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v10, :cond_129

    .line 471
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_129

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 472
    .local v3, i:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v11, :cond_55

    .line 473
    iget-boolean v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-eqz v11, :cond_88

    .line 474
    const-string v11, "FakeShutdown"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skip hometask :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 476
    :cond_88
    iget-object v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 477
    const-string v11, "FakeShutdown"

    const-string v12, "skip android framework package"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 479
    :cond_9e
    iget-object v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d9

    .line 480
    const-string v11, "FakeShutdown"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i.topActivity.getPackageName() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 483
    :cond_d9
    const-string v11, "FakeShutdown"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i.topActivity.getPackageName() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v11, "FakeShutdown"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i.baseActivity.getPackageName() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 486
    iget-object v11, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 492
    .end local v3           #i:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_129
    const-string v11, "FakeShutdown"

    const-string v12, "!@RemoveRecentTasks"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v11, 0x14

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    .line 495
    .local v9, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v9, :cond_1a5

    .line 496
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 497
    .local v7, numTasks:I
    if-eqz v7, :cond_1a5

    .line 498
    sget-object v11, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 499
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 501
    .local v2, homeInfo:Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x1

    .local v6, j:I
    :goto_158
    if-ge v6, v7, :cond_1a5

    .line 503
    if-eqz v2, :cond_196

    iget-object v12, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_196

    iget-object v12, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_196

    .line 506
    const-string v11, "FakeShutdown"

    const-string v12, "Don\'t remove homeActivity"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_193
    add-int/lit8 v6, v6, 0x1

    goto :goto_158

    .line 509
    :cond_196
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v11, v14}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_193

    .line 453
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #fakeActivity:Landroid/content/Intent;
    .end local v2           #homeInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #j:I
    .end local v7           #numTasks:I
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v10           #runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_1a2
    move-exception v11

    goto/16 :goto_19

    .line 513
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #fakeActivity:Landroid/content/Intent;
    .restart local v9       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v10       #runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1a5
    return-void
.end method

.method private lauchCamera()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 332
    const/4 v0, 0x1

    .line 334
    .local v0, cameraMode:Z
    :try_start_2
    sget-object v7, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v8, "com.sec.factory"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 335
    .local v5, myContext:Landroid/content/Context;
    const-string v7, "di_test_prefs"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 336
    .local v4, mPrefs:Landroid/content/SharedPreferences;
    const-string v7, "camera_auto_start_key"

    const-string v8, "ON"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, valueCameraAutoStartKey:Ljava/lang/String;
    const-string v7, "ON"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1f} :catch_5c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1f} :catch_65

    move-result v7

    if-eqz v7, :cond_5a

    .line 338
    const/4 v0, 0x1

    .line 348
    .end local v4           #mPrefs:Landroid/content/SharedPreferences;
    .end local v5           #myContext:Landroid/content/Context;
    .end local v6           #valueCameraAutoStartKey:Ljava/lang/String;
    :goto_23
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    if-eqz v0, :cond_6e

    .line 352
    const-string v7, "FakeShutdown"

    const-string v8, "!@launch camera"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.camera"

    const-string v8, "com.sec.android.app.camera.Camera"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v3, mNewComponent:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    const-string v7, "from-am"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    .end local v3           #mNewComponent:Landroid/content/ComponentName;
    :goto_54
    sget-object v7, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    return v0

    .line 340
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v4       #mPrefs:Landroid/content/SharedPreferences;
    .restart local v5       #myContext:Landroid/content/Context;
    .restart local v6       #valueCameraAutoStartKey:Ljava/lang/String;
    :cond_5a
    const/4 v0, 0x0

    goto :goto_23

    .line 342
    .end local v4           #mPrefs:Landroid/content/SharedPreferences;
    .end local v5           #myContext:Landroid/content/Context;
    .end local v6           #valueCameraAutoStartKey:Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 343
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FakeShutdown"

    const-string v8, "isLaunchCamera throws NameNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 344
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_65
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/SecurityException;
    const-string v7, "FakeShutdown"

    const-string v8, "isLaunchCamera throws SecurityException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 358
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_6e
    const-string v7, "FakeShutdown"

    const-string v8, "!@launch home or camera"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_54
.end method

.method private static makeAirplaneModeIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 372
    const-string v3, "FakeShutdown"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "want airplane state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, currentState:I
    if-ne p1, v0, :cond_55

    sget v3, Lcom/android/server/pm/FakeShutdown;->oldAirplaneMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_55

    .line 377
    const-string v2, "FakeShutdown"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplane mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", youWantMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "FakeShutdown"

    const-string v3, "already airplane state you want"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x0

    .line 385
    :goto_54
    return-object v1

    .line 382
    :cond_55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    if-nez p1, :cond_6d

    :goto_69
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_54

    :cond_6d
    const/4 v2, 0x1

    goto :goto_69
.end method

.method public static needFake(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-static {p0}, Lcom/android/server/pm/FakeShutdown;->updateBatteryState(Landroid/content/Context;)V

    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    .line 740
    :cond_10
    :goto_10
    return v1

    .line 714
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    .line 719
    sget-object v3, Lcom/android/server/pm/FakeShutdown;->sBatteryStatusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 720
    :try_start_20
    sget v2, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    .line 721
    const-string v2, "FakeShutdown"

    const-string v4, "!@wait for charge connected check"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_4a

    .line 723
    :try_start_2c
    sget-object v2, Lcom/android/server/pm/FakeShutdown;->sBatteryStatusLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_4a
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_31} :catch_41

    .line 727
    :goto_31
    :try_start_31
    const-string v2, "FakeShutdown"

    const-string v4, "!@finish charge connected check"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_4a

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, fake:Z
    sget v2, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 733
    const/4 v1, 0x0

    goto :goto_10

    .line 724
    .end local v1           #fake:Z
    :catch_41
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_42
    const-string v2, "FakeShutdown"

    const-string v4, "sBatteryStatusLock.wait()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 729
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v2

    .line 734
    .restart local v1       #fake:Z
    :cond_4d
    sget v2, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    if-nez v2, :cond_53

    .line 735
    const/4 v1, 0x1

    goto :goto_10

    .line 737
    :cond_53
    const-string v2, "FakeShutdown"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown power connected status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private resetShutdownThread()V
    .registers 3

    .prologue
    .line 311
    const-string v0, "FakeShutdown"

    const-string v1, "!@prepareScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->resetVars()V

    .line 313
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Log;->stopState()V

    .line 314
    return-void
.end method

.method public static updateBatteryState(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 702
    const/4 v0, 0x2

    sput v0, Lcom/android/server/pm/FakeShutdown;->powerConnected:I

    .line 703
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    return-void
.end method

.method private vibrate(IZ)V
    .registers 8
    .parameter "milisec"
    .parameter "wait"

    .prologue
    .line 517
    const/16 v0, 0x1f4

    .line 520
    .local v0, SHUTDOWN_VIBRATE_MS:I
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 522
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    :try_start_9
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_f

    .line 529
    :goto_c
    if-nez p2, :cond_18

    .line 536
    :goto_e
    return-void

    .line 523
    :catch_f
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FakeShutdown"

    const-string v4, "!@Failed to vibrate during shutdown."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 532
    .end local v1           #e:Ljava/lang/Exception;
    :cond_18
    const-wide/16 v3, 0x1f4

    :try_start_1a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 533
    :catch_1e
    move-exception v3

    goto :goto_e
.end method

.method private waitForAnimEnd(Lcom/android/server/pm/ShutdownDialog;)V
    .registers 5
    .parameter "dlg"

    .prologue
    .line 610
    if-nez p1, :cond_a

    .line 611
    const-string v0, "FakeShutdown"

    const-string v1, "no animation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_9
    return-void

    .line 613
    :cond_a
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 614
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@FAKE_STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/pm/FakeShutdown;->sState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private waitForAnimStart(Lcom/android/server/pm/ShutdownDialog;)V
    .registers 6
    .parameter "dlg"

    .prologue
    .line 317
    const-string v2, "FakeShutdown"

    const-string v3, "!@start wait for shutdown anim, maximum 2 sec"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/16 v2, 0x14

    if-ge v0, v2, :cond_14

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/ShutdownDialog;->drawState()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1c

    .line 328
    :cond_14
    const-string v2, "FakeShutdown"

    const-string v3, "!@finish wait for shutdown anim"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 323
    :cond_1c
    const-wide/16 v2, 0x64

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    .line 318
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 324
    :catch_24
    move-exception v1

    .line 325
    .local v1, unused:Ljava/lang/InterruptedException;
    const-string v2, "FakeShutdown"

    const-string v3, "waitForAnimStart sleep error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private waitForCamera()V
    .registers 8

    .prologue
    .line 579
    sget-object v5, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 580
    .local v0, actM:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    const/16 v5, 0xc

    if-ge v1, v5, :cond_43

    .line 581
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 582
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 583
    .local v3, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, topActivityName:Ljava/lang/String;
    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 585
    const-string v5, "FakeShutdown"

    const-string v6, "!@camera started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #topActivity:Landroid/content/ComponentName;
    .end local v4           #topActivityName:Ljava/lang/String;
    :goto_33
    return-void

    .line 589
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #topActivity:Landroid/content/ComponentName;
    .restart local v4       #topActivityName:Ljava/lang/String;
    :cond_34
    const-string v5, "FakeShutdown"

    const-string v6, "not yet"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-wide/16 v5, 0x1f4

    :try_start_3d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_4b

    .line 580
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 596
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #topActivity:Landroid/content/ComponentName;
    .end local v4           #topActivityName:Ljava/lang/String;
    :cond_43
    const-string v5, "FakeShutdown"

    const-string v6, "!@fail to launch camera"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 592
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #topActivity:Landroid/content/ComponentName;
    .restart local v4       #topActivityName:Ljava/lang/String;
    :catch_4b
    move-exception v5

    goto :goto_40
.end method

.method private waitForIntentBrDone(Landroid/content/Intent;Ljava/lang/String;II)V
    .registers 13
    .parameter "intent"
    .parameter "waitForWhat"
    .parameter "waitTimeOut"
    .parameter "sleepTime"

    .prologue
    const/4 v2, 0x0

    .line 621
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;

    .line 622
    new-instance v3, Lcom/android/server/pm/FakeShutdown$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/FakeShutdown$3;-><init>(Lcom/android/server/pm/FakeShutdown;)V

    .line 634
    .local v3, br:Landroid/content/BroadcastReceiver;
    sget-object v0, Lcom/android/server/pm/FakeShutdown;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4, p2}, Lcom/android/server/pm/FakeShutdown;->waitForNoify(Ljava/lang/Object;IILjava/lang/String;)V

    .line 636
    iput-object v2, p0, Lcom/android/server/pm/FakeShutdown;->syncObj:Ljava/lang/Object;

    .line 637
    return-void
.end method

.method private waitForNoify(Ljava/lang/Object;IILjava/lang/String;)V
    .registers 8
    .parameter "objSync"
    .parameter "sec"
    .parameter "sleep"
    .parameter "waitForWhat"

    .prologue
    .line 641
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for notify : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    monitor-enter p1

    .line 644
    if-nez p2, :cond_3a

    .line 645
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_41

    .line 651
    :goto_1e
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_43

    .line 652
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for notify - finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-nez p3, :cond_46

    .line 664
    :goto_39
    return-void

    .line 647
    :cond_3a
    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    :try_start_3d
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1e

    .line 649
    :catch_41
    move-exception v0

    goto :goto_1e

    .line 651
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 658
    :cond_46
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep after sync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    :try_start_61
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_7d

    .line 663
    :goto_64
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep after sync - finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 661
    :catch_7d
    move-exception v0

    goto :goto_64
.end method

.method private waitForPhoneOff(I)V
    .registers 11
    .parameter "timeoutSec"

    .prologue
    .line 390
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 391
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x0

    .line 393
    .local v4, radioOff:Z
    const/16 v0, 0x1f4

    .line 394
    .local v0, PHONE_STATE_POLL_SLEEP_MSEC:I
    mul-int/lit16 v6, p1, 0x3e8

    div-int/lit16 v5, v6, 0x1f4

    .line 396
    .local v5, timeoutCount:I
    const/4 v2, 0x0

    .local v2, loopCount:I
    :goto_12
    if-ge v2, v5, :cond_24

    .line 398
    :try_start_14
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_4a

    move-result v6

    if-nez v6, :cond_48

    const/4 v4, 0x1

    .line 403
    :goto_1b
    if-eqz v4, :cond_54

    .line 404
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_24
    const-string v6, "FakeShutdown"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@off takes ms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit16 v8, v2, 0x1f4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-nez v4, :cond_47

    .line 414
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_47
    return-void

    .line 398
    :cond_48
    const/4 v4, 0x0

    goto :goto_1b

    .line 399
    :catch_4a
    move-exception v1

    .line 400
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "FakeShutdown"

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v4, 0x1

    goto :goto_1b

    .line 407
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_54
    const-string v6, "FakeShutdown"

    const-string v7, "!@before sleep"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 409
    const-string v6, "FakeShutdown"

    const-string v7, "!@after sleep"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 153
    sget v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 154
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->beginFastboot()V

    .line 160
    :goto_8
    return-void

    .line 155
    :cond_9
    sget v0, Lcom/android/server/pm/FakeShutdown;->sState:I

    if-nez v0, :cond_11

    .line 156
    invoke-direct {p0}, Lcom/android/server/pm/FakeShutdown;->beginFakeShutdown()V

    goto :goto_8

    .line 158
    :cond_11
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fakeshutdown run else by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/pm/FakeShutdown;->sState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
