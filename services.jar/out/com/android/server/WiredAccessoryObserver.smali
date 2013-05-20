.class Lcom/android/server/WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;,
        Lcom/android/server/WiredAccessoryObserver$UsbAudioData;,
        Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static IntentToPopupUI:Z = false

.field private static final LOG:Z = true

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final SUPPORTED_HEADSETS:I = 0x1f

.field private static final TAG:Ljava/lang/String; = null

.field private static final USB_AUDIO_DEVICE_UEVENT:Ljava/lang/String; = "MAJOR=116"

.field private static saveCHInfo:I

.field private static uEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private mSmartDockConnected:Ljava/lang/String;

.field private mSmartDockRemoved:Z

.field private final mUEventUsbAudioObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WiredAccessoryObserver;->IntentToPopupUI:Z

    .line 79
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WiredAccessoryObserver;->saveCHInfo:I

    .line 167
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 73
    iput-object v4, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    .line 74
    iput-boolean v2, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockRemoved:Z

    .line 235
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    .line 604
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    .line 613
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$3;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    .line 207
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    .line 208
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 209
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 211
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 213
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v2, "MAJOR=116"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->init()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryObserver;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->getChannel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryObserver;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryObserver;->update_usbaudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method private getChannel(Ljava/lang/String;)I
    .registers 22
    .parameter "cardNumber"

    .prologue
    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 278
    .local v8, in:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 279
    .local v2, Channels:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/proc/asound/card"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/stream0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, streamPath:Ljava/lang/String;
    :try_start_20
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_11a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_f1

    .line 284
    .end local v4           #f:Ljava/io/File;
    .local v5, f:Ljava/io/File;
    :try_start_25
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_54

    .line 286
    sget-object v17, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not exist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_134
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4b} :catch_13b

    .line 287
    const/16 v17, 0x0

    .line 325
    if-eqz v5, :cond_144

    const/4 v4, 0x0

    .line 326
    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    :goto_50
    if-eqz v8, :cond_53

    :try_start_52
    throw v8
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_129

    .line 331
    :cond_53
    :goto_53
    return v17

    .line 289
    .end local v4           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :cond_54
    :try_start_54
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_134
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_62} :catch_13b

    .line 291
    .end local v8           #in:Ljava/io/BufferedReader;
    .local v9, in:Ljava/io/BufferedReader;
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, str:Ljava/lang/String;
    if-eqz v14, :cond_e4

    .line 293
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-direct {v12, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v12, st:Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_62

    .line 297
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, flag:Ljava/lang/String;
    const-string v17, "Format"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_da

    .line 300
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, pcmFormat:Ljava/lang/String;
    const-string v17, "S16_LE"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_62

    .line 302
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_62

    .line 303
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-direct {v13, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v13, stChannel:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, flagChannel:Ljava/lang/String;
    const-string v17, "Channels"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_62

    .line 306
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 307
    .local v16, supportingChannel:Ljava/lang/String;
    const-string v17, "2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_cf

    .line 308
    or-int/lit8 v2, v2, 0x2

    goto :goto_62

    .line 309
    :cond_cf
    const-string v17, "6"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_62

    .line 310
    or-int/lit8 v2, v2, 0x20

    goto :goto_62

    .line 314
    .end local v7           #flagChannel:Ljava/lang/String;
    .end local v11           #pcmFormat:Ljava/lang/String;
    .end local v13           #stChannel:Ljava/util/StringTokenizer;
    .end local v16           #supportingChannel:Ljava/lang/String;
    :cond_da
    const-string v17, "Capture"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e1
    .catchall {:try_start_62 .. :try_end_e1} :catchall_137
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_e1} :catch_13e

    move-result v17

    if-eqz v17, :cond_62

    .line 325
    .end local v6           #flag:Ljava/lang/String;
    .end local v12           #st:Ljava/util/StringTokenizer;
    :cond_e4
    if-eqz v5, :cond_142

    const/4 v4, 0x0

    .line 326
    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    :goto_e7
    if-eqz v9, :cond_ec

    :try_start_e9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_12f

    :cond_ec
    :goto_ec
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :cond_ed
    :goto_ed
    move/from16 v17, v2

    .line 331
    goto/16 :goto_53

    .line 320
    :catch_f1
    move-exception v10

    .line 322
    .local v10, io:Ljava/io/IOException;
    :goto_f2
    :try_start_f2
    sget-object v17, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create file : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_f2 .. :try_end_10c} :catchall_11a

    .line 325
    if-eqz v4, :cond_10f

    const/4 v4, 0x0

    .line 326
    :cond_10f
    if-eqz v8, :cond_ed

    :try_start_111
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_ed

    .line 327
    :catch_115
    move-exception v3

    .line 328
    .local v3, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ed

    .line 324
    .end local v3           #ex:Ljava/io/IOException;
    .end local v10           #io:Ljava/io/IOException;
    :catchall_11a
    move-exception v17

    .line 325
    :goto_11b
    if-eqz v4, :cond_11e

    const/4 v4, 0x0

    .line 326
    :cond_11e
    if-eqz v8, :cond_123

    :try_start_120
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_124

    .line 324
    :cond_123
    :goto_123
    throw v17

    .line 327
    :catch_124
    move-exception v3

    .line 328
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_123

    .line 327
    .end local v3           #ex:Ljava/io/IOException;
    :catch_129
    move-exception v3

    .line 328
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 327
    .end local v3           #ex:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v14       #str:Ljava/lang/String;
    :catch_12f
    move-exception v3

    .line 328
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ec

    .line 324
    .end local v3           #ex:Ljava/io/IOException;
    .end local v4           #f:Ljava/io/File;
    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/File;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :catchall_134
    move-exception v17

    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_11b

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catchall_137
    move-exception v17

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_11b

    .line 320
    .end local v4           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :catch_13b
    move-exception v10

    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_f2

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catch_13e
    move-exception v10

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_f2

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v14       #str:Ljava/lang/String;
    :cond_142
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_e7

    .end local v4           #f:Ljava/io/File;
    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/File;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :cond_144
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto/16 :goto_50
.end method

.method private static getFactoryMode()Z
    .registers 5

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 565
    .local v1, userMode:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 570
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 571
    const/4 v2, 0x0

    .line 574
    :goto_1a
    return v2

    .line 566
    :catch_1b
    move-exception v0

    .line 567
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 568
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 573
    .end local v0           #e1:Ljava/io/IOException;
    :cond_26
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private final declared-synchronized init()V
    .registers 11

    .prologue
    .line 382
    monitor-enter p0

    const/16 v7, 0x400

    :try_start_3
    new-array v0, v7, [C

    .line 383
    .local v0, buffer:[C
    iget v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v7, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 385
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "init()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v4, 0x0

    .local v4, i:I
    :goto_11
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_80

    .line 388
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_74

    .line 391
    .local v6, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :try_start_21
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 393
    .local v5, len:I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 394
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 396
    .local v1, curState:I
    if-lez v1, :cond_53

    .line 397
    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v1}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_74
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_53} :catch_56
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_53} :catch_77

    .line 387
    .end local v1           #curState:I
    .end local v3           #file:Ljava/io/FileReader;
    .end local v5           #len:I
    :cond_53
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 400
    :catch_56
    move-exception v2

    .line 401
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_57
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found while attempting to determine initial switch state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_74

    goto :goto_53

    .line 382
    .end local v0           #buffer:[C
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #i:I
    .end local v6           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catchall_74
    move-exception v7

    monitor-exit p0

    throw v7

    .line 403
    .restart local v0       #buffer:[C
    .restart local v4       #i:I
    .restart local v6       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catch_77
    move-exception v2

    .line 404
    .local v2, e:Ljava/lang/Exception;
    :try_start_78
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_74

    goto :goto_53

    .line 407
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_80
    monitor-exit p0

    return-void
.end method

.method private isFactorySim()Z
    .registers 6

    .prologue
    .line 578
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 579
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 580
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, imsi:Ljava/lang/String;
    if-eqz v1, :cond_23

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 582
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v3, 0x1

    .line 585
    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method private static makeObservedUEventList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/WiredAccessoryObserver$UEventInfo;>;"
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 122
    .local v1, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1a
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 130
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_2d
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 146
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_3d
    return-object v0

    .line 125
    :cond_3e
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 133
    :cond_46
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 150
    :cond_4e
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 151
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 154
    :cond_5f
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .end local v1           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;-><init>(Ljava/lang/String;II)V

    .line 155
    .restart local v1       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 158
    :cond_70
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private final declared-synchronized sendIntentToPopupUI(II)I
    .registers 9
    .parameter "hdmiState"
    .parameter "ch_info"

    .prologue
    const/16 v5, 0x20

    const/4 v4, -0x1

    .line 545
    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_audio_output"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, hdmiSettingValue:I
    and-int/lit8 v1, p2, 0x20

    if-ne v1, v5, :cond_23

    if-ne v0, v4, :cond_23

    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->getFactoryMode()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->isFactorySim()Z
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2c

    move-result v1

    if-nez v1, :cond_23

    .line 557
    :cond_23
    and-int/lit8 v1, p2, 0x20

    if-ne v1, v5, :cond_29

    if-eqz v0, :cond_29

    .line 558
    :cond_29
    const/4 p2, 0x2

    .line 560
    monitor-exit p0

    return p2

    .line 545
    .end local v0           #hdmiSettingValue:I
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .registers 6
    .parameter "usbAudioData"

    .prologue
    const/4 v2, 0x1

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 590
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v1, "card"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const-string v1, "device"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string v1, "usb_headset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const-string v3, "issmartdock"

    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockRemoved:Z

    if-nez v1, :cond_5c

    move v1, v2

    :goto_4e
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 601
    return-void

    .line 597
    :cond_5c
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method private final setDeviceState(IIILjava/lang/String;)V
    .registers 11
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/4 v5, 0x1

    .line 473
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_34

    .line 477
    and-int v2, p2, p1

    if-eqz v2, :cond_35

    .line 478
    const/4 v1, 0x1

    .line 483
    .local v1, state:I
    :goto_c
    if-ne p1, v5, :cond_37

    .line 484
    const/4 v0, 0x4

    .line 499
    .local v0, device:I
    :goto_f
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_6a

    const-string v2, " connected"

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 503
    .end local v0           #device:I
    .end local v1           #state:I
    :cond_34
    :goto_34
    return-void

    .line 480
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #state:I
    goto :goto_c

    .line 485
    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3d

    .line 486
    const/16 v0, 0x8

    .restart local v0       #device:I
    goto :goto_f

    .line 487
    .end local v0           #device:I
    :cond_3d
    const/4 v2, 0x4

    if-ne p1, v2, :cond_43

    .line 488
    const/16 v0, 0x800

    .restart local v0       #device:I
    goto :goto_f

    .line 489
    .end local v0           #device:I
    :cond_43
    const/16 v2, 0x8

    if-ne p1, v2, :cond_4a

    .line 490
    const/16 v0, 0x1000

    .restart local v0       #device:I
    goto :goto_f

    .line 491
    .end local v0           #device:I
    :cond_4a
    const/16 v2, 0x10

    if-ne p1, v2, :cond_51

    .line 492
    const/16 v0, 0x400

    .restart local v0       #device:I
    goto :goto_f

    .line 494
    .end local v0           #device:I
    :cond_51
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 499
    .restart local v0       #device:I
    :cond_6a
    const-string v2, " disconnected"

    goto :goto_24
.end method

.method private final declared-synchronized setDevicesState(IILjava/lang/String;)V
    .registers 7
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 460
    monitor-enter p0

    const/16 v0, 0x1f

    .line 461
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_4
    if-eqz v0, :cond_13

    .line 462
    and-int v2, v1, v0

    if-eqz v2, :cond_10

    .line 463
    :try_start_a
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->setDeviceState(IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 464
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 461
    :cond_10
    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 467
    :cond_13
    monitor-exit p0

    return-void

    .line 460
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .registers 20
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 411
    monitor-enter p0

    and-int/lit8 v6, p2, 0x1f

    .line 412
    .local v6, headsetState:I
    :try_start_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    or-int v7, v6, v11

    .line 413
    .local v7, newOrOld:I
    const/4 v2, 0x0

    .line 414
    .local v2, delay:I
    and-int/lit8 v9, v6, 0x4

    .line 415
    .local v9, usb_headset_anlg:I
    and-int/lit8 v10, v6, 0x8

    .line 416
    .local v10, usb_headset_dgtl:I
    and-int/lit8 v5, v6, 0x10

    .line 417
    .local v5, hdmi_headset:I
    and-int/lit8 v4, v6, 0x3

    .line 418
    .local v4, h2w_headset:I
    const/4 v3, 0x1

    .line 419
    .local v3, h2wStateChange:Z
    const/4 v8, 0x1

    .line 423
    .local v8, usbStateChange:Z
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", headsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mHeadsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    if-eq v11, v6, :cond_57

    add-int/lit8 v11, v4, -0x1

    and-int/2addr v11, v4

    if-eqz v11, :cond_5f

    .line 426
    :cond_57
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting h2w flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v3, 0x0

    .line 431
    :cond_5f
    shr-int/lit8 v11, v9, 0x2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_71

    shr-int/lit8 v11, v10, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_71

    .line 432
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting usb flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v8, 0x0

    .line 435
    :cond_71
    if-nez v3, :cond_7e

    if-nez v8, :cond_7e

    .line 436
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "invalid transition, returning ..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_a3

    .line 455
    :goto_7c
    monitor-exit p0

    return-void

    .line 440
    :cond_7e
    :try_start_7e
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 441
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 442
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 444
    sget-boolean v11, Lcom/android/server/WiredAccessoryObserver;->IntentToPopupUI:Z

    if-eqz v11, :cond_a6

    const/16 v11, 0x10

    if-ne v5, v11, :cond_a6

    .line 445
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "HDMI connection intent is broadcasted to POPUP UI "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/WiredAccessoryObserver;->IntentToPopupUI:Z
    :try_end_a2
    .catchall {:try_start_7e .. :try_end_a2} :catchall_a3

    goto :goto_7c

    .line 411
    .end local v2           #delay:I
    .end local v3           #h2wStateChange:Z
    .end local v4           #h2w_headset:I
    .end local v5           #hdmi_headset:I
    .end local v7           #newOrOld:I
    .end local v8           #usbStateChange:Z
    .end local v9           #usb_headset_anlg:I
    .end local v10           #usb_headset_dgtl:I
    :catchall_a3
    move-exception v11

    monitor-exit p0

    throw v11

    .line 450
    .restart local v2       #delay:I
    .restart local v3       #h2wStateChange:Z
    .restart local v4       #h2w_headset:I
    .restart local v5       #hdmi_headset:I
    .restart local v7       #newOrOld:I
    .restart local v8       #usbStateChange:Z
    .restart local v9       #usb_headset_anlg:I
    .restart local v10       #usb_headset_dgtl:I
    :cond_a6
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_cb
    .catchall {:try_start_a6 .. :try_end_cb} :catchall_a3

    goto :goto_7c
.end method

.method private final declared-synchronized updateState(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "devPath"
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 351
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    :try_start_3
    sget-object v6, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_59

    .line 352
    sget-object v6, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WiredAccessoryObserver$UEventInfo;

    .line 353
    .local v4, uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 355
    const-string v6, "ch_hdmi_audio"

    invoke-virtual {v4}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 356
    and-int/lit16 v1, p3, 0xff

    .line 361
    .local v1, ch_info:I
    const/4 v6, -0x1

    if-ne p3, v6, :cond_5b

    const/4 v2, 0x0

    .line 362
    .local v2, hdmiState:I
    :goto_2f
    move p3, v2

    .line 364
    if-ne p3, v5, :cond_5d

    .line 365
    sput v1, Lcom/android/server/WiredAccessoryObserver;->saveCHInfo:I

    .line 369
    :cond_34
    :goto_34
    invoke-direct {p0, p3, v1}, Lcom/android/server/WiredAccessoryObserver;->sendIntentToPopupUI(II)I

    move-result v1

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, chPlusedName:Ljava/lang/String;
    move-object p2, v0

    .line 375
    .end local v0           #chPlusedName:Ljava/lang/String;
    .end local v1           #ch_info:I
    .end local v2           #hdmiState:I
    :cond_50
    iget v5, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v4, v5, p3}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/WiredAccessoryObserver;->update(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_65

    .line 379
    .end local v4           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_59
    monitor-exit p0

    return-void

    .restart local v1       #ch_info:I
    .restart local v4       #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :cond_5b
    move v2, v5

    .line 361
    goto :goto_2f

    .line 366
    .restart local v2       #hdmiState:I
    :cond_5d
    if-nez p3, :cond_34

    .line 367
    :try_start_5f
    sget v1, Lcom/android/server/WiredAccessoryObserver;->saveCHInfo:I
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_65

    goto :goto_34

    .line 351
    .end local v1           #ch_info:I
    .end local v2           #hdmiState:I
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #uei:Lcom/android/server/WiredAccessoryObserver$UEventInfo;
    :catchall_65
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private final declared-synchronized update_usbaudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "state"
    .parameter "channels"
    .parameter "cardNumber"
    .parameter "deviceNumber"

    .prologue
    .line 507
    monitor-enter p0

    const/4 v0, 0x0

    .line 508
    .local v0, delay:I
    if-nez p1, :cond_7a

    .line 509
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    const/16 v0, 0x1f4

    .line 524
    .end local v1           #intent:Landroid/content/Intent;
    :cond_12
    :goto_12
    new-instance v2, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    .line 525
    .local v2, usbAudioData:Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryObserver;->readSmartDock()V

    .line 529
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    const-string v4, "10"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 530
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_usbaudio state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSmartDockConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSmartDockRemoved : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockRemoved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "! set to false!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-nez p1, :cond_86

    .line 532
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryObserver;->isRemoveSmartDock()V

    .line 533
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockRemoved:Z

    .line 539
    :cond_6b
    :goto_6b
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_78
    .catchall {:try_start_4 .. :try_end_78} :catchall_8a

    .line 542
    monitor-exit p0

    return-void

    .line 520
    .end local v2           #usbAudioData:Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 521
    const/16 v0, 0x1f4

    goto :goto_12

    .line 535
    .restart local v2       #usbAudioData:Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    :cond_86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockRemoved:Z
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_8a

    goto :goto_6b

    .line 507
    .end local v2           #usbAudioData:Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    :catchall_8a
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public isRemoveSmartDock()V
    .registers 16

    .prologue
    const/16 v13, 0x8

    const/4 v14, 0x1

    .line 672
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock ++"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-array v3, v13, [C

    .line 674
    .local v3, buffer:[C
    const-string v2, "sys/class/sec/switch/adc"

    .line 675
    .local v2, SmartDName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 676
    .local v5, file:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 677
    .local v0, DeviceValue:Ljava/lang/String;
    const/4 v8, 0x1

    .line 678
    .local v8, loopGoing:I
    const/4 v9, 0x0

    .local v9, sleepCount:I
    move v10, v9

    .end local v9           #sleepCount:I
    .local v10, sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .local v1, DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 679
    .end local v5           #file:Ljava/io/FileReader;
    .local v6, file:Ljava/io/FileReader;
    :goto_15
    if-ne v8, v14, :cond_a5

    .line 681
    :try_start_17
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_95

    .line 682
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    const/4 v11, 0x0

    const/16 v12, 0x8

    :try_start_1f
    invoke-virtual {v5, v3, v11, v12}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 683
    .local v7, len:I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 685
    if-le v7, v14, :cond_6d

    .line 686
    new-instance v0, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v7, -0x1

    invoke-direct {v0, v3, v11, v12}, Ljava/lang/String;-><init>([CII)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_30} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_30} :catch_ad

    .line 690
    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    :goto_30
    :try_start_30
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isRemoveSmartDock DeviceValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSmartDockConnected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    .line 692
    iget-object v11, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    const-string v12, "10"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_74

    .line 693
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock : removed"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_67} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_67} :catch_b1

    .line 694
    const/4 v8, 0x0

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    :goto_69
    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 707
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_15

    .line 688
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v11, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_73} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_ad

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_30

    .line 696
    :cond_74
    add-int/lit8 v9, v10, 0x1

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    const/16 v11, 0xa

    if-gt v10, v11, :cond_8c

    .line 697
    const-wide/16 v11, 0xa

    :try_start_7c
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_7f} :catch_80
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_b4

    goto :goto_69

    .line 703
    :catch_80
    move-exception v4

    .line 704
    .end local v7           #len:I
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_81
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock This kernel does not have wired headset support "

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 707
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_15

    .line 699
    .end local v1           #DeviceValue:Ljava/lang/String;
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v6           #file:Ljava/io/FileReader;
    .end local v10           #sleepCount:I
    .restart local v0       #DeviceValue:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/FileReader;
    .restart local v7       #len:I
    .restart local v9       #sleepCount:I
    :cond_8c
    :try_start_8c
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock : too much sleep"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_93} :catch_80
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_b4

    .line 700
    const/4 v8, 0x0

    goto :goto_69

    .line 705
    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v5           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v10       #sleepCount:I
    :catch_95
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    move-object v5, v6

    .line 706
    .end local v6           #file:Ljava/io/FileReader;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/FileReader;
    :goto_99
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 707
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto/16 :goto_15

    .line 709
    .end local v4           #e:Ljava/lang/Exception;
    :cond_a5
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock --"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 705
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_ad
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_99

    .end local v9           #sleepCount:I
    .restart local v7       #len:I
    .restart local v10       #sleepCount:I
    :catch_b1
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    goto :goto_99

    :catch_b4
    move-exception v4

    goto :goto_99

    .line 703
    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v5           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v10       #sleepCount:I
    :catch_b6
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_81

    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v10       #sleepCount:I
    :catch_bb
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_81

    .end local v9           #sleepCount:I
    .restart local v7       #len:I
    .restart local v10       #sleepCount:I
    :catch_bf
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    goto :goto_81
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    .line 337
    sget-object v4, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_1c
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, devPath:Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, name:Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 343
    .local v3, state:I
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_35} :catch_36

    .line 347
    .end local v0           #devPath:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #state:I
    :goto_35
    return-void

    .line 344
    :catch_36
    move-exception v1

    .line 345
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public readSmartDock()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    .line 624
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock ++"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-array v3, v10, [C

    .line 626
    .local v3, buffer:[C
    const-string v2, "sys/class/sec/switch/adc"

    .line 627
    .local v2, SmartDName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 628
    .local v5, file:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 630
    .local v0, DeviceValue:Ljava/lang/String;
    :try_start_f
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_61
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_6a

    .line 631
    .end local v5           #file:Ljava/io/FileReader;
    .local v6, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x8

    :try_start_17
    invoke-virtual {v6, v3, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 632
    .local v7, len:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_59

    .line 633
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v7, -0x1

    invoke-direct {v1, v3, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #DeviceValue:Ljava/lang/String;
    .local v1, DeviceValue:Ljava/lang/String;
    move-object v0, v1

    .line 636
    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    :goto_27
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 637
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSmartDock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSmartDockConnected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_50} :catch_76
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_50} :catch_73

    move-object v5, v6

    .line 644
    .end local v6           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .restart local v5       #file:Ljava/io/FileReader;
    :goto_51
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock --"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 635
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v7       #len:I
    :cond_59
    :try_start_59
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v3, v8, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5f} :catch_76
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_73

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_27

    .line 639
    .end local v6           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_61
    move-exception v4

    .line 640
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_62
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 641
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_6a
    move-exception v4

    .line 642
    .local v4, e:Ljava/lang/Exception;
    :goto_6b
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 641
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    :catch_73
    move-exception v4

    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_6b

    .line 639
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    :catch_76
    move-exception v4

    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_62
.end method

.method public readUsbDevice()V
    .registers 13

    .prologue
    const/16 v11, 0x8

    .line 648
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "readUsbDevice ++"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-array v4, v11, [C

    .line 650
    .local v4, buffer:[C
    const-string v0, "sys/class/switch/usb_audio/state"

    .line 651
    .local v0, DeviceName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 652
    .local v6, file:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 654
    .local v2, DeviceValue:Ljava/lang/String;
    :try_start_f
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_68

    .line 655
    .end local v6           #file:Ljava/io/FileReader;
    .local v7, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x8

    :try_start_17
    invoke-virtual {v7, v4, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    .line 656
    .local v8, len:I
    const/4 v9, 0x1

    if-le v8, v9, :cond_57

    .line 657
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v8, -0x1

    invoke-direct {v3, v4, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .end local v2           #DeviceValue:Ljava/lang/String;
    .local v3, DeviceValue:Ljava/lang/String;
    move-object v2, v3

    .line 660
    .end local v3           #DeviceValue:Ljava/lang/String;
    .restart local v2       #DeviceValue:Ljava/lang/String;
    :goto_27
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 661
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readUsbDevice : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", buffer : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_4c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_71

    move-object v6, v7

    .line 667
    .end local v7           #file:Ljava/io/FileReader;
    .end local v8           #len:I
    .restart local v6       #file:Ljava/io/FileReader;
    :goto_4d
    const-string v1, "devices/platform/s5p-ehci/usb2/2-1/2-1.2/2-1.2:1.0/sound/card1/pcmC1D0p"

    .line 668
    .local v1, DeviceName2:Ljava/lang/String;
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "readUsbDevice --"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void

    .line 659
    .end local v1           #DeviceName2:Ljava/lang/String;
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v7       #file:Ljava/io/FileReader;
    .restart local v8       #len:I
    :cond_57
    :try_start_57
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v4, v9, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5d} :catch_74
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_71

    .end local v2           #DeviceValue:Ljava/lang/String;
    .restart local v3       #DeviceValue:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #DeviceValue:Ljava/lang/String;
    .restart local v2       #DeviceValue:Ljava/lang/String;
    goto :goto_27

    .line 662
    .end local v7           #file:Ljava/io/FileReader;
    .end local v8           #len:I
    .restart local v6       #file:Ljava/io/FileReader;
    :catch_5f
    move-exception v5

    .line 663
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_60
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "readUsbDevice This kernel does not have wired headset support "

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 664
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_68
    move-exception v5

    .line 665
    .local v5, e:Ljava/lang/Exception;
    :goto_69
    sget-object v9, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v10, "readUsbDevice exception"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 664
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v7       #file:Ljava/io/FileReader;
    :catch_71
    move-exception v5

    move-object v6, v7

    .end local v7           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_69

    .line 662
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v7       #file:Ljava/io/FileReader;
    :catch_74
    move-exception v5

    move-object v6, v7

    .end local v7           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_60
.end method
