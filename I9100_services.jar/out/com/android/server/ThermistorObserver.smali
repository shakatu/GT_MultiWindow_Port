.class Lcom/android/server/ThermistorObserver;
.super Landroid/os/UEventObserver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThermistorObserver$SiopIntentReceiver;,
        Lcom/android/server/ThermistorObserver$SIOPLevel;,
        Lcom/android/server/ThermistorObserver$TmuState;
    }
.end annotation


# static fields
.field private static final ACL_ON_OFF_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/siop_enable"

.field public static final ACTION_CP_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CP_SIOP_LEVEL"

.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_CONDITION_SET_BY_TESTAPP:Ljava/lang/String; = "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final BATT_CHARGING_HYSTERESYS_LOWER:I = 0x14

.field private static final BATT_CHARGING_HYSTERESYS_UPPER:I = 0x19

.field private static final BATT_MAX_CHARGING_LEVEL_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static final BATT_MAX_CHARGING_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_activated"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CPU_MAX_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

.field public static final EXTRA_CP_SIOP_LEVEL:Ljava/lang/String; = "cp_siop_level"

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CHARGING_CURRENT:Ljava/lang/String; = "charging_current"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_CPU_MAX_CORE:Ljava/lang/String; = "cpu_max_core"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_FLASH_LED:Ljava/lang/String; = "flash_led"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_SIOP_CONDITION_SET_BY_TESTAPP_LCD_FPS:Ljava/lang/String; = "lcd_fps"

.field private static final NA:I = -0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final THERMISTOR_UEVENT_KEY:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final THERMISTOR_UEVENT_MATCH:Ljava/lang/String; = "SIOP_LEVEL"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/s5p-tmu"

.field private static final mConfigurableControlCondition:Z = true

.field private static final mDebugLog:Z = true

.field private static final mDebugLogTestApp:Z


# instance fields
.field private mBatteryBR:Landroid/content/BroadcastReceiver;

.field private mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

.field private mBoolAMOLED:Z

.field private mBoolControlACL:Z

.field private mBoolControlBrightness:Z

.field private mBoolControlCPUCore:Z

.field private mBoolControlChargingCurrent:Z

.field private mBoolControlFlashLed:Z

.field private mBoolControlFrequency:Z

.field private mBoolControlLcdFPS:Z

.field private mBoolCurrentLimitBrightnessForAMOLED:Z

.field private mBoolSupportSIOP:Z

.field private final mContext:Landroid/content/Context;

.field private mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field private mIntCurrentSIOPLevel:I

.field private mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private mIntentSIOPLevelChanged:Landroid/content/Intent;

.field private mIsChargingCurrentLimited:Z

.field private mIsLaunchedLimitCharging:Z

.field private mLastLevelFromCP:I

.field private mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mLatestBatteryLevel:I

.field private mLatestMaxBrightness:I

.field private mPM:Landroid/os/PowerManager;

.field private mPMS:Lcom/android/server/PowerManagerService;

.field private mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

.field mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/ThermistorObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 18
    .parameter "context"
    .parameter "pms"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    .line 61
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/ThermistorObserver$SIOPLevel;

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mDVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    .line 265
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    .line 590
    new-instance v1, Lcom/android/server/ThermistorObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$1;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    .line 636
    new-instance v1, Lcom/android/server/ThermistorObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$2;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    .line 660
    new-instance v1, Lcom/android/server/ThermistorObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/ThermistorObserver$3;-><init>(Lcom/android/server/ThermistorObserver;)V

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    .line 178
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    .line 179
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    .line 181
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_83

    .line 182
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    .line 186
    :cond_83
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_af

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 216
    :goto_99
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v12, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CP_SIOP_LEVEL"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;-><init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V

    invoke-virtual {v1, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void

    .line 194
    .end local v12           #filter:Landroid/content/IntentFilter;
    :cond_af
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_147

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    .line 204
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x0

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "ReleasedSIOP"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 205
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x1

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level1"

    const/4 v4, -0x1

    const v5, 0xc3500

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x28

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 206
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x2

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level2"

    const/4 v4, -0x1

    const v5, 0xc3500

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 207
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x3

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level3"

    const/4 v4, -0x1

    const v5, 0x7a120

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 208
    iget-object v13, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v14, 0x4

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    const-string v3, "Level4"

    const/4 v4, -0x1

    const v5, 0x7a120

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/16 v8, 0xe6

    const/16 v9, 0x28

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v1, v13, v14

    .line 209
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_99

    .line 212
    :cond_147
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "DO NOT Support Thermistor Observer."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99
.end method

.method private final LaunchLimitChargingCurrent(I)V
    .registers 8
    .parameter "limitLevel"

    .prologue
    const/4 v5, -0x1

    .line 470
    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver;->mBoolControlChargingCurrent:Z

    if-nez v2, :cond_d

    .line 471
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v3, "LaunchLimitChargingCurrent : NOT SUPPORTED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_c
    return-void

    .line 475
    :cond_d
    monitor-enter p0

    .line 476
    if-nez p1, :cond_6a

    const/4 v0, 0x0

    .line 477
    .local v0, bLimit:Z
    :goto_11
    :try_start_11
    sget-object v2, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LaunchLimitChargingCurrent : prev : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  limitLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    if-eq v2, v0, :cond_65

    .line 480
    if-eqz v0, :cond_6c

    .line 481
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    iget v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    if-eq v2, v5, :cond_63

    iget v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_63

    .line 486
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V

    .line 495
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_63
    :goto_63
    iput-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    .line 497
    :cond_65
    monitor-exit p0

    goto :goto_c

    :catchall_67
    move-exception v2

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_11 .. :try_end_69} :catchall_67

    throw v2

    .line 476
    .end local v0           #bLimit:Z
    :cond_6a
    const/4 v0, 0x1

    goto :goto_11

    .line 490
    .restart local v0       #bLimit:Z
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mBatteryBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_67

    goto :goto_63
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThermistorObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/ThermistorObserver;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/ThermistorObserver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/ThermistorObserver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ThermistorObserver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/ThermistorObserver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/ThermistorObserver;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightnessForAMOLED:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/ThermistorObserver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ThermistorObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ThermistorObserver;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    return p1
.end method

.method private final aclOn(Z)V
    .registers 4
    .parameter "bOn"

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    if-nez v0, :cond_c

    .line 550
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "ACL contol : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_b
    return-void

    .line 553
    :cond_c
    const-string v1, "/sys/class/lcd/panel/siop_enable"

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 9
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

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

    .line 563
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_46

    .line 569
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 570
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_53

    move-object v2, v3

    .line 579
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_3c
    return-void

    .line 564
    :catch_3d
    move-exception v0

    .line 565
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3e
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_3c

    .line 571
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_46
    move-exception v0

    .line 572
    .local v0, e:Ljava/io/IOException;
    :goto_47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 574
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3c

    .line 575
    :catch_4e
    move-exception v1

    .line 576
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 571
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_53
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_47
.end method

.method private final limitBrightness(I)V
    .registers 6
    .parameter "brightness"

    .prologue
    .line 453
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolControlBrightness:Z

    if-nez v1, :cond_c

    .line 454
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "limitBrightness : NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_b
    return-void

    .line 458
    :cond_c
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_24
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mPMS:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PowerManagerService;->setMasterBrightnessLimit(II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_2f

    .line 466
    :goto_2a
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    goto :goto_b

    .line 462
    :catch_2f
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private final limitCPUCore(I)V
    .registers 5
    .parameter "activeCore"

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlCPUCore:Z

    if-nez v0, :cond_c

    .line 430
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_b
    return-void

    .line 434
    :cond_c
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore : activeCore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    invoke-static {v0, p1}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_b
.end method

.method private final limitChargingCurrent(I)V
    .registers 6
    .parameter "limitLevel"

    .prologue
    .line 502
    if-nez p1, :cond_3a

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, siopActivated:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    .line 512
    :goto_6
    const-string v1, "/sys/class/power_supply/battery/siop_activated"

    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    .line 513
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitChargingCurrent : mIsChargingCurrentLimited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " siop activated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limitLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 507
    .end local v0           #siopActivated:I
    :cond_3a
    const/4 v0, 0x1

    .line 508
    .restart local v0       #siopActivated:I
    const-string v1, "/sys/class/power_supply/battery/siop_level"

    invoke-static {v1, p1}, Lcom/android/server/ThermistorObserver;->fileWriteInt(Ljava/lang/String;I)V

    .line 509
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z

    goto :goto_6
.end method

.method private final limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V
    .registers 5
    .parameter "currDVFSLock"
    .parameter "lastDVFSLock"

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFrequency:Z

    if-nez v0, :cond_c

    .line 403
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_b
    :goto_b
    return-void

    .line 407
    :cond_c
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p1, :cond_2a

    .line 410
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 411
    invoke-virtual {p1}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 418
    :cond_1e
    :goto_1e
    if-eqz p2, :cond_32

    .line 419
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 420
    invoke-virtual {p2}, Landroid/os/PowerManager$DVFSLock;->release()V

    goto :goto_b

    .line 415
    :cond_2a
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : currDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 424
    :cond_32
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFrequency : lastDVFSLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private final notifyLimitBrightness(IZ)V
    .registers 7
    .parameter "brightness"
    .parameter "bForce"

    .prologue
    .line 440
    iget v1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_2e

    .line 441
    :cond_6
    iput p1, p0, Lcom/android/server/ThermistorObserver;->mLatestMaxBrightness:I

    .line 443
    :try_start_8
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v2, "max_brightness"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_2f

    .line 450
    :cond_2e
    :goto_2e
    return-void

    .line 446
    :catch_2f
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "notifyLimitBrightness : intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method private final notifyLimitFlashLed(Z)V
    .registers 6
    .parameter "bLimit"

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v2, "flash_led_disable"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLimitFlashLed() : bLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 534
    :goto_26
    return-void

    .line 531
    :catch_27
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "notifyLimitFlashLed : intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private final systemShutdown()V
    .registers 4

    .prologue
    .line 582
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 586
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 588
    return-void
.end method


# virtual methods
.method changeState(I)V
    .registers 4
    .parameter "levelFromCP"

    .prologue
    const/4 v0, 0x1

    .line 381
    if-gez p1, :cond_b

    .line 382
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "invaild siop level."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_a
    return-void

    .line 387
    :cond_b
    if-lt p1, v0, :cond_19

    .line 388
    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    .line 394
    :goto_10
    const/4 v0, 0x2

    if-lt p1, v0, :cond_27

    .line 395
    const/16 v0, 0xe6

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_a

    .line 390
    :cond_19
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto :goto_10

    .line 397
    :cond_27
    iget-object v0, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    iget v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_a
.end method

.method changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V
    .registers 7
    .parameter "currLevel"
    .parameter "lastLevel"

    .prologue
    const/4 v3, 0x1

    .line 345
    if-eqz p1, :cond_5

    if-nez p2, :cond_28

    .line 346
    :cond_5
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_27
    return-void

    .line 350
    :cond_28
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {p2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ThermistorObserver;->limitFrequency(Landroid/os/PowerManager$DVFSLock;Landroid/os/PowerManager$DVFSLock;)V

    .line 353
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$900(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitCPUCore(I)V

    .line 354
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->LaunchLimitChargingCurrent(I)V

    .line 355
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1100(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ThermistorObserver;->limitLcdFPS(I)V

    .line 356
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ThermistorObserver;->limitFlashLed(Z)V

    .line 359
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    if-ltz v0, :cond_9f

    .line 361
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    if-lt v0, v3, :cond_8f

    .line 362
    invoke-direct {p0, v3}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    .line 368
    :goto_84
    iget v0, p0, Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_97

    .line 369
    const/16 v0, 0xe6

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_27

    .line 364
    :cond_8f
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto :goto_84

    .line 371
    :cond_97
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    goto :goto_27

    .line 374
    :cond_9f
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->limitBrightness(I)V

    .line 375
    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver;->aclOn(Z)V

    goto/16 :goto_27
.end method

.method decisionLevel(I)Lcom/android/server/ThermistorObserver$SIOPLevel;
    .registers 6
    .parameter "temperature"

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, i:I
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 287
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_33

    .line 296
    :cond_e
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decisionLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v0

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v1, v1, v0

    return-object v1

    .line 290
    :cond_33
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    if-lt p1, v1, :cond_e

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final limitFlashLed(Z)V
    .registers 4
    .parameter "bLimit"

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlFlashLed:Z

    if-nez v0, :cond_c

    .line 538
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitFlashLed : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_b
    return-void

    .line 544
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver;->notifyLimitFlashLed(Z)V

    goto :goto_b
.end method

.method public final limitLcdFPS(I)V
    .registers 5
    .parameter "FPS"

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver;->mBoolControlLcdFPS:Z

    if-nez v0, :cond_c

    .line 518
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v1, "limitLcdFPS : NOT SUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_b
    return-void

    .line 522
    :cond_c
    sget-object v0, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitLcdFPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    .line 225
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermistor UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-enter p0

    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, currentSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_start_1f
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIOP_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_63

    move-result v4

    if-eq v4, v7, :cond_66

    .line 233
    const/4 v1, -0x1

    .line 234
    .local v1, currentLevelfromDriver:I
    :try_start_2c
    const-string v4, "SIOP_LEVEL"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 235
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v4, v1

    .line 238
    iput v1, p0, Lcom/android/server/ThermistorObserver;->mIntCurrentSIOPLevel:I

    .line 240
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eq v2, v4, :cond_47

    .line 241
    iget-object v4, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 242
    iput-object v2, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_63
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_47} :catch_49

    .line 261
    .end local v1           #currentLevelfromDriver:I
    :cond_47
    :goto_47
    :try_start_47
    monitor-exit p0

    .line 262
    return-void

    .line 244
    .restart local v1       #currentLevelfromDriver:I
    :catch_49
    move-exception v3

    .line 245
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse SIOP_LEVEL from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 261
    .end local v1           #currentLevelfromDriver:I
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catchall_63
    move-exception v4

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_63

    throw v4

    .line 248
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_63

    move-result v4

    if-eq v4, v7, :cond_9d

    .line 250
    :try_start_72
    const-string v4, "TMUSTATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, TMU_STATE:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_47

    .line 252
    invoke-direct {p0}, Lcom/android/server/ThermistorObserver;->systemShutdown()V
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_63
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_82} :catch_83

    goto :goto_47

    .line 254
    .end local v0           #TMU_STATE:I
    :catch_83
    move-exception v3

    .line 255
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    :try_start_84
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse TMUSTATE from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 259
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_9d
    sget-object v4, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v5, "Thermistor : onUEvent : ERROR : SHOULD NOT BE HERE!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_84 .. :try_end_a4} :catchall_63

    goto :goto_47
.end method

.method systemReady()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 303
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mSystemReady:Z

    .line 306
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolAMOLED:Z

    if-eqz v1, :cond_3e

    .line 307
    const/4 v1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mBatteryBRForAMOLED:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver for mBatteryBRForAMOLED."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2a
    :goto_2a
    iput-boolean v3, p0, Lcom/android/server/ThermistorObserver;->mBoolControlACL:Z

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIOP_CONDITION_SET_BY_TESTAPP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThermistorObserver;->mSIOPLevelSetByTestApp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    return-void

    .line 314
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3e
    iget-boolean v1, p0, Lcom/android/server/ThermistorObserver;->mBoolSupportSIOP:Z

    if-eqz v1, :cond_2a

    .line 315
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    if-eqz v1, :cond_58

    .line 316
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/ThermistorObserver;->notifyLimitBrightness(IZ)V

    .line 317
    iget-object v1, p0, Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->limitFlashLed(Z)V

    .line 320
    :cond_58
    const-string v1, "SIOP_LEVEL"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 321
    const-string v1, "DEVPATH=/devices/platform/s5p-tmu"

    invoke-virtual {p0, v1}, Lcom/android/server/ThermistorObserver;->startObserving(Ljava/lang/String;)V

    .line 322
    sget-object v1, Lcom/android/server/ThermistorObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start Observing for SIOP."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method
