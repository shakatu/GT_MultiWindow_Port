.class public Lcom/android/server/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CustomFrequencyManagerService$1;,
        Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final BUS_DEFAULT_FREQUENCY:I = 0x0

.field private static final BUS_MAX_FREQUENCY:I = 0x61b48

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static final GPU_LOCK:Ljava/lang/Object; = null

.field private static final GPU_MAX_FREQUENCY:I = 0x1

.field private static final GPU_PATH:Ljava/lang/String; = "/sys/power/gpu_lock"

.field private static final GPU_TABLE_PATH:Ljava/lang/String; = ""

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final SYSBUS_TABLE_PATH:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final TESTING:Z = false

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfGPULock:I

.field private static countOfSysBusLock:I

.field private static mGpuPath:Z

.field private static mLcdFrameRatePath:Z

.field private static mSysBusPath:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private final mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

.field private mSupportedGPUFrequency:[I

.field private mSupportedSysBusFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 55
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    .line 69
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 70
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 71
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 89
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 90
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 61
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 63
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v0, p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    .line 93
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 94
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 98
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 101
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 102
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 103
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CustomFrequencyManagerService;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    return v0
.end method

.method private checkSysfsNode()V
    .registers 6

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, busFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 109
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v3, :cond_18

    .line 110
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "checkSysfsNode:: Sysfs node for SYSBUS_PATH doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/power/gpu_lock"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, gpuFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 115
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v3, :cond_30

    .line 116
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "checkSysfsNode:: Sysfs node for GPU_PATH doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_30
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, lcdFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 121
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    if-nez v3, :cond_48

    .line 122
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "checkSysfsNode:: Sysfs node for LCD_FRAME_RATE_PATH doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_48
    return-void
.end method

.method private initSupportedGPUFrequency()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_9

    .line 179
    :goto_8
    return-void

    .line 174
    :cond_9
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 175
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v1, v0, v1

    .line 176
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v2, v0, v2

    .line 177
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v3, v0, v3

    .line 178
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v4, v0, v4

    goto :goto_8
.end method

.method private initSupportedSysBusFrequency()V
    .registers 4

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 183
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-nez v0, :cond_3c

    .line 188
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 189
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x0

    const v2, 0x61b48

    aput v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x1

    const v2, 0x413c0

    aput v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x2

    const v2, 0x41398

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x3

    const v2, 0x271a0

    aput v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x4

    const v2, 0x2080d

    aput v2, v0, v1

    .line 195
    :cond_3c
    return-void
.end method

.method private modifyFrameRateToValue(I)V
    .registers 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 344
    :cond_d
    :goto_d
    return-void

    .line 318
    :cond_e
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    .line 319
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2a
    const/4 v2, 0x0

    .line 325
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v4, 0x28

    if-ne p1, v4, :cond_67

    .line 326
    const/4 p1, 0x1

    .line 330
    :cond_30
    :goto_30
    :try_start_30
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_a8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_37} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_8c

    .line 331
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_37
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_60

    .line 333
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_37 .. :try_end_60} :catchall_af
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_60} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_60} :catch_b2

    .line 340
    :cond_60
    if-eqz v3, :cond_65

    .line 341
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_65
    move-object v2, v3

    .line 343
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 327
    :cond_67
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_30

    .line 328
    const/4 p1, 0x0

    goto :goto_30

    .line 335
    :catch_6d
    move-exception v0

    .line 336
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_6e
    :try_start_6e
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_a8

    .line 340
    if-eqz v2, :cond_d

    .line 341
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    .line 337
    :catch_8c
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    :goto_8d
    :try_start_8d
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyFrameRateToValue:: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_a8

    .line 340
    if-eqz v2, :cond_d

    goto :goto_88

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_a8
    move-exception v4

    :goto_a9
    if-eqz v2, :cond_ae

    .line 341
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 340
    :cond_ae
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_af
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_a9

    .line 337
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_b2
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_8d

    .line 335
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_b5
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method private modifyGPUToValue(I)V
    .registers 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v2, :cond_5

    .line 243
    :cond_4
    :goto_4
    return-void

    .line 231
    :cond_5
    const/4 v0, 0x0

    .line 233
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/power/gpu_lock"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3c

    .line 234
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 235
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 236
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### modifyGPUToValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_43

    .line 239
    :cond_36
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 239
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_3c
    move-exception v2

    :goto_3d
    if-eqz v0, :cond_42

    .line 240
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    :cond_42
    throw v2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_43
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_3d
.end method

.method private modifySysBusToValue(I)V
    .registers 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v3, :cond_10

    .line 267
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 268
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "modifySysBusToValue Returning: "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_f
    :goto_f
    return-void

    .line 273
    :cond_10
    const/4 v1, 0x0

    .line 275
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_18} :catch_48

    .line 276
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 277
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_41

    .line 278
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$$ modifySysBusToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_6e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_41} :catch_71

    .line 283
    :cond_41
    if-eqz v2, :cond_46

    .line 284
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_46
    move-object v1, v2

    .line 285
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 280
    :catch_48
    move-exception v0

    .line 281
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_49
    :try_start_49
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_67

    .line 283
    if-eqz v1, :cond_f

    .line 284
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_f

    .line 283
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_67
    move-exception v3

    :goto_68
    if-eqz v1, :cond_6d

    .line 284
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 283
    :cond_6d
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_6e
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_68

    .line 280
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_71
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_49
.end method

.method private revertGPUToDefault()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v3, :cond_5

    .line 263
    :cond_4
    :goto_4
    return-void

    .line 250
    :cond_5
    const/4 v1, 0x0

    .line 252
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/power/gpu_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 253
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_e
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 254
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 255
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### revertGPUToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_26} :catch_56

    .line 260
    :cond_26
    if-eqz v2, :cond_2b

    .line 261
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2b
    move-object v1, v2

    .line 262
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 257
    :catch_2d
    move-exception v0

    .line 258
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2e
    :try_start_2e
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_4c

    .line 260
    if-eqz v1, :cond_4

    .line 261
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 260
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_4c
    move-exception v3

    :goto_4d
    if-eqz v1, :cond_52

    .line 261
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :cond_52
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4d

    .line 257
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_56
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2e
.end method

.method private revertLCDFrameRateToDefault()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 370
    :cond_d
    :goto_d
    return-void

    .line 352
    :cond_e
    const/4 v2, 0x0

    .line 354
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_36

    .line 355
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    :try_start_17
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2f

    .line 357
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "revertLCDFrameRateToDefault:: value = 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_2f} :catch_ad

    .line 362
    :cond_2f
    if-eqz v3, :cond_34

    .line 364
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_90

    :cond_34
    :goto_34
    move-object v2, v3

    .line 369
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 359
    :catch_36
    move-exception v0

    .line 360
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_37
    :try_start_37
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: UnsupportedEncodingException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_6f

    .line 362
    if-eqz v2, :cond_d

    .line 364
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_d

    .line 365
    :catch_55
    move-exception v0

    .line 366
    .local v0, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 362
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6f
    move-exception v4

    :goto_70
    if-eqz v2, :cond_75

    .line 364
    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 362
    :cond_75
    :goto_75
    throw v4

    .line 365
    :catch_76
    move-exception v0

    .line 366
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 365
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_90
    move-exception v0

    .line 366
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertLCDFrameRateToDefault:: IOException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 362
    .end local v0           #e:Ljava/io/IOException;
    :catchall_aa
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_70

    .line 359
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_ad
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_37
.end method

.method private revertSysBusToDefault()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v3, :cond_5

    .line 310
    :cond_4
    :goto_4
    return-void

    .line 293
    :cond_5
    const/4 v1, 0x0

    .line 295
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 296
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_e
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 297
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 298
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_a1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_26} :catch_a4

    .line 303
    :cond_26
    if-eqz v2, :cond_2b

    .line 305
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_87

    :cond_2b
    :goto_2b
    move-object v1, v2

    .line 309
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 300
    :catch_2d
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2e
    :try_start_2e
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_66

    .line 303
    if-eqz v1, :cond_4

    .line 305
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_4

    .line 306
    :catch_4c
    move-exception v0

    .line 307
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    :catchall_66
    move-exception v3

    :goto_67
    if-eqz v1, :cond_6c

    .line 305
    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 303
    :cond_6c
    :goto_6c
    throw v3

    .line 306
    :catch_6d
    move-exception v0

    .line 307
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_87
    move-exception v0

    .line 307
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    :catchall_a1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_67

    .line 300
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_a4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2e
.end method

.method private verifyDefaultCondition()V
    .registers 12

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, buf:Ljava/io/BufferedReader;
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v7, :cond_5c

    .line 131
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/power/gpu_lock"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_64

    .line 132
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 135
    .local v6, parsedRet:[Ljava/lang/String;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, gpuSysfsRet:Ljava/lang/String;
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_56

    .line 137
    const-string v7, ", count = "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 138
    if-eqz v6, :cond_56

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_56

    .line 139
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 140
    .local v5, numOfLock:I
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v7, :cond_4d

    .line 141
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : numOfLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4d
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4e
    if-ge v4, v5, :cond_56

    .line 144
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_53} :catch_f6

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 151
    .end local v4           #i:I
    .end local v5           #numOfLock:I
    :cond_56
    if-eqz v1, :cond_5b

    .line 153
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_d8

    :cond_5b
    :goto_5b
    move-object v0, v1

    .line 160
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    .end local v6           #parsedRet:[Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_5c
    :goto_5c
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v7, :cond_63

    .line 162
    :try_start_60
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_a4

    .line 167
    :cond_63
    :goto_63
    return-void

    .line 148
    :catch_64
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    :goto_65
    :try_start_65
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_9d

    .line 151
    if-eqz v0, :cond_5c

    .line 153
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_5c

    .line 154
    :catch_83
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    :catchall_9d
    move-exception v7

    :goto_9e
    if-eqz v0, :cond_a3

    .line 153
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_be

    .line 151
    :cond_a3
    :goto_a3
    throw v7

    .line 163
    :catch_a4
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 154
    .end local v2           #e:Ljava/lang/Exception;
    :catch_be
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    const-string v8, "CustomFrequencyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verifyDefaultCondition : IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 154
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #gpuSysfsRet:Ljava/lang/String;
    .restart local v6       #parsedRet:[Ljava/lang/String;
    :catch_d8
    move-exception v2

    .line 155
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyDefaultCondition : IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    :catchall_f3
    move-exception v7

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_9e

    .line 148
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_f6
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_65
.end method


# virtual methods
.method public checkFrameRateRange(I)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 220
    const/16 v0, 0x28

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_a

    .line 221
    :cond_8
    const/4 v0, 0x1

    .line 223
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public checkGPUFrequencyRange(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 199
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 200
    const/4 v1, 0x1

    .line 202
    :goto_d
    return v1

    .line 198
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public checkSysBusFrequencyRange(I)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 206
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 207
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 210
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2a

    .line 211
    const/4 v1, 0x1

    .line 216
    :goto_29
    return v1

    .line 209
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 213
    :cond_2d
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_49

    .line 214
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_49
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public releaseGPU(Landroid/os/IBinder;)V
    .registers 10
    .parameter "binder"

    .prologue
    .line 433
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 435
    :try_start_3
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;I)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 436
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-nez v1, :cond_19

    .line 437
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_17

    .line 438
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_17} :catch_78
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_95

    .line 440
    :cond_17
    :try_start_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_5a

    .line 480
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_18
    return-void

    .line 443
    .restart local v1       #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_58

    .line 444
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_28

    .line 445
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_28
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 449
    .local v2, nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_5d

    .line 450
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_4e

    .line 451
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 455
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 456
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_58} :catch_78
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_58} :catch_95

    .line 479
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_58
    :goto_58
    :try_start_58
    monitor-exit v5

    goto :goto_18

    :catchall_5a
    move-exception v4

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5a

    throw v4

    .line 458
    .restart local v1       #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v2       #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_5d
    :try_start_5d
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_68

    .line 459
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_68
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 463
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 464
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_73

    .line 465
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 467
    :cond_73
    const/4 v1, 0x0

    .line 468
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_77} :catch_78
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_77} :catch_95

    goto :goto_58

    .line 472
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_78
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_79
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_58

    .line 475
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_95
    move-exception v0

    .line 476
    .local v0, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_79 .. :try_end_b1} :catchall_5a

    goto :goto_58
.end method

.method public releaseSysBus(Landroid/os/IBinder;)V
    .registers 10
    .parameter "binder"

    .prologue
    .line 535
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 537
    :try_start_3
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x2

    invoke-virtual {v4, p1, v6}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;I)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 538
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-nez v1, :cond_19

    .line 539
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_17

    .line 540
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_57
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_17} :catch_75
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_17} :catch_92

    .line 542
    :cond_17
    :try_start_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_57

    .line 582
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_18
    return-void

    .line 545
    .restart local v1       #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_55

    .line 546
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_28

    .line 547
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current SysBus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_28
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 552
    .local v2, nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_5a

    .line 553
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_4e

    .line 554
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_4e
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 558
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_57
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_55} :catch_75
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_55} :catch_92

    .line 581
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v5

    goto :goto_18

    :catchall_57
    move-exception v4

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw v4

    .line 560
    .restart local v1       #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v2       #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_5a
    :try_start_5a
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_65

    .line 561
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting SysBus to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_65
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V

    .line 565
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 566
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_70

    .line 567
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 569
    :cond_70
    const/4 v1, 0x0

    .line 570
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_57
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_74} :catch_92

    goto :goto_55

    .line 574
    .end local v1           #freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_75
    move-exception v0

    .line 575
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_76
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_55

    .line 577
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_92
    move-exception v0

    .line 578
    .local v0, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_76 .. :try_end_ae} :catchall_57

    goto :goto_55
.end method

.method public requestGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 383
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 385
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 386
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_42
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 389
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_de

    move-result v1

    if-eqz v1, :cond_fe

    .line 391
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;I)I

    move-result v9

    .line 394
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 395
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_6e
    if-gez v9, :cond_ad

    .line 398
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 400
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 401
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 402
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_96

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_ab

    .line 412
    :cond_96
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a1

    .line 413
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, Going tochange the GPU value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_a1
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 416
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 417
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_ab
    .catchall {:try_start_4b .. :try_end_ab} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_ab} :catch_c1
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_ab} :catch_e1

    .line 428
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_ab
    :goto_ab
    :try_start_ab
    monitor-exit v10
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_de

    .line 430
    return-void

    .line 405
    .restart local v9       #index:I
    :cond_ad
    :try_start_ad
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 406
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 407
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_ad .. :try_end_c0} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_c0} :catch_c1
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_c0} :catch_e1

    goto :goto_8a

    .line 419
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_c1
    move-exception v8

    .line 420
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_c2
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_ab

    .line 428
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_de
    move-exception v1

    monitor-exit v10
    :try_end_e0
    .catchall {:try_start_c2 .. :try_end_e0} :catchall_de

    throw v1

    .line 422
    :catch_e1
    move-exception v8

    .line 423
    .local v8, e:Ljava/io/IOException;
    :try_start_e2
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ab

    .line 427
    .end local v8           #e:Ljava/io/IOException;
    :cond_fe
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPU Frequency value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_106
    .catchall {:try_start_e2 .. :try_end_106} :catchall_de
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 585
    sget-object v1, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkFrameRateRange(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    move-result v0

    if-eqz v0, :cond_e

    .line 588
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyFrameRateToValue(I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_1b

    .line 599
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 600
    return-void

    .line 597
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frame rate value is not in the permitted range."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v0

    .line 589
    :catch_19
    move-exception v0

    goto :goto_c

    .line 592
    :catch_1b
    move-exception v0

    goto :goto_c
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 11
    .parameter "command"

    .prologue
    .line 617
    sget-boolean v6, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1c

    .line 618
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_1c
    if-eqz p1, :cond_3e

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3e

    .line 622
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 625
    :cond_3e
    move-object v5, p1

    .line 627
    .local v5, send:Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 628
    .local v2, localSocket:Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 630
    .local v4, out:Ljava/io/OutputStream;
    :try_start_45
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "MPDECISION_SOCKET"

    invoke-direct {v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 631
    .local v3, localSocketAddress:Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 632
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 633
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5e} :catch_69

    .line 639
    if-eqz v4, :cond_63

    .line 640
    :try_start_60
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_a6

    .line 641
    :cond_63
    if-eqz v2, :cond_68

    .line 642
    :try_start_65
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a8

    .line 647
    .end local v3           #localSocketAddress:Landroid/net/LocalSocketAddress;
    :cond_68
    :goto_68
    return-void

    .line 634
    :catch_69
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Exception;
    :try_start_6a
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_95

    .line 639
    if-eqz v4, :cond_8a

    .line 640
    :try_start_87
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 641
    :cond_8a
    if-eqz v2, :cond_68

    .line 642
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_90

    goto :goto_68

    .line 643
    :catch_90
    move-exception v1

    .line 644
    .end local v0           #e:Ljava/lang/Exception;
    .local v1, ex:Ljava/io/IOException;
    :goto_91
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 638
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_95
    move-exception v6

    .line 639
    if-eqz v4, :cond_9b

    .line 640
    :try_start_98
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 641
    :cond_9b
    if-eqz v2, :cond_a0

    .line 642
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a1

    .line 638
    :cond_a0
    :goto_a0
    throw v6

    .line 643
    :catch_a1
    move-exception v1

    .line 644
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 643
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v3       #localSocketAddress:Landroid/net/LocalSocketAddress;
    :catch_a6
    move-exception v1

    goto :goto_91

    :catch_a8
    move-exception v1

    goto :goto_91
.end method

.method public requestSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 485
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 487
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 488
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_42
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 492
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_db

    move-result v1

    if-eqz v1, :cond_fb

    .line 494
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;I)I

    move-result v9

    .line 496
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 497
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_6e
    if-gez v9, :cond_aa

    .line 500
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 502
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 503
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 504
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_96

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a8

    .line 515
    :cond_96
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a1

    .line 516
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going tochange the GPU value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_a1
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 519
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a8
    .catchall {:try_start_4b .. :try_end_a8} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_a8} :catch_be
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_a8} :catch_de

    .line 530
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v10
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_db

    .line 532
    return-void

    .line 507
    .restart local v9       #index:I
    :cond_aa
    :try_start_aa
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 508
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 509
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_de

    goto :goto_8a

    .line 521
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_be
    move-exception v8

    .line 522
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_bf
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a8

    .line 530
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_db
    move-exception v1

    monitor-exit v10
    :try_end_dd
    .catchall {:try_start_bf .. :try_end_dd} :catchall_db

    throw v1

    .line 524
    :catch_de
    move-exception v8

    .line 525
    .local v8, e:Ljava/io/IOException;
    :try_start_df
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 529
    .end local v8           #e:Ljava/io/IOException;
    :cond_fb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SysBus Frequency value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_103
    .catchall {:try_start_df .. :try_end_103} :catchall_db
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;)V
    .registers 7
    .parameter "binder"

    .prologue
    .line 603
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 605
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertLCDFrameRateToDefault()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_28

    .line 613
    :goto_6
    :try_start_6
    monitor-exit v2

    .line 614
    return-void

    .line 606
    :catch_8
    move-exception v0

    .line 607
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: FileNotFoundException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 613
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1

    .line 609
    :catch_28
    move-exception v0

    .line 610
    .local v0, e:Ljava/io/IOException;
    :try_start_29
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLCDFrameRate:: IOException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_25

    goto :goto_6
.end method
