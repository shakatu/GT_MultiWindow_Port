.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$HeartbeatHandler;
    }
.end annotation


# static fields
.field static final DB:Z = false

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MONITOR:I = 0xa9e

.field static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_RESTART:I = 0xea60

.field static final TIME_TO_WAIT:I = 0x7530

.field static WSyncCount:I

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field mForceKillSystem:Z

.field final mHandler:Landroid/os/Handler;

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field mPhonePid:I

.field mPower:Lcom/android/server/PowerManagerService;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 389
    sput v3, Lcom/android/server/Watchdog;->WSyncCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 184
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    .line 93
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 94
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 103
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 104
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    .line 105
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    .line 106
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    .line 107
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    .line 108
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    .line 185
    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    .line 186
    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .registers 11
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 367
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 369
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 370
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 371
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 372
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 373
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 375
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 377
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 378
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_37

    .line 381
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 382
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 385
    :cond_37
    return-wide v0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 496
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, tracesPath:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 502
    :cond_f
    :goto_f
    return-object v1

    .line 501
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 180
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 222
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 224
    return-void
.end method

.method checkReboot(Z)V
    .registers 23
    .parameter "fromAlarm"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_22

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 231
    .local v8, rebootInterval:I
    :goto_c
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 232
    if-gtz v8, :cond_31

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 309
    :goto_21
    return-void

    .line 227
    .end local v8           #rebootInterval:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_interval"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    goto :goto_c

    .line 239
    .restart local v8       #rebootInterval:I
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    if-ltz v17, :cond_102

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v11, v0

    .line 243
    .local v11, rebootStartTime:J
    :goto_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    if-ltz v17, :cond_112

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_55
    const-wide/16 v19, 0x3e8

    mul-long v13, v17, v19

    .line 247
    .local v13, rebootWindowMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_122

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_6c
    const-wide/16 v19, 0x3e8

    mul-long v15, v17, v19

    .line 252
    .local v15, recheckInterval:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 257
    monitor-enter p0

    .line 258
    :try_start_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 259
    .local v4, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 262
    .local v6, realStartTime:J
    mul-int/lit8 v17, v8, 0x18

    mul-int/lit8 v17, v17, 0x3c

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v9, v0

    .line 263
    .local v9, rebootIntervalMillis:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v17, v0

    if-nez v17, :cond_a9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    sub-long v19, v9, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_142

    .line 265
    :cond_a9
    if-eqz p1, :cond_132

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_132

    .line 267
    const/16 v17, 0xaf8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    long-to-int v0, v9

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, ""

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 270
    const-string v17, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 271
    monitor-exit p0

    goto/16 :goto_21

    .line 303
    .end local v4           #now:J
    .end local v6           #realStartTime:J
    .end local v9           #rebootIntervalMillis:J
    :catchall_ff
    move-exception v17

    monitor-exit p0
    :try_end_101
    .catchall {:try_start_74 .. :try_end_101} :catchall_ff

    throw v17

    .line 239
    .end local v11           #rebootStartTime:J
    .end local v13           #rebootWindowMillis:J
    .end local v15           #recheckInterval:J
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_start_time"

    const-wide/16 v19, 0x2a30

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    goto/16 :goto_42

    .line 243
    .restart local v11       #rebootStartTime:J
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_window"

    const-wide/16 v19, 0xe10

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_55

    .line 247
    .restart local v13       #rebootWindowMillis:J
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "memcheck_recheck_interval"

    const-wide/16 v19, 0x12c

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_6c

    .line 275
    .restart local v4       #now:J
    .restart local v6       #realStartTime:J
    .restart local v9       #rebootIntervalMillis:J
    .restart local v15       #recheckInterval:J
    :cond_132
    cmp-long v17, v4, v6

    if-gez v17, :cond_16b

    .line 277
    :try_start_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 303
    :cond_142
    :goto_142
    monitor-exit p0
    :try_end_143
    .catchall {:try_start_136 .. :try_end_143} :catchall_ff

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_21

    .line 279
    :cond_16b
    add-long v17, v6, v13

    cmp-long v17, v4, v17

    if-gez v17, :cond_1e7

    .line 280
    :try_start_171
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, doit:Ljava/lang/String;
    const/16 v18, 0xaf8

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v20, 0x4

    if-eqz v3, :cond_1c6

    move-object/from16 v17, v3

    :goto_1b3
    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 284
    if-nez v3, :cond_1c9

    .line 285
    const-string v17, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 286
    monitor-exit p0

    goto/16 :goto_21

    .line 281
    :cond_1c6
    const-string v17, ""

    goto :goto_1b3

    .line 291
    :cond_1c9
    add-long v17, v4, v15

    add-long v19, v6, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_1e3

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    goto/16 :goto_142

    .line 295
    :cond_1e3
    add-long v6, v4, v15

    goto/16 :goto_142

    .line 299
    .end local v3           #doit:Ljava/lang/String;
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_1f6
    .catchall {:try_start_171 .. :try_end_1f6} :catchall_ff

    move-result-wide v6

    goto/16 :goto_142
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 192
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 193
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 194
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 195
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 197
    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    .line 202
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    .line 207
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 214
    :cond_b
    monitor-exit p0

    .line 215
    return-void

    .line 214
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 315
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 317
    .local v0, pms:Lcom/android/server/PowerManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method retrieveBrutalityAmount()V
    .registers 4

    .prologue
    .line 326
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 330
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_20

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_10
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 334
    return-void

    .line 326
    :cond_15
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_screen_off"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 330
    :cond_20
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_alarm"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_10
.end method

.method public run()V
    .registers 15

    .prologue
    .line 393
    const/4 v9, 0x0

    .line 395
    .local v9, waitedHalf:Z
    :goto_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 396
    iget-object v10, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa9e

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    monitor-enter p0

    .line 399
    const-wide/16 v7, 0x7530

    .line 402
    .local v7, timeout:J
    :try_start_e
    const-string v10, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@Sync "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/server/Watchdog;->WSyncCount:I

    add-int/lit8 v13, v12, 0x1

    sput v13, Lcom/android/server/Watchdog;->WSyncCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 409
    .local v5, start:J
    :goto_30
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-lez v10, :cond_51

    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_4e

    if-nez v10, :cond_51

    .line 411
    :try_start_3a
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4e
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_47

    .line 415
    :goto_3d
    const-wide/16 v10, 0x7530

    :try_start_3f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    sub-long v7, v10, v12

    goto :goto_30

    .line 412
    :catch_47
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v10, "Watchdog"

    invoke-static {v10, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 434
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v5           #start:J
    :catchall_4e
    move-exception v10

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_4e

    throw v10

    .line 418
    .restart local v5       #start:J
    :cond_51
    :try_start_51
    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    if-eqz v10, :cond_5c

    iget-boolean v10, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    if-nez v10, :cond_5c

    .line 420
    const/4 v9, 0x0

    .line 421
    monitor-exit p0

    goto :goto_1

    .line 424
    :cond_5c
    if-nez v9, :cond_79

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v3, pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v10, v3, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 431
    const/4 v9, 0x1

    .line 432
    monitor-exit p0

    goto :goto_1

    .line 434
    .end local v3           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_51 .. :try_end_7a} :catchall_4e

    .line 440
    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-eqz v10, :cond_11b

    iget-object v10, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, name:Ljava/lang/String;
    :goto_88
    const/16 v10, 0xaf2

    invoke-static {v10, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .restart local v3       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget v10, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v10, :cond_aa

    iget v10, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_aa
    if-nez v9, :cond_11f

    const/4 v10, 0x1

    :goto_ad
    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v10, v3, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 454
    .local v4, stack:Ljava/io/File;
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 458
    invoke-direct {p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 462
    const-string v10, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WATCHDOG caused by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v10, "-k -t -z -d -o /data/log/dumpstate_sys_watchdog"

    invoke-static {v10}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 464
    const-wide/16 v10, 0x2710

    :try_start_dc
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_df
    .catch Ljava/lang/InterruptedException; {:try_start_dc .. :try_end_df} :catch_129

    .line 470
    :goto_df
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string v10, "watchdogWriteToDropbox"

    invoke-direct {v0, p0, v10, v2, v4}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 477
    .local v0, dropboxThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    const-wide/16 v10, 0x7d0

    :try_start_eb
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ee} :catch_12b

    .line 483
    :goto_ee
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v10

    if-nez v10, :cond_121

    .line 484
    const-string v10, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 486
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 491
    :goto_118
    const/4 v9, 0x0

    .line 492
    goto/16 :goto_1

    .line 440
    .end local v0           #dropboxThread:Ljava/lang/Thread;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #stack:Ljava/io/File;
    :cond_11b
    const-string v2, "null"

    goto/16 :goto_88

    .line 449
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11f
    const/4 v10, 0x0

    goto :goto_ad

    .line 488
    .restart local v0       #dropboxThread:Ljava/lang/Thread;
    .restart local v4       #stack:Ljava/io/File;
    :cond_121
    const-string v10, "Watchdog"

    const-string v11, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    .line 465
    .end local v0           #dropboxThread:Ljava/lang/Thread;
    :catch_129
    move-exception v10

    goto :goto_df

    .line 480
    .restart local v0       #dropboxThread:Ljava/lang/Thread;
    :catch_12b
    move-exception v10

    goto :goto_ee
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .registers 7
    .parameter "curTime"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_f

    .line 347
    :cond_c
    const-string v0, "battery"

    .line 360
    :goto_e
    return-object v0

    .line 350
    :cond_f
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->timeSinceScreenOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 352
    :cond_24
    const-string v0, "screen"

    goto :goto_e

    .line 355
    :cond_27
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3f

    .line 357
    :cond_3c
    const-string v0, "alarm"

    goto :goto_e

    .line 360
    :cond_3f
    const/4 v0, 0x0

    goto :goto_e
.end method
