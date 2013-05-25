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
.field private static final APE_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ape_opp"

.field private static final BUS_DEFAULT_FREQUENCY:I = 0x0

.field private static final BUS_MAX_FREQUENCY:I = 0x61b48

.field private static final CPU_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

.field private static final CPU_DEFAULT_CORE:I = 0x0

.field private static final CPU_MAX_CORE:I = 0x4

.field private static final DDR_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ddr_opp"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static final GPU_LOCK:Ljava/lang/Object; = null

.field private static final GPU_MAX_FREQUENCY:I = 0x1

.field private static GPU_PATH:Ljava/lang/String; = null

.field private static final GPU_TABLE_PATH:Ljava/lang/String; = ""

#the value of this static final field might be set in the static constructor
.field private static final IS_AP_TYPE_DB8420:Z = false

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final OPP_DEFAULT:I = 0x0

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/busfreq/curr_freq"

.field private static final SYSBUS_TABLE_PATH:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final TESTING:Z = false

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfGPULock:I

.field private static countOfSysBusLock:I

.field private static mApeOppPath:Z

.field private static mCpuCorePath:Z

.field private static mDdrOppPath:Z

.field private static mGpuPath:Z

.field private static mLcdFrameRatePath:Z

.field private static mSysBusPath:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

.field private final mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

.field private mSupportedCPUCore:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedSysBusFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    .line 69
    const-string v0, "/sys/power/gpu_lock"

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 76
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 77
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 78
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 79
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    .line 80
    sput-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 101
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 102
    sput v2, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 109
    const-string v0, "DB8420"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 63
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 64
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 66
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v0, p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    .line 105
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 106
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 107
    iput-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 113
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 118
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedCPUCore()V

    .line 119
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CustomFrequencyManagerService;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    return v0
.end method

.method private checkSysfsNode()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 123
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, busFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_df

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_df

    move v7, v8

    :goto_16
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 125
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v7, :cond_23

    .line 126
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for SYSBUS_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_23
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, gpuFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_e2

    move v7, v8

    :goto_37
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 131
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v7, :cond_5b

    .line 132
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/power/mali_lock"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, maliGpuFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e5

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_e5

    move v7, v8

    :goto_51
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    .line 134
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v7, :cond_e8

    .line 135
    const-string v7, "/sys/power/mali_lock"

    sput-object v7, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    .line 141
    .end local v6           #maliGpuFile:Ljava/io/File;
    :cond_5b
    :goto_5b
    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, lcdFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f1

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_f1

    move v7, v8

    :goto_6f
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    .line 143
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mLcdFrameRatePath:Z

    if-nez v7, :cond_7c

    .line 144
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for LCD_FRAME_RATE_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7c
    new-instance v2, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, cpuCoreFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_f4

    move v7, v8

    :goto_90
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 149
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-nez v7, :cond_9d

    .line 150
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for CPU_CORE_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_9d
    new-instance v3, Ljava/io/File;

    const-string v7, "/debug/prcmu/ddr_opp"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, ddrOppFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f6

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_f6

    move v7, v8

    :goto_b1
    sput-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    .line 155
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v7, :cond_be

    .line 156
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for DDR_OPP_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_be
    new-instance v0, Ljava/io/File;

    const-string v7, "/debug/prcmu/ape_opp"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, apeOppFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f8

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_f8

    :goto_d1
    sput-boolean v8, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    .line 161
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v7, :cond_de

    .line 162
    const-string v7, "CustomFrequencyManagerService"

    const-string v8, "checkSysfsNode:: Sysfs node for APE_OPP_PATH doesn\'t exist."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_de
    return-void

    .end local v0           #apeOppFile:Ljava/io/File;
    .end local v2           #cpuCoreFile:Ljava/io/File;
    .end local v3           #ddrOppFile:Ljava/io/File;
    .end local v4           #gpuFile:Ljava/io/File;
    .end local v5           #lcdFile:Ljava/io/File;
    :cond_df
    move v7, v9

    .line 124
    goto/16 :goto_16

    .restart local v4       #gpuFile:Ljava/io/File;
    :cond_e2
    move v7, v9

    .line 130
    goto/16 :goto_37

    .restart local v6       #maliGpuFile:Ljava/io/File;
    :cond_e5
    move v7, v9

    .line 133
    goto/16 :goto_51

    .line 137
    :cond_e8
    const-string v7, "CustomFrequencyManagerService"

    const-string v10, "checkSysfsNode:: Sysfs node for GPU_PATH doesn\'t exist."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .end local v6           #maliGpuFile:Ljava/io/File;
    .restart local v5       #lcdFile:Ljava/io/File;
    :cond_f1
    move v7, v9

    .line 142
    goto/16 :goto_6f

    .restart local v2       #cpuCoreFile:Ljava/io/File;
    :cond_f4
    move v7, v9

    .line 148
    goto :goto_90

    .restart local v3       #ddrOppFile:Ljava/io/File;
    :cond_f6
    move v7, v9

    .line 154
    goto :goto_b1

    .restart local v0       #apeOppFile:Ljava/io/File;
    :cond_f8
    move v8, v9

    .line 160
    goto :goto_d1
.end method

.method private initSupportedCPUCore()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_a

    .line 240
    :goto_9
    return-void

    .line 234
    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 235
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v1, v0, v1

    .line 236
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v2, v0, v2

    .line 237
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v3, v0, v3

    .line 238
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v4, v0, v4

    .line 239
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aput v5, v0, v5

    goto :goto_9
.end method

.method private initSupportedGPUFrequency()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_9

    .line 227
    :goto_8
    return-void

    .line 222
    :cond_9
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 223
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v1, v0, v1

    .line 224
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v2, v0, v2

    .line 225
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v3, v0, v3

    .line 226
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v4, v0, v4

    goto :goto_8
.end method

.method private initSupportedSysBusFrequency()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 244
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_e
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-nez v0, :cond_2e

    .line 249
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v0, :cond_2f

    .line 251
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency:: 100100, 5025"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 253
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x18704

    aput v1, v0, v2

    .line 254
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/16 v1, 0x13a1

    aput v1, v0, v3

    .line 266
    :cond_2e
    :goto_2e
    return-void

    .line 257
    :cond_2f
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency:: 400200, 267200, 267160, 160160, 133133"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 259
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x61b48

    aput v1, v0, v2

    .line 260
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x413c0

    aput v1, v0, v3

    .line 261
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const v1, 0x41398

    aput v1, v0, v4

    .line 262
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x3

    const v2, 0x271a0

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    const/4 v1, 0x4

    const v2, 0x2080d

    aput v2, v0, v1

    goto :goto_2e
.end method

.method private modifyCPUCoreToValue(I)V
    .registers 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    .line 558
    :cond_d
    :goto_d
    return-void

    .line 546
    :cond_e
    const/4 v1, 0x0

    .line 548
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_45

    .line 549
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 550
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3f

    .line 551
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&&& modifyCPUCoreToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_4c

    .line 554
    :cond_3f
    if-eqz v2, :cond_d

    .line 555
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    .line 554
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_45
    move-exception v3

    :goto_46
    if-eqz v1, :cond_4b

    .line 555
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 554
    :cond_4b
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_4c
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_46
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
    .line 478
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 512
    :cond_d
    :goto_d
    return-void

    .line 483
    :cond_e
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2a

    .line 484
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

    .line 487
    :cond_2a
    const/4 v2, 0x0

    .line 493
    .local v2, fos:Ljava/io/FileOutputStream;
    const/16 v4, 0x28

    if-eq p1, v4, :cond_37

    const/16 v4, 0x33

    if-eq p1, v4, :cond_37

    const/16 v4, 0x32

    if-ne p1, v4, :cond_6f

    .line 494
    :cond_37
    const/4 p1, 0x1

    .line 498
    :cond_38
    :goto_38
    :try_start_38
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_3f} :catch_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_95

    .line 499
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_3f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 500
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_68

    .line 501
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
    :try_end_68
    .catchall {:try_start_3f .. :try_end_68} :catchall_b8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_68} :catch_be
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_68} :catch_bb

    .line 508
    :cond_68
    if-eqz v3, :cond_6d

    .line 509
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_6d
    move-object v2, v3

    .line 511
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 495
    :cond_6f
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_38

    .line 496
    const/4 p1, 0x0

    goto :goto_38

    .line 503
    :catch_75
    move-exception v0

    .line 504
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_76
    :try_start_76
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
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_b1

    .line 508
    if-eqz v2, :cond_d

    .line 509
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_d

    .line 505
    :catch_95
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    :goto_96
    :try_start_96
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
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b1

    .line 508
    if-eqz v2, :cond_d

    goto :goto_90

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_b1
    move-exception v4

    :goto_b2
    if-eqz v2, :cond_b7

    .line 509
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 508
    :cond_b7
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_b8
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_b2

    .line 505
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_bb
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_96

    .line 503
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_be
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_76
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
    .line 312
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v2, :cond_5

    .line 328
    :cond_4
    :goto_4
    return-void

    .line 316
    :cond_5
    const/4 v0, 0x0

    .line 318
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3c

    .line 319
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 320
    sget-boolean v2, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 321
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

    .line 324
    :cond_36
    if-eqz v1, :cond_4

    .line 325
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 324
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_3c
    move-exception v2

    :goto_3d
    if-eqz v0, :cond_42

    .line 325
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 324
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
    .registers 10
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v5, :cond_ab

    .line 353
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v5, :cond_d

    .line 413
    :cond_c
    :goto_c
    return-void

    .line 357
    :cond_d
    const/4 v3, 0x0

    .line 362
    .local v3, fos:Ljava/io/FileOutputStream;
    const v5, 0x18704

    if-ne p1, v5, :cond_83

    .line 363
    const/16 v0, 0x64

    .line 364
    .local v0, APE:I
    const/16 v1, 0x64

    .line 370
    .local v1, DDR:I
    :goto_17
    :try_start_17
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/debug/prcmu/ddr_opp"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_a4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_1e} :catch_88

    .line 371
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1e
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 372
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_47

    .line 373
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifySysBusToValue:: DDR = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_47
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 377
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 379
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v5, "/debug/prcmu/ape_opp"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_122
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_54} :catch_125

    .line 380
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :try_start_54
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 381
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_7d

    .line 382
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifySysBusToValue:: APE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_54 .. :try_end_7d} :catchall_a4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_7d} :catch_88

    .line 387
    :cond_7d
    if-eqz v3, :cond_c

    .line 388
    :goto_7f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_c

    .line 366
    .end local v0           #APE:I
    .end local v1           #DDR:I
    :cond_83
    const/16 v0, 0x32

    .line 367
    .restart local v0       #APE:I
    const/16 v1, 0x19

    .restart local v1       #DDR:I
    goto :goto_17

    .line 384
    :catch_88
    move-exception v2

    .line 385
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :goto_89
    :try_start_89
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_a4

    .line 387
    if-eqz v3, :cond_c

    goto :goto_7f

    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_a4
    move-exception v5

    :goto_a5
    if-eqz v3, :cond_aa

    .line 388
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 387
    :cond_aa
    throw v5

    .line 392
    .end local v0           #APE:I
    .end local v1           #DDR:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_ab
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v5, :cond_bc

    .line 393
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_c

    .line 394
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "modifySysBusToValue Returning: "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 399
    :cond_bc
    const/4 v3, 0x0

    .line 401
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :try_start_bd
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_115
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bd .. :try_end_c4} :catch_f5

    .line 402
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :try_start_c4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 403
    sget-boolean v5, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v5, :cond_ed

    .line 404
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$$$ modifySysBusToValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_c4 .. :try_end_ed} :catchall_11c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c4 .. :try_end_ed} :catch_11f

    .line 409
    :cond_ed
    if-eqz v4, :cond_f2

    .line 410
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_f2
    move-object v3, v4

    .line 411
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 406
    :catch_f5
    move-exception v2

    .line 407
    .restart local v2       #e:Ljava/io/UnsupportedEncodingException;
    :goto_f6
    :try_start_f6
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_f6 .. :try_end_10e} :catchall_115

    .line 409
    if-eqz v3, :cond_c

    .line 410
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    .line 409
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_115
    move-exception v5

    :goto_116
    if-eqz v3, :cond_11b

    .line 410
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 409
    :cond_11b
    throw v5

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_11c
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_116

    .line 406
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_11f
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_f6

    .line 387
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #APE:I
    .restart local v1       #DDR:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_122
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_a5

    .line 384
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_125
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_89
.end method

.method private revertCPUCoreToDefault()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 578
    :cond_d
    :goto_d
    return-void

    .line 566
    :cond_e
    const/4 v2, 0x0

    .line 568
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_36

    .line 569
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_17
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 570
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2f

    .line 571
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "&&& revertCPUCoreToDefault : 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_2f} :catch_5f

    .line 575
    :cond_2f
    if-eqz v3, :cond_34

    .line 576
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_34
    move-object v2, v3

    .line 577
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 572
    :catch_36
    move-exception v0

    .line 573
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_37
    :try_start_37
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_55

    .line 575
    if-eqz v2, :cond_d

    .line 576
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d

    .line 575
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_55
    move-exception v4

    :goto_56
    if-eqz v2, :cond_5b

    .line 576
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 575
    :cond_5b
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_5c
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_56

    .line 572
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_5f
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_37
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
    .line 331
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-nez v3, :cond_5

    .line 348
    :cond_4
    :goto_4
    return-void

    .line 335
    :cond_5
    const/4 v1, 0x0

    .line 337
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 338
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

    .line 339
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 340
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### revertGPUToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_26} :catch_56

    .line 345
    :cond_26
    if-eqz v2, :cond_2b

    .line 346
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2b
    move-object v1, v2

    .line 347
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 342
    :catch_2d
    move-exception v0

    .line 343
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

    .line 345
    if-eqz v1, :cond_4

    .line 346
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 345
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_4c
    move-exception v3

    :goto_4d
    if-eqz v1, :cond_52

    .line 346
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 345
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

    .line 342
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
    .line 515
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 538
    :cond_d
    :goto_d
    return-void

    .line 520
    :cond_e
    const/4 v2, 0x0

    .line 522
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_36

    .line 523
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

    .line 524
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2f

    .line 525
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "revertLCDFrameRateToDefault:: value = 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_2f} :catch_ad

    .line 530
    :cond_2f
    if-eqz v3, :cond_34

    .line 532
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_90

    :cond_34
    :goto_34
    move-object v2, v3

    .line 537
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 527
    :catch_36
    move-exception v0

    .line 528
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

    .line 530
    if-eqz v2, :cond_d

    .line 532
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_d

    .line 533
    :catch_55
    move-exception v0

    .line 534
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

    .line 530
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6f
    move-exception v4

    :goto_70
    if-eqz v2, :cond_75

    .line 532
    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 530
    :cond_75
    :goto_75
    throw v4

    .line 533
    :catch_76
    move-exception v0

    .line 534
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

    .line 533
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_90
    move-exception v0

    .line 534
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

    .line 530
    .end local v0           #e:Ljava/io/IOException;
    :catchall_aa
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_70

    .line 527
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
    .line 416
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->IS_AP_TYPE_DB8420:Z

    if-eqz v3, :cond_b2

    .line 418
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-nez v3, :cond_d

    .line 475
    :cond_c
    :goto_c
    return-void

    .line 422
    :cond_d
    const/4 v1, 0x0

    .line 425
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/debug/prcmu/ddr_opp"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_ab
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_15} :catch_74

    .line 426
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_16
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 427
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_2e

    .line 428
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 432
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 434
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/debug/prcmu/ape_opp"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_178
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_3b} :catch_17c

    .line 435
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_3c
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 437
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_54

    .line 438
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_ab
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_54} :catch_74

    .line 444
    :cond_54
    if-eqz v1, :cond_c

    .line 446
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_c

    .line 447
    :catch_5a
    move-exception v0

    .line 448
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

    :goto_70
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 441
    .end local v0           #e:Ljava/io/IOException;
    :catch_74
    move-exception v0

    .line 442
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_75
    :try_start_75
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
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_ab

    .line 444
    if-eqz v1, :cond_c

    .line 446
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_c

    .line 447
    :catch_94
    move-exception v0

    .line 448
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

    goto :goto_70

    .line 444
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ab
    move-exception v3

    :goto_ac
    if-eqz v1, :cond_b1

    .line 446
    :try_start_ae
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_121

    .line 444
    :cond_b1
    :goto_b1
    throw v3

    .line 453
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_b2
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v3, :cond_c

    .line 457
    const/4 v1, 0x0

    .line 459
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :try_start_b7
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/system/cpu/busfreq/curr_freq"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_11a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b7 .. :try_end_be} :catch_df

    .line 460
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_bf
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    sget-boolean v3, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_d7

    .line 462
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_171
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bf .. :try_end_d7} :catch_174

    .line 467
    :cond_d7
    if-eqz v2, :cond_dc

    .line 469
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_156

    :cond_dc
    :goto_dc
    move-object v1, v2

    .line 473
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 464
    :catch_df
    move-exception v0

    .line 465
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_e0
    :try_start_e0
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
    :try_end_f8
    .catchall {:try_start_e0 .. :try_end_f8} :catchall_11a

    .line 467
    if-eqz v1, :cond_c

    .line 469
    :try_start_fa
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    goto/16 :goto_c

    .line 470
    :catch_ff
    move-exception v0

    .line 471
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

    goto/16 :goto_c

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catchall_11a
    move-exception v3

    :goto_11b
    if-eqz v1, :cond_120

    .line 469
    :try_start_11d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_13c

    .line 467
    :cond_120
    :goto_120
    throw v3

    .line 447
    :catch_121
    move-exception v0

    .line 448
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

    goto/16 :goto_b1

    .line 470
    .end local v0           #e:Ljava/io/IOException;
    :catch_13c
    move-exception v0

    .line 471
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

    goto :goto_120

    .line 470
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_156
    move-exception v0

    .line 471
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

    goto/16 :goto_dc

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catchall_171
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_11b

    .line 464
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_174
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_e0

    .line 444
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_178
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_ac

    .line 441
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_17c
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_75
.end method

.method private verifyDefaultCondition()V
    .registers 12

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, buf:Ljava/io/BufferedReader;
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v7, :cond_5c

    .line 171
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/CustomFrequencyManagerService;->GPU_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_73

    .line 172
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 175
    .local v6, parsedRet:[Ljava/lang/String;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, gpuSysfsRet:Ljava/lang/String;
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_56

    .line 177
    const-string v7, ", count = "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_56

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_56

    .line 179
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 180
    .local v5, numOfLock:I
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v7, :cond_4d

    .line 181
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

    .line 183
    :cond_4d
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4e
    if-ge v4, v5, :cond_56

    .line 184
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_11c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_53} :catch_11f

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 191
    .end local v4           #i:I
    .end local v5           #numOfLock:I
    :cond_56
    if-eqz v1, :cond_5b

    .line 193
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_101

    :cond_5b
    :goto_5b
    move-object v0, v1

    .line 200
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    .end local v6           #parsedRet:[Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_5c
    :goto_5c
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mSysBusPath:Z

    if-nez v7, :cond_68

    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mDdrOppPath:Z

    if-nez v7, :cond_68

    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mApeOppPath:Z

    if-eqz v7, :cond_6b

    .line 202
    :cond_68
    :try_start_68
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_b3

    .line 208
    :cond_6b
    :goto_6b
    sget-boolean v7, Lcom/android/server/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v7, :cond_72

    .line 210
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertCPUCoreToDefault()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_cd

    .line 215
    :cond_72
    :goto_72
    return-void

    .line 188
    :catch_73
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :goto_74
    :try_start_74
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
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_ac

    .line 191
    if-eqz v0, :cond_5c

    .line 193
    :try_start_8e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_5c

    .line 194
    :catch_92
    move-exception v2

    .line 195
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

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    :catchall_ac
    move-exception v7

    :goto_ad
    if-eqz v0, :cond_b2

    .line 193
    :try_start_af
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_e7

    .line 191
    :cond_b2
    :goto_b2
    throw v7

    .line 203
    :catch_b3
    move-exception v2

    .line 204
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

    goto :goto_6b

    .line 211
    .end local v2           #e:Ljava/lang/Exception;
    :catch_cd
    move-exception v2

    .line 212
    .restart local v2       #e:Ljava/lang/Exception;
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

    goto :goto_72

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    :catch_e7
    move-exception v2

    .line 195
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

    goto :goto_b2

    .line 194
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #gpuSysfsRet:Ljava/lang/String;
    .restart local v6       #parsedRet:[Ljava/lang/String;
    :catch_101
    move-exception v2

    .line 195
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

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #gpuSysfsRet:Ljava/lang/String;
    :catchall_11c
    move-exception v7

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_ad

    .line 188
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_11f
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_74
.end method


# virtual methods
.method public checkCPUCoreRange(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 305
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 306
    const/4 v1, 0x1

    .line 308
    :goto_d
    return v1

    .line 304
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public checkFrameRateRange(I)Z
    .registers 5
    .parameter "value"

    .prologue
    .line 291
    const/16 v0, 0x28

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_10

    const/16 v0, 0x33

    if-eq p1, v0, :cond_10

    const/16 v0, 0x32

    if-ne p1, v0, :cond_2e

    .line 292
    :cond_10
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 293
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2c
    const/4 v0, 0x1

    .line 300
    :goto_2d
    return v0

    .line 297
    :cond_2e
    sget-boolean v0, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 298
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrameRateRange : Not In RANGE!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4a
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public checkGPUFrequencyRange(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 270
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 271
    const/4 v1, 0x1

    .line 273
    :goto_d
    return v1

    .line 269
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public checkSysBusFrequencyRange(I)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 277
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 278
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

    .line 280
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 281
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2a

    .line 282
    const/4 v1, 0x1

    .line 287
    :goto_29
    return v1

    .line 280
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 284
    :cond_2d
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_49

    .line 285
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

    .line 287
    :cond_49
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public releaseCPUCore(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 932
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 933
    const/4 v1, 0x0

    .line 935
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x4

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 936
    if-nez v1, :cond_25

    .line 937
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_18

    .line 938
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_83
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_aa

    .line 973
    :cond_18
    if-eqz v1, :cond_23

    .line 974
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_22

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_22
    const/4 v1, 0x0

    .line 940
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_6e

    .line 983
    :goto_24
    return-void

    .line 943
    :cond_25
    :try_start_25
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_61

    .line 944
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_34

    .line 945
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_34
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 950
    .local v2, nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_71

    .line 951
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 952
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_5a
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifyCPUCoreToValue(I)V

    .line 955
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_61} :catch_83
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_61} :catch_aa

    .line 973
    .end local v2           #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_61
    :goto_61
    if-eqz v1, :cond_6c

    .line 974
    :try_start_63
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_6b
    :goto_6b
    const/4 v1, 0x0

    .line 982
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_6c
    monitor-exit v5

    goto :goto_24

    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    throw v4

    .line 957
    .restart local v2       #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_71
    :try_start_71
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7c

    .line 958
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertCPUCoreToDefault()V

    .line 961
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_82} :catch_83
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_aa

    goto :goto_61

    .line 965
    .end local v2           #nextCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_83
    move-exception v0

    .line 966
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_84
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_84 .. :try_end_9f} :catchall_d1

    .line 973
    if-eqz v1, :cond_6c

    .line 974
    :try_start_a1
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_6e

    goto :goto_6b

    .line 968
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_aa
    move-exception v0

    .line 969
    .local v0, e:Ljava/io/IOException;
    :try_start_ab
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseCPUCore: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_ab .. :try_end_c6} :catchall_d1

    .line 973
    if-eqz v1, :cond_6c

    .line 974
    :try_start_c8
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 976
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_6b

    .line 973
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_d1
    move-exception v4

    if-eqz v1, :cond_dd

    .line 974
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 975
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_dc

    .line 976
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 978
    :cond_dc
    const/4 v1, 0x0

    .line 973
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_dd
    throw v4
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_6e
.end method

.method public releaseGPU(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 649
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 653
    if-nez v1, :cond_25

    .line 654
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_18

    .line 655
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_86
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_ad

    .line 691
    :cond_18
    if-eqz v1, :cond_23

    .line 692
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_22

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_22
    const/4 v1, 0x0

    .line 657
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_71

    .line 701
    :goto_24
    return-void

    .line 660
    :cond_25
    :try_start_25
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_64

    .line 661
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_34

    .line 662
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_34
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 666
    .local v2, nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_74

    .line 667
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 668
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

    .line 671
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 672
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 673
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_64
    .catchall {:try_start_25 .. :try_end_64} :catchall_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_64} :catch_86
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_64} :catch_ad

    .line 691
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_64
    :goto_64
    if-eqz v1, :cond_6f

    .line 692
    :try_start_66
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6e

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_6e
    :goto_6e
    const/4 v1, 0x0

    .line 700
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_6f
    monitor-exit v5

    goto :goto_24

    :catchall_71
    move-exception v4

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_71

    throw v4

    .line 675
    .restart local v2       #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_74
    :try_start_74
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7f

    .line 676
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_7f
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 679
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_85} :catch_ad

    goto :goto_64

    .line 683
    .end local v2           #nextGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_86
    move-exception v0

    .line 684
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_87
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

    .line 685
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_d4

    .line 691
    if-eqz v1, :cond_6f

    .line 692
    :try_start_a4
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6e

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_71

    goto :goto_6e

    .line 686
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_ad
    move-exception v0

    .line 687
    .local v0, e:Ljava/io/IOException;
    :try_start_ae
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

    .line 688
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_ae .. :try_end_c9} :catchall_d4

    .line 691
    if-eqz v1, :cond_6f

    .line 692
    :try_start_cb
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6e

    .line 694
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_6e

    .line 691
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_d4
    move-exception v4

    if-eqz v1, :cond_e0

    .line 692
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 693
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_df

    .line 694
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 696
    :cond_df
    const/4 v1, 0x0

    .line 691
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_e0
    throw v4
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_71
.end method

.method public releaseSysBus(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 756
    iget-object v5, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, freqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v6, 0x2

    invoke-virtual {v4, p1, v6, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 760
    if-nez v1, :cond_25

    .line 761
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_18

    .line 762
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_83
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_aa

    .line 798
    :cond_18
    if-eqz v1, :cond_23

    .line 799
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .local v3, tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_22

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_22
    const/4 v1, 0x0

    .line 764
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_6e

    .line 808
    :goto_24
    return-void

    .line 767
    :cond_25
    :try_start_25
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_61

    .line 768
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_34

    .line 769
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current SysBus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_34
    iget-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 774
    .local v2, nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_71

    .line 775
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 776
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

    .line 779
    :cond_5a
    iget v4, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v4}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 780
    iput-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_61
    .catchall {:try_start_25 .. :try_end_61} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_61} :catch_83
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_61} :catch_aa

    .line 798
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_61
    :goto_61
    if-eqz v1, :cond_6c

    .line 799
    :try_start_63
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_6b
    :goto_6b
    const/4 v1, 0x0

    .line 807
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_6c
    monitor-exit v5

    goto :goto_24

    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    throw v4

    .line 782
    .restart local v2       #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_71
    :try_start_71
    sget-boolean v4, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7c

    .line 783
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting SysBus to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V

    .line 786
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_82} :catch_83
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_aa

    goto :goto_61

    .line 790
    .end local v2           #nextSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :catch_83
    move-exception v0

    .line 791
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_84
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

    .line 792
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_84 .. :try_end_9f} :catchall_d1

    .line 798
    if-eqz v1, :cond_6c

    .line 799
    :try_start_a1
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_6e

    goto :goto_6b

    .line 793
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catch_aa
    move-exception v0

    .line 794
    .local v0, e:Ljava/io/IOException;
    :try_start_ab
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

    .line 795
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_ab .. :try_end_c6} :catchall_d1

    .line 798
    if-eqz v1, :cond_6c

    .line 799
    :try_start_c8
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_6b

    .line 801
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_6b

    .line 798
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :catchall_d1
    move-exception v4

    if-eqz v1, :cond_dd

    .line 799
    iget-object v3, v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 800
    .restart local v3       #tempBinder:Landroid/os/IBinder;
    if-eqz v3, :cond_dc

    .line 801
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 803
    :cond_dc
    const/4 v1, 0x0

    .line 798
    .end local v3           #tempBinder:Landroid/os/IBinder;
    :cond_dd
    throw v4
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_6e
.end method

.method public requestCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 877
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 879
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 880
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, Core # : "

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

    .line 884
    :cond_42
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 885
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_db

    move-result v1

    if-eqz v1, :cond_fb

    .line 887
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x4

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 889
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 890
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_6e
    if-gez v9, :cond_aa

    .line 893
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x4

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 895
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 897
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 898
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_96

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a8

    .line 910
    :cond_96
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a1

    .line 911
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_a1
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyCPUCoreToValue(I)V

    .line 915
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a8
    .catchall {:try_start_4b .. :try_end_a8} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_a8} :catch_be
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_a8} :catch_de

    .line 928
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v10
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_db

    .line 929
    return-void

    .line 901
    .restart local v9       #index:I
    :cond_aa
    :try_start_aa
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 902
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 903
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_de

    goto :goto_8a

    .line 917
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_be
    move-exception v8

    .line 918
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_bf
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a8

    .line 928
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_db
    move-exception v1

    monitor-exit v10
    :try_end_dd
    .catchall {:try_start_bf .. :try_end_dd} :catchall_db

    throw v1

    .line 920
    :catch_de
    move-exception v8

    .line 921
    .local v8, e:Ljava/io/IOException;
    :try_start_df
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 925
    .end local v8           #e:Ljava/io/IOException;
    :cond_fb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_103
    .catchall {:try_start_df .. :try_end_103} :catchall_db
.end method

.method public requestGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 590
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 592
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 593
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

    .line 595
    :cond_42
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 596
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_e6

    move-result v1

    if-eqz v1, :cond_138

    .line 598
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 601
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 602
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

    .line 604
    :cond_6e
    if-gez v9, :cond_b5

    .line 605
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 607
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 608
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 609
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_e9

    .line 621
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_ac

    .line 622
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: Going to change the GPU value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_ac
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 625
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_b3
    .catchall {:try_start_4b .. :try_end_b3} :catchall_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_b3} :catch_c9
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_b3} :catch_11a

    .line 644
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_b3
    :goto_b3
    :try_start_b3
    monitor-exit v10
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_e6

    .line 646
    return-void

    .line 612
    .restart local v9       #index:I
    :cond_b5
    :try_start_b5
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 613
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 614
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_b5 .. :try_end_c8} :catchall_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_b5 .. :try_end_c8} :catch_c9
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c8} :catch_11a

    goto :goto_8a

    .line 635
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_c9
    move-exception v8

    .line 636
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_ca
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

    .line 637
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b3

    .line 644
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_e6
    move-exception v1

    monitor-exit v10
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_e6

    throw v1

    .line 626
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9       #index:I
    :cond_e9
    :try_start_e9
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-lt v1, v2, :cond_b3

    .line 628
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 629
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_112

    .line 630
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: Going to change the GPU value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_112
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 633
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_119
    .catchall {:try_start_e9 .. :try_end_119} :catchall_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_e9 .. :try_end_119} :catch_c9
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_119} :catch_11a

    goto :goto_b3

    .line 638
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_11a
    move-exception v8

    .line 639
    .local v8, e:Ljava/io/IOException;
    :try_start_11b
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

    .line 640
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b3

    .line 643
    .end local v8           #e:Ljava/io/IOException;
    :cond_138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GPU Frequency value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_140
    .catchall {:try_start_11b .. :try_end_140} :catchall_e6
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .parameter "frequency"
    .parameter "binder"
    .parameter "pkgName"

    .prologue
    .line 811
    sget-object v1, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkFrameRateRange(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    move-result v0

    if-eqz v0, :cond_e

    .line 814
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyFrameRateToValue(I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_1b

    .line 825
    :goto_c
    :try_start_c
    monitor-exit v1

    .line 826
    return-void

    .line 823
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Frame rate value is not in the permitted range."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v0

    .line 815
    :catch_19
    move-exception v0

    goto :goto_c

    .line 818
    :catch_1b
    move-exception v0

    goto :goto_c
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .registers 11
    .parameter "command"

    .prologue
    .line 843
    sget-boolean v6, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1c

    .line 844
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

    .line 847
    :cond_1c
    if-eqz p1, :cond_3e

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3e

    .line 848
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

    .line 851
    :cond_3e
    move-object v5, p1

    .line 853
    .local v5, send:Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 854
    .local v2, localSocket:Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 856
    .local v4, out:Ljava/io/OutputStream;
    :try_start_45
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "MPDECISION_SOCKET"

    invoke-direct {v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 857
    .local v3, localSocketAddress:Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 858
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 859
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5e} :catch_69

    .line 865
    if-eqz v4, :cond_63

    .line 866
    :try_start_60
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_a6

    .line 867
    :cond_63
    if-eqz v2, :cond_68

    .line 868
    :try_start_65
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a8

    .line 873
    .end local v3           #localSocketAddress:Landroid/net/LocalSocketAddress;
    :cond_68
    :goto_68
    return-void

    .line 860
    :catch_69
    move-exception v0

    .line 861
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

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_95

    .line 865
    if-eqz v4, :cond_8a

    .line 866
    :try_start_87
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 867
    :cond_8a
    if-eqz v2, :cond_68

    .line 868
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_90

    goto :goto_68

    .line 869
    :catch_90
    move-exception v1

    .line 870
    .end local v0           #e:Ljava/lang/Exception;
    .local v1, ex:Ljava/io/IOException;
    :goto_91
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 864
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_95
    move-exception v6

    .line 865
    if-eqz v4, :cond_9b

    .line 866
    :try_start_98
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 867
    :cond_9b
    if-eqz v2, :cond_a0

    .line 868
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a1

    .line 864
    :cond_a0
    :goto_a0
    throw v6

    .line 869
    :catch_a1
    move-exception v1

    .line 870
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 869
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
    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 706
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 708
    .local v7, pid:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 709
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

    .line 712
    :cond_42
    iget-object v10, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 713
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_db

    move-result v1

    if-eqz v1, :cond_fb

    .line 715
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 717
    .local v9, index:I
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 718
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

    .line 720
    :cond_6e
    if-gez v9, :cond_aa

    .line 721
    new-instance v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 723
    .local v0, newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 724
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 725
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_96

    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a8

    .line 736
    :cond_96
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_a1

    .line 737
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going tochange the GPU value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_a1
    iget v1, v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-direct {p0, v1}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 740
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mCurrentSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a8
    .catchall {:try_start_4b .. :try_end_a8} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_a8} :catch_be
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_a8} :catch_de

    .line 751
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v10
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_db

    .line 753
    return-void

    .line 728
    .restart local v9       #index:I
    :cond_aa
    :try_start_aa
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 729
    .restart local v0       #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 730
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_aa .. :try_end_bd} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_de

    goto :goto_8a

    .line 742
    .end local v0           #newFreqRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9           #index:I
    :catch_be
    move-exception v8

    .line 743
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

    .line 744
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a8

    .line 751
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catchall_db
    move-exception v1

    monitor-exit v10
    :try_end_dd
    .catchall {:try_start_bf .. :try_end_dd} :catchall_db

    throw v1

    .line 745
    :catch_de
    move-exception v8

    .line 746
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

    .line 747
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 750
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
    .line 829
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 831
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertLCDFrameRateToDefault()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_28

    .line 839
    :goto_6
    :try_start_6
    monitor-exit v2

    .line 840
    return-void

    .line 832
    :catch_8
    move-exception v0

    .line 833
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

    .line 834
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 839
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1

    .line 835
    :catch_28
    move-exception v0

    .line 836
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

    .line 837
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_25

    goto :goto_6
.end method
