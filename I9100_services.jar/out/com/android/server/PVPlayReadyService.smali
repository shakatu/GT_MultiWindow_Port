.class public Lcom/android/server/PVPlayReadyService;
.super Landroid/app/Service;
.source "PVPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PVPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat; = null

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final PLAYREADY_BEFORE_TIME_FILE:Ljava/lang/String; = "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

.field private static final TAG:Ljava/lang/String; = "PVPLayReadyService"

.field public static final TIME_CHANGE:I = 0x4

.field private static beforeBeforeTime:J

.field private static firstNetworkTime:Z

.field private static timeFormat:Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    .line 71
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/PVPlayReadyService;->firstNetworkTime:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 63
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->nitzReceived()V

    return-void
.end method

.method private static native autoUpdate()V
.end method

.method private static native bootComplete()V
.end method

.method private getBeforeTime()J
    .registers 13

    .prologue
    const-wide/16 v7, -0x1

    .line 303
    const-wide/16 v0, 0x0

    .line 304
    .local v0, beforeTime:J
    const/4 v2, 0x0

    .line 306
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "data/data/.drm/.playready/PVPlayReadyBeforeTime.ini"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_11} :catch_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_9b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_ae

    .line 307
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_11
    const-string v9, "PVPLayReadyService"

    const-string v10, "FileReading Start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, ""

    .line 309
    .local v5, nextLine:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 311
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_28} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_28} :catch_cf
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_cc

    goto :goto_1f

    .line 320
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_29
    move-exception v4

    move-object v2, v3

    .line 322
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_bc

    .line 334
    if-eqz v2, :cond_33

    .line 336
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_b9

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_33
    :goto_33
    move-wide v7, v0

    .line 341
    :cond_34
    :goto_34
    return-wide v7

    .line 313
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_35
    :try_start_35
    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 315
    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_73

    sget-wide v9, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    cmp-long v9, v9, v0

    if-nez v9, :cond_73

    const-string v9, "PVPLayReadyService"

    const-string v10, "returning because of double intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_6c} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_6c} :catch_cf
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_6c} :catch_cc

    .line 334
    if-eqz v3, :cond_71

    .line 336
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_c5

    :cond_71
    :goto_71
    move-object v2, v3

    .line 315
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_34

    .line 316
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :cond_73
    :try_start_73
    const-string v9, "PVPLayReadyService"

    const-string v10, "proper beforetime so proceed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v0, Lcom/android/server/PVPlayReadyService;->beforeBeforeTime:J

    .line 317
    const-string v9, "PVPLayReadyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beforeTIme in Long is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_94} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_94} :catch_cf
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_94} :catch_cc

    .line 334
    if-eqz v3, :cond_99

    .line 336
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_c7

    :cond_99
    :goto_99
    move-object v2, v3

    .line 339
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_33

    .line 323
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_9b
    move-exception v4

    .line 325
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_9c
    :try_start_9c
    const-string v9, "PVPlayReadyService"

    const-string v10, "Returning from PVPlayReadyService.java because beforetime.ini not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_bc

    .line 334
    if-eqz v2, :cond_34

    .line 336
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_34

    .line 337
    :catch_ac
    move-exception v9

    goto :goto_34

    .line 329
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_ae
    move-exception v4

    .line 331
    .local v4, e:Ljava/io/IOException;
    :goto_af
    :try_start_af
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_bc

    .line 334
    if-eqz v2, :cond_33

    .line 336
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto/16 :goto_33

    .line 337
    .end local v4           #e:Ljava/io/IOException;
    :catch_b9
    move-exception v7

    goto/16 :goto_33

    .line 334
    :catchall_bc
    move-exception v7

    :goto_bd
    if-eqz v2, :cond_c2

    .line 336
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 334
    :cond_c2
    :goto_c2
    throw v7

    .line 337
    :catch_c3
    move-exception v8

    goto :goto_c2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :catch_c5
    move-exception v9

    goto :goto_71

    :catch_c7
    move-exception v7

    goto :goto_99

    .line 334
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catchall_c9
    move-exception v7

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_bd

    .line 329
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_cc
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_af

    .line 323
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_cf
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_9c

    .line 320
    :catch_d2
    move-exception v4

    goto/16 :goto_2b
.end method

.method private handleConnectivityStateChanged()V
    .registers 4

    .prologue
    .line 215
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 216
    .local v1, policy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 219
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/server/PVPlayReadyService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PVPlayReadyService$1;-><init>(Lcom/android/server/PVPlayReadyService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method private static native nitzReceived()V
.end method

.method private static native ntpReceived(JJ)V
.end method

.method private static native testMethod()V
.end method

.method private static native updateTime(JJ)V
.end method

.method private userUpdateHandler()V
    .registers 8

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, nowTimeFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, autoEnable:I
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 259
    .local v1, now:Ljava/util/Date;
    sget-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_6f

    .line 261
    const-string v4, "24"

    sput-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    .line 264
    :cond_6f
    if-nez v2, :cond_73

    .line 266
    const-string v2, "24"

    .line 269
    :cond_73
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v4, "PVPLayReadyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v4, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 273
    const-string v4, "PVPLayReadyService"

    const-string v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-nez v0, :cond_c1

    .line 277
    const-string v4, "PVPLayReadyService"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->handleUserUpdatedTimeUpdation()V

    .line 300
    :goto_c0
    return-void

    .line 282
    :cond_c1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 284
    .local v3, telephonymanager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_d7

    .line 285
    const-string v4, "PVPLayReadyService"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->handleUserUpdatedTimeUpdation()V

    goto :goto_c0

    .line 290
    :cond_d7
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->autoUpdate()V

    goto :goto_c0

    .line 296
    .end local v3           #telephonymanager:Landroid/telephony/TelephonyManager;
    :cond_db
    const-string v4, "PVPLayReadyService"

    const-string v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sput-object v2, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    goto :goto_c0
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .registers 7

    .prologue
    .line 345
    const-wide/16 v1, 0x0

    .line 346
    .local v1, nitzTime:J
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 347
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/server/PVPlayReadyService$2;

    invoke-direct {v3, p0}, Lcom/android/server/PVPlayReadyService$2;-><init>(Lcom/android/server/PVPlayReadyService;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method

.method public handleUserUpdatedTimeUpdation()V
    .registers 10

    .prologue
    .line 358
    const-wide/16 v2, 0x0

    .line 359
    .local v2, beforeTime:J
    const-wide/16 v0, 0x0

    .line 360
    .local v0, afterTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 361
    .local v4, now:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    .line 362
    invoke-direct {p0}, Lcom/android/server/PVPlayReadyService;->getBeforeTime()J

    move-result-wide v2

    .line 364
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_48

    .line 365
    const-string v5, "PVPlayReadyService"

    const-string v6, "Not calling updateTime"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_25
    const-string v5, "PVPLayReadyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and afterTime :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 368
    :cond_48
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/PVPlayReadyService;->updateTime(JJ)V

    goto :goto_25
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    .line 145
    new-instance v1, Lcom/android/server/PVPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/PVPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/PVPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/PVPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    .line 146
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 210
    const-string v0, "PVPLayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 212
    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .registers 9
    .parameter "networktime"
    .parameter "systemtime"

    .prologue
    const-wide/16 v1, 0x0

    .line 240
    cmp-long v0, p1, v1

    if-lez v0, :cond_73

    cmp-long v0, p3, v1

    if-lez v0, :cond_73

    .line 242
    const-string v0, "PVPLayReadyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/PVPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "PVPLayReadyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state was changed. network time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] system time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/PVPlayReadyService;->ntpReceived(JJ)V

    .line 246
    :cond_73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 157
    sget-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 159
    invoke-virtual {p0}, Lcom/android/server/PVPlayReadyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    .line 160
    const-string v1, "PVPLayReadyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Format is: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/PVPlayReadyService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_33
    if-eqz p1, :cond_43

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 167
    iput v4, v0, Landroid/os/Message;->what:I

    .line 190
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/PVPlayReadyService;->mServiceHandler:Lcom/android/server/PVPlayReadyService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PVPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return v4

    .line 170
    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 172
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    .line 175
    :cond_59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 176
    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    .line 180
    :cond_70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 181
    const-string v1, "PVPlayReadyService"

    const-string v2, "Current action is user change time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_43

    .line 186
    :cond_87
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->testMethod()V

    goto :goto_43
.end method
