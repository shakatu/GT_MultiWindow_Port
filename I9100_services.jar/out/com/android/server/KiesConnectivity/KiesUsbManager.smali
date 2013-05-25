.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"


# instance fields
.field private final CDFS_FUNCTION:Ljava/lang/String;

.field private final CDFS_INSERT_PATH:Ljava/lang/String;

.field private final CDFS_PATH:Ljava/lang/String;

.field private cdfsEjectTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private isAdbOnByToolLauncher:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_INSERT_PATH:Ljava/lang/String;

    .line 39
    const-string v0, "/system/etc/autorun.iso"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_PATH:Ljava/lang/String;

    .line 40
    const-string v0, "mass_storage,acm,mtp"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_FUNCTION:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbOnByToolLauncher:Z

    .line 52
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 53
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 57
    const-string v0, "KiesUsbManager"

    const-string v1, "KiesUsbManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private isAdbEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    if-ne v0, v1, :cond_12

    .line 77
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private saveISOToFile(Z)Z
    .registers 9
    .parameter "bInsert"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, fout:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_32

    .line 91
    const-string v5, "KiesUsbManager"

    const-string v6, "saveISOToFile ISO setCDFSInsert"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_23

    .line 94
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_13
    const-string v5, "/system/etc/autorun.iso"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_83
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_86

    .line 100
    if-eqz v2, :cond_21

    .line 101
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_69

    :cond_21
    :goto_21
    move-object v1, v2

    .line 125
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :goto_22
    return v3

    .line 95
    :catch_23
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    :goto_24
    if-eqz v1, :cond_29

    .line 101
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_5f

    :cond_29
    :goto_29
    move v3, v4

    .line 96
    goto :goto_22

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2b
    move-exception v3

    .line 100
    :goto_2c
    if-eqz v1, :cond_31

    .line 101
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_64

    .line 99
    :cond_31
    :goto_31
    throw v3

    .line 110
    :cond_32
    const-string v5, "KiesUsbManager"

    const-string v6, "saveISOToFile ISO setCDFSEject"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_39
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_58
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_50

    .line 113
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :try_start_40
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_80

    .line 119
    if-eqz v2, :cond_4e

    .line 120
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_78

    :cond_4e
    :goto_4e
    move-object v1, v2

    .line 125
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_22

    .line 114
    :catch_50
    move-exception v0

    .line 119
    .restart local v0       #e:Ljava/io/IOException;
    :goto_51
    if-eqz v1, :cond_56

    .line 120
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_6e

    :cond_56
    :goto_56
    move v3, v4

    .line 115
    goto :goto_22

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catchall_58
    move-exception v3

    .line 119
    :goto_59
    if-eqz v1, :cond_5e

    .line 120
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_73

    .line 118
    :cond_5e
    :goto_5e
    throw v3

    .line 102
    .restart local v0       #e:Ljava/io/IOException;
    :catch_5f
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :catch_64
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_69
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 121
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catch_6e
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    :catch_73
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_78
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catchall_7d
    move-exception v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_59

    .line 114
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_80
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_51

    .line 99
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catchall_83
    move-exception v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_2c

    .line 95
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_86
    move-exception v0

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_24
.end method

.method private setCDFSEject()V
    .registers 3

    .prologue
    .line 152
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 154
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSEject : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_15
    return-void
.end method

.method private setCDFSInsert()V
    .registers 3

    .prologue
    .line 145
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 147
    const-string v0, "KiesUsbManager"

    const-string v1, "setCDFSInsert : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_15
    return-void
.end method

.method private setUsbCurrentSettingMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 132
    const-string v1, "sys.usb.config"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, config:Ljava/lang/String;
    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "mass_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "mass_storage,acm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "mass_storage,acm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 135
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    .line 136
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp,adb"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 141
    :goto_3a
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbCurrentSettingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_52
    return-void

    .line 139
    :cond_53
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_3a
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized startCDFSEjectTimer()V
    .registers 5

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 165
    .local v0, myTask:Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-nez v1, :cond_1f

    .line 166
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 167
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 168
    const-string v1, "KiesUsbManager"

    const-string v2, "startCDFSEjectTimer -> 30 seconds start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 170
    :cond_1f
    monitor-exit p0

    return-void

    .line 159
    .end local v0           #myTask:Ljava/util/TimerTask;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopCDFSEjectTimer()V
    .registers 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_14

    .line 174
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 176
    const-string v0, "KiesUsbManager"

    const-string v1, "stopCDFSEjectTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 178
    :cond_14
    monitor-exit p0

    return-void

    .line 173
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
