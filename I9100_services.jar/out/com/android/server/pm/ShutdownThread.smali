.class public final Lcom/android/server/pm/ShutdownThread;
.super Lcom/android/server/pm/ShutdownThreadFeature;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownThread$Led;,
        Lcom/android/server/pm/ShutdownThread$Log;,
        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field public static LOG_BACKUP_FILE_NAME:Ljava/lang/String; = null

.field public static LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static dlgAnim:Lcom/android/server/pm/ShutdownDialog;

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mFakeShutdown:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mSlient:Z

.field private static final sInstance:Lcom/android/server/pm/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 114
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 115
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 129
    new-instance v0, Lcom/android/server/pm/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/power_off_reset_reason.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->LOG_BACKUP_FILE_NAME:Ljava/lang/String;

    .line 165
    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 147
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownThreadFeature;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 2

    .prologue
    .line 662
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_3
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 664
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .registers 3

    .prologue
    .line 650
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_3
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_11

    .line 652
    const-string v0, "ShutdownThread"

    const-string v2, "shut down already running , return true"

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v0, 0x1

    monitor-exit v1

    .line 656
    :goto_10
    return v0

    .line 655
    :cond_11
    const-string v0, "ShutdownThread"

    const-string v2, "shut down is not started , return false"

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_10

    .line 658
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput-boolean p0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 13
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 352
    sget-object v6, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 353
    :try_start_6
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_13

    .line 354
    const-string v5, "ShutdownThread"

    const-string v7, "!@Request to shutdown already running, returning."

    invoke-static {v5, v7}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v6

    .line 471
    :goto_12
    return-void

    .line 357
    :cond_13
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 358
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Log;->startState()V

    .line 359
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_e0

    .line 360
    const-string v5, "ShutdownThread"

    const-string v6, "beginShutdownSequence"

    invoke-static {v5, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {v10}, Lcom/android/server/pm/ShutdownThread;->setInputKeys(Z)V

    .line 367
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 368
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3d
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-nez v5, :cond_51

    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v5, :cond_51

    if-nez p1, :cond_e3

    const-string v5, "AutoPowerOff"

    sget-object v6, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 376
    :cond_51
    sput-boolean v9, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 383
    :goto_53
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object p0, v5, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    .line 384
    sget-object v6, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v6, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 387
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sput-object v8, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 389
    :try_start_67
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 391
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 392
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_85} :catch_f1

    .line 398
    :goto_85
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 400
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v5, "shutdown"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-eqz v5, :cond_fe

    .line 441
    :goto_98
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sput-object v8, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 442
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_c9

    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v5, :cond_c9

    .line 444
    :try_start_aa
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "ShutdownThread-screen"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 446
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 447
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_c9
    .catch Ljava/lang/SecurityException; {:try_start_aa .. :try_end_c9} :catch_18b

    .line 454
    :cond_c9
    :goto_c9
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    if-eqz v5, :cond_199

    .line 455
    const-string v5, "ShutdownThread"

    const-string v6, "mFakeShutdown, start"

    invoke-static {v5, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v2, Lcom/android/server/pm/FakeShutdown;

    sget-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {v2, p0, v5}, Lcom/android/server/pm/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/pm/ShutdownDialog;)V

    .line 457
    .local v2, fake:Lcom/android/server/pm/FakeShutdown;
    invoke-virtual {v2}, Lcom/android/server/pm/FakeShutdown;->start()V

    goto/16 :goto_12

    .line 359
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #fake:Lcom/android/server/pm/FakeShutdown;
    :catchall_e0
    move-exception v5

    :try_start_e1
    monitor-exit v6
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v5

    .line 377
    :cond_e3
    invoke-static {p0}, Lcom/android/server/pm/FakeShutdown;->needFake(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 378
    sput-boolean v10, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    goto/16 :goto_53

    .line 380
    :cond_ed
    sput-boolean v9, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    goto/16 :goto_53

    .line 393
    :catch_f1
    move-exception v1

    .line 394
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 395
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sput-object v8, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_85

    .line 406
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_fe
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    if-eqz v5, :cond_118

    .line 408
    new-instance v5, Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 409
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    const-string v6, "/system/media/video/shutdown/warmdown.qmg"

    const-string v7, "/system/media/audio/ui/Tab.ogg"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/ShutdownDialog;->prepareShutdown(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-virtual {v5}, Lcom/android/server/pm/ShutdownDialog;->show()V

    goto :goto_98

    .line 413
    :cond_118
    invoke-static {}, Lcom/android/server/pm/ShutdownDialog;->existAnim()Z

    move-result v5

    if-eqz v5, :cond_131

    .line 415
    new-instance v5, Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    .line 416
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/pm/ShutdownDialog;->prepareShutdown(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    invoke-virtual {v5}, Lcom/android/server/pm/ShutdownDialog;->show()V

    goto/16 :goto_98

    .line 423
    :cond_131
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 424
    .local v4, pd:Landroid/app/ProgressDialog;
    const v5, 0x1040183

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    const v5, 0x1040187

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 427
    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 428
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 430
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 431
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 433
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 434
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 435
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 437
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_98

    .line 448
    .end local v4           #pd:Landroid/app/ProgressDialog;
    :catch_18b
    move-exception v1

    .line 449
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 450
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sput-object v8, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_c9

    .line 459
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_199
    sget-boolean v5, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-eqz v5, :cond_1ab

    .line 461
    const-string v5, "ShutdownThread"

    const-string v6, "shutdown thread slient shutdown"

    invoke-static {v5, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/pm/ShutdownThread;->start()V

    goto/16 :goto_12

    .line 466
    :cond_1ab
    const-string v5, "ShutdownThread"

    const-string v6, "normal shutdown thread will start"

    invoke-static {v5, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    new-instance v6, Lcom/android/server/pm/ShutdownThread$3;

    invoke-direct {v6}, Lcom/android/server/pm/ShutdownThread$3;-><init>()V

    iput-object v6, v5, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 469
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/pm/ShutdownThread;->start()V

    goto/16 :goto_12
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    .prologue
    .line 644
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static fakeShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x0

    .line 333
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_4
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_11

    .line 335
    const-string v0, "ShutdownThread"

    const-string v2, "!@fakeShutdown : shut down already running."

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v1

    .line 349
    :goto_10
    return-void

    .line 338
    :cond_11
    invoke-static {}, Lcom/android/server/pm/FakeShutdown;->fakeState()I

    move-result v0

    if-eqz v0, :cond_23

    .line 339
    const-string v0, "ShutdownThread"

    const-string v2, "!@fakeShutdown : fakeshutdown already done"

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v1

    goto :goto_10

    .line 342
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 343
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 344
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 346
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 348
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_10
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 10

    .prologue
    const/16 v9, 0x1b0

    const/4 v8, -0x1

    .line 697
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, fname:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 700
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2800

    cmp-long v4, v4, v6

    if-lez v4, :cond_5c

    .line 701
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_BACKUP_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, mBackupfname:Ljava/io/File;
    const-string v4, "ShutdownThread"

    const-string v5, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 705
    const-string v4, "ShutdownThread"

    const-string v5, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 709
    :cond_39
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 710
    .local v3, rename:Z
    if-eqz v3, :cond_5c

    .line 711
    const-string v4, "ShutdownThread"

    const-string v5, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .local v2, new_fname:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 714
    const-string v4, "ShutdownThread"

    const-string v5, "power_off_reset_reason.txt is re-created."

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v1           #mBackupfname:Ljava/io/File;
    .end local v2           #new_fname:Ljava/io/File;
    .end local v3           #rename:Z
    :goto_5b
    return-object v2

    :cond_5c
    move-object v2, v0

    goto :goto_5b
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    :goto_7
    return-void

    .line 305
    :cond_8
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 307
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 308
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 309
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 310
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_7
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 612
    if-eqz p0, :cond_34

    .line 613
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_1a
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2b

    .line 636
    :cond_1d
    :goto_1d
    #calls: Lcom/android/server/pm/ShutdownThread$Led;->Off()V
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->access$400()V

    .line 639
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 641
    return-void

    .line 616
    :catch_2b
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1d

    .line 619
    .end local v0           #e:Ljava/lang/Exception;
    :cond_34
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v2, :cond_1d

    .line 621
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 623
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_3f
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4a

    .line 631
    :goto_42
    const-wide/16 v2, 0x1f4

    :try_start_44
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_1d

    .line 632
    :catch_48
    move-exception v2

    goto :goto_1d

    .line 624
    :catch_4a
    move-exception v0

    .line 626
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_42
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v3, 0x1

    .line 321
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    :goto_7
    return-void

    .line 324
    :cond_8
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot safe reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 326
    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 327
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 329
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_7
.end method

.method public static releaseWakeLocks()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 735
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 736
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 737
    sput-object v1, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 739
    :cond_c
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    .line 740
    sget-object v0, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 741
    sput-object v1, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 743
    :cond_17
    return-void
.end method

.method public static resetVars()V
    .registers 2

    .prologue
    .line 723
    const-string v0, "ShutdownThread"

    const-string v1, "reset shutdown variables"

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    const/4 v0, 0x0

    :try_start_b
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 727
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 728
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 729
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 730
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 731
    monitor-exit v1

    .line 732
    return-void

    .line 731
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 11
    .parameter "ex"

    .prologue
    .line 668
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-eqz v7, :cond_7

    .line 694
    :cond_6
    :goto_6
    return-void

    .line 671
    :cond_7
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 673
    .local v2, fname:Ljava/io/File;
    const/4 v4, 0x0

    .line 675
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_43
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_4a

    .line 676
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 677
    .local v6, pw:Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 678
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, dateString:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 681
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 682
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_60
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3c} :catch_63

    .line 686
    if-eqz v5, :cond_41

    .line 688
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_5b

    :cond_41
    :goto_41
    move-object v4, v5

    .line 693
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 686
    .end local v0           #dateString:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catchall_43
    move-exception v7

    :goto_44
    if-eqz v4, :cond_49

    .line 688
    :try_start_46
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_56

    .line 686
    :cond_49
    :goto_49
    throw v7

    .line 683
    :catch_4a
    move-exception v7

    .line 686
    :goto_4b
    if-eqz v4, :cond_6

    .line 688
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_6

    .line 689
    :catch_51
    move-exception v1

    .line 690
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 689
    .end local v1           #e:Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 690
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 689
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v0       #dateString:Ljava/lang/String;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #pw:Ljava/io/PrintWriter;
    :catch_5b
    move-exception v1

    .line 690
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 686
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v6           #pw:Ljava/io/PrintWriter;
    :catchall_60
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_44

    .line 683
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_63
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4b
.end method

.method static setInputKeys(Z)V
    .registers 6
    .parameter "bool"

    .prologue
    .line 868
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 871
    .local v1, im:Landroid/hardware/input/IInputManager;
    :try_start_a
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_26

    .line 877
    :goto_25
    return-void

    .line 873
    :catch_26
    move-exception v0

    .line 874
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x0

    .line 159
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 160
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 162
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 163
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .registers 15
    .parameter "aContext"
    .parameter "confirm"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 177
    sget-object v9, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 178
    :try_start_5
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_12

    .line 179
    const-string v8, "ShutdownThread"

    const-string v10, "!@Request to shutdown already running, returning."

    invoke-static {v8, v10}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_3e

    .line 266
    :goto_11
    return-void

    .line 185
    :cond_12
    :try_start_12
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_24

    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_42

    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v10, "GlobalActions restart"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 186
    :cond_24
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 187
    .local v7, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v7, :cond_42

    .line 188
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_42

    .line 189
    const-string v8, "ShutdownThread"

    const-string v10, "Shutdown Disabled by Administrator"

    invoke-static {v8, v10}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3c} :catch_41

    .line 190
    :try_start_3c
    monitor-exit v9

    goto :goto_11

    .line 199
    .end local v7           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_3e
    move-exception v8

    monitor-exit v9
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v8

    .line 194
    :catch_41
    move-exception v8

    .line 198
    :cond_42
    const/4 v8, 0x1

    :try_start_43
    sput-boolean v8, Lcom/android/server/pm/ShutdownThread;->sIsConfirming:Z

    .line 199
    monitor-exit v9
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_10e

    .line 204
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v8, 0x103012b

    invoke-direct {v1, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 209
    .local v1, context:Landroid/content/Context;
    :goto_5c
    new-instance v3, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shutdown caller:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_118

    const-string v8, ""

    :goto_77
    invoke-direct {v3, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, ex:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 212
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 216
    .local v5, longPressBehavior:I
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_11c

    .line 217
    const v6, 0x104018d

    .line 226
    .local v6, resourceId:I
    :goto_8f
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p1, :cond_15a

    .line 229
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    new-instance v10, Lcom/android/server/pm/ShutdownThread$2;

    invoke-direct {v10, v1, p1}, Lcom/android/server/pm/ShutdownThread$2;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    new-instance v10, Lcom/android/server/pm/ShutdownThread$1;

    invoke-direct {v10}, Lcom/android/server/pm/ShutdownThread$1;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 245
    .local v2, dialog:Landroid/app/AlertDialog;
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_136

    .line 246
    const v8, 0x104018c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    :goto_e8
    iput-object v2, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 253
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 255
    const-string v8, "keyguard"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 256
    .local v4, kgm:Landroid/app/KeyguardManager;
    if-eqz v4, :cond_150

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_150

    .line 257
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 261
    :goto_109
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_11

    .line 206
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #kgm:Landroid/app/KeyguardManager;
    .end local v5           #longPressBehavior:I
    .end local v6           #resourceId:I
    :cond_10e
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v8, 0x1030128

    invoke-direct {v1, p0, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v1       #context:Landroid/content/Context;
    goto/16 :goto_5c

    .line 209
    :cond_118
    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    goto/16 :goto_77

    .line 218
    .restart local v3       #ex:Ljava/lang/Exception;
    .restart local v5       #longPressBehavior:I
    :cond_11c
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_12b

    .line 219
    if-ne v5, v12, :cond_127

    const v6, 0x104018b

    .restart local v6       #resourceId:I
    :goto_125
    goto/16 :goto_8f

    .end local v6           #resourceId:I
    :cond_127
    const v6, 0x1040189

    goto :goto_125

    .line 222
    :cond_12b
    if-ne v5, v12, :cond_132

    const v6, 0x104018a

    .restart local v6       #resourceId:I
    :goto_130
    goto/16 :goto_8f

    .end local v6           #resourceId:I
    :cond_132
    const v6, 0x1040188

    goto :goto_130

    .line 247
    .restart local v0       #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .restart local v2       #dialog:Landroid/app/AlertDialog;
    .restart local v6       #resourceId:I
    :cond_136
    sget-boolean v8, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_145

    .line 248
    const v8, 0x1040193

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 250
    :cond_145
    const v8, 0x1040183

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 259
    .restart local v4       #kgm:Landroid/app/KeyguardManager;
    :cond_150
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_109

    .line 263
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #kgm:Landroid/app/KeyguardManager;
    :cond_15a
    const-string v8, "ShutdownThread"

    const-string v9, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {v1, p1}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_11
.end method

.method public static silentShutdown(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    .line 168
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 169
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 170
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->mFakeShutdown:Z

    .line 171
    invoke-static {p0, v1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 172
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 476
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method actionDoneMount()V
    .registers 3

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneMount:Z

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 22

    .prologue
    .line 492
    #calls: Lcom/android/server/pm/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->access$300()V

    .line 493
    new-instance v5, Lcom/android/server/pm/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShutdownThread$4;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 500
    .local v5, br:Landroid/content/BroadcastReceiver;
    const-string v2, "BUILD_DESC"

    const-string v3, "ro.build.description"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShutdownThread;->preShutdownRadios(I)V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_142

    const-string v2, "1"

    :goto_29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_146

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 509
    .local v20, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_4d

    .line 517
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_4d
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    .line 528
    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 529
    :goto_7c
    :try_start_7c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_95

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    .line 531
    .local v11, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_14a

    .line 532
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown broadcast timed out"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v11           #delay:J
    :cond_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_156

    .line 542
    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down activity manager..."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 546
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_ae

    .line 548
    const/16 v2, 0x2710

    :try_start_ab
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_ae} :catch_17c

    .line 554
    :cond_ae
    :goto_ae
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V

    .line 557
    new-instance v19, Lcom/android/server/pm/ShutdownThread$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$5;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 564
    .local v19, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down MountService"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    add-long v14, v2, v6

    .line 569
    .local v14, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v3

    .line 571
    :try_start_dd
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    .line 573
    .local v18, mount:Landroid/os/storage/IMountService;
    if-eqz v18, :cond_159

    .line 574
    invoke-interface/range {v18 .. v19}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_ec
    .catchall {:try_start_dd .. :try_end_ec} :catchall_16a
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_ec} :catch_161

    .line 581
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :goto_ec
    :try_start_ec
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_12b

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    .line 583
    .restart local v11       #delay:J
    const-string v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@MountService delay : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", systemTime : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_16d

    .line 585
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown wait timed out"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v11           #delay:J
    :cond_12b
    monitor-exit v3
    :try_end_12c
    .catchall {:try_start_ec .. :try_end_12c} :catchall_16a

    .line 596
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    if-eqz v2, :cond_13a

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mSlient:Z

    if-nez v2, :cond_13a

    .line 598
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->dlgAnim:Lcom/android/server/pm/ShutdownDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 601
    :cond_13a
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 602
    return-void

    .line 508
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v20           #reason:Ljava/lang/String;
    :cond_142
    const-string v2, "0"

    goto/16 :goto_29

    :cond_146
    const-string v2, ""

    goto/16 :goto_33

    .line 536
    .restart local v11       #delay:J
    .restart local v16       #endTime:J
    .restart local v20       #reason:Ljava/lang/String;
    :cond_14a
    :try_start_14a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_151
    .catchall {:try_start_14a .. :try_end_151} :catchall_156
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_151} :catch_153

    goto/16 :goto_7c

    .line 537
    :catch_153
    move-exception v2

    goto/16 :goto_7c

    .line 540
    .end local v11           #delay:J
    :catchall_156
    move-exception v2

    :try_start_157
    monitor-exit v3
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    throw v2

    .line 576
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v14       #endShutTime:J
    .restart local v18       #mount:Landroid/os/storage/IMountService;
    .restart local v19       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_159
    :try_start_159
    const-string v2, "ShutdownThread"

    const-string v4, "!@MountService unavailable for shutdown"

    invoke-static {v2, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_159 .. :try_end_160} :catchall_16a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_160} :catch_161

    goto :goto_ec

    .line 578
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :catch_161
    move-exception v13

    .line 579
    .local v13, e:Ljava/lang/Exception;
    :try_start_162
    const-string v2, "ShutdownThread"

    const-string v4, "!@Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_ec

    .line 594
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_16a
    move-exception v2

    monitor-exit v3
    :try_end_16c
    .catchall {:try_start_162 .. :try_end_16c} :catchall_16a

    throw v2

    .line 589
    .restart local v11       #delay:J
    :cond_16d
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_174
    .catchall {:try_start_16d .. :try_end_174} :catchall_16a
    .catch Ljava/lang/InterruptedException; {:try_start_16d .. :try_end_174} :catch_176

    goto/16 :goto_ec

    .line 590
    :catch_176
    move-exception v13

    .line 591
    .local v13, e:Ljava/lang/InterruptedException;
    :try_start_177
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_16a

    goto/16 :goto_ec

    .line 549
    .end local v11           #delay:J
    .end local v13           #e:Ljava/lang/InterruptedException;
    .end local v14           #endShutTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_17c
    move-exception v2

    goto/16 :goto_ae
.end method
