.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1220
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1222
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1224
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 124
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return-void
.end method

.method public run()V
    .registers 147

    .prologue
    .line 130
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 134
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 136
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 139
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 140
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 144
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v119

    .line 146
    .local v119, shutdownAction:Ljava/lang/String;
    if-eqz v119, :cond_55

    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_55

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, v119

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_8e0

    const/16 v113, 0x1

    .line 150
    .local v113, reboot:Z
    :goto_3c
    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_8e4

    .line 151
    const/4 v3, 0x1

    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v119

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v112

    .line 156
    .local v112, reason:Ljava/lang/String;
    :goto_4e
    move/from16 v0, v113

    move-object/from16 v1, v112

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 160
    .end local v112           #reason:Ljava/lang/String;
    .end local v113           #reboot:Z
    :cond_55
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 161
    .local v83, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e8

    const/16 v82, 0x0

    .line 163
    .local v82, factoryTest:I
    :goto_67
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 165
    .local v16, headless:Z
    const/16 v44, 0x0

    .line 166
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v65, 0x0

    .line 167
    .local v65, contentService:Landroid/content/ContentService;
    const/16 v90, 0x0

    .line 168
    .local v90, lights:Lcom/android/server/LightsService;
    const/16 v111, 0x0

    .line 169
    .local v111, power:Lcom/android/server/PowerManagerService;
    const/16 v53, 0x0

    .line 170
    .local v53, battery:Lcom/android/server/BatteryService;
    const/16 v133, 0x0

    .line 171
    .local v133, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 172
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 173
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 174
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v102, 0x0

    .line 175
    .local v102, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v62, 0x0

    .line 176
    .local v62, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v143, 0x0

    .line 177
    .local v143, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v140, 0x0

    .line 178
    .local v140, wifi:Lcom/android/server/WifiService;
    const/16 v138, 0x0

    .line 180
    .local v138, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v142, 0x0

    .line 182
    .local v142, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v118, 0x0

    .line 183
    .local v118, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v110, 0x0

    .line 184
    .local v110, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 185
    .local v4, context:Landroid/content/Context;
    const/16 v145, 0x0

    .line 186
    .local v145, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v54, 0x0

    .line 187
    .local v54, bluetooth:Landroid/server/BluetoothService;
    const/16 v56, 0x0

    .line 188
    .local v56, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v50, 0x0

    .line 189
    .local v50, avrcp:Landroid/server/AvrcpStubService;
    const/16 v75, 0x0

    .line 190
    .local v75, dock:Lcom/android/server/DockObserver;
    const/16 v122, 0x0

    .line 191
    .local v122, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v131, 0x0

    .line 192
    .local v131, usb:Lcom/android/server/usb/UsbService;
    const/16 v116, 0x0

    .line 193
    .local v116, serial:Lcom/android/server/SerialService;
    const/16 v129, 0x0

    .line 194
    .local v129, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v114, 0x0

    .line 195
    .local v114, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v124, 0x0

    .line 196
    .local v124, throttle:Lcom/android/server/ThrottleService;
    const/16 v104, 0x0

    .line 197
    .local v104, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v59, 0x0

    .line 198
    .local v59, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v88, 0x0

    .line 199
    .local v88, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v69, 0x0

    .line 202
    .local v69, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v71, 0x0

    .line 205
    .local v71, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_b6
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 208
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_d3} :catch_d5f

    .line 210
    .end local v111           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_d3
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 212
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static/range {v82 .. v82}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 215
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 224
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 227
    .local v68, cryptState:Ljava/lang/String;
    const/16 v108, 0x0

    .line 228
    .local v108, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8ee

    .line 229
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v108, 0x1

    .line 236
    :cond_12a
    :goto_12a
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v82, :cond_903

    const/4 v3, 0x1

    :goto_134
    move/from16 v0, v108

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v110

    .line 240
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_141} :catch_912

    .line 241
    const/16 v84, 0x0

    .line 243
    .local v84, firstBoot:Z
    :try_start_143
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_146} :catch_ce4
    .catch Ljava/lang/RuntimeException; {:try_start_143 .. :try_end_146} :catch_912

    move-result v84

    .line 247
    :goto_147
    :try_start_147
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 249
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_152
    .catch Ljava/lang/RuntimeException; {:try_start_147 .. :try_end_152} :catch_912

    .line 253
    :try_start_152
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v45, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_160
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_160} :catch_906
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_160} :catch_912

    .line 255
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_160
    const-string v3, "account"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_167} :catch_db4
    .catch Ljava/lang/RuntimeException; {:try_start_160 .. :try_end_167} :catch_d68

    move-object/from16 v44, v45

    .line 260
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_169
    :try_start_169
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x1

    move/from16 v0, v82

    if-ne v0, v3, :cond_929

    const/4 v3, 0x1

    :goto_176
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v65

    .line 266
    new-instance v72, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_181
    .catch Ljava/lang/RuntimeException; {:try_start_169 .. :try_end_181} :catch_912

    .line 268
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .local v72, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_181
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_18c

    .line 269
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_18c} :catch_92c
    .catch Ljava/lang/RuntimeException; {:try_start_181 .. :try_end_18c} :catch_d71

    :cond_18c
    move-object/from16 v71, v72

    .line 275
    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_18e
    if-eqz v71, :cond_19a

    .line 276
    :try_start_190
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 280
    :cond_19a
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 283
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v91, Lcom/android/server/LightsService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1b2
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_1b2} :catch_912

    .line 286
    .end local v90           #lights:Lcom/android/server/LightsService;
    .local v91, lights:Lcom/android/server/LightsService;
    :try_start_1b2
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v91

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1c0
    .catch Ljava/lang/RuntimeException; {:try_start_1b2 .. :try_end_1c0} :catch_d7a

    .line 288
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_1c0
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 290
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v134, Lcom/android/server/VibratorService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1d3
    .catch Ljava/lang/RuntimeException; {:try_start_1c0 .. :try_end_1d3} :catch_d83

    .line 292
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .local v134, vibrator:Lcom/android/server/VibratorService;
    :try_start_1d3
    const-string v3, "vibrator"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v91

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 298
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1ef
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1ef} :catch_d8a

    .line 300
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_1ef
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 302
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 306
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "android.hardware.sensor.hub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_223

    .line 307
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    :cond_223
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_93a

    const/4 v3, 0x1

    move v9, v3

    :goto_231
    if-nez v84, :cond_93e

    const/4 v3, 0x1

    :goto_234
    move/from16 v0, v108

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v145

    .line 314
    const-string v3, "window"

    move-object/from16 v0, v145

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v88

    .line 316
    const-string v3, "input"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v145

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 321
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 327
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_941

    .line 328
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26f
    .catch Ljava/lang/RuntimeException; {:try_start_1ef .. :try_end_26f} :catch_94f

    :goto_26f
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .line 364
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v108           #onlyCore:Z
    .restart local v90       #lights:Lcom/android/server/LightsService;
    :goto_273
    const/16 v73, 0x0

    .line 366
    .local v73, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v80, 0x0

    .line 368
    .local v80, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v120, 0x0

    .line 369
    .local v120, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v86, 0x0

    .line 370
    .local v86, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 371
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v106, 0x0

    .line 372
    .local v106, notification:Lcom/android/server/NotificationManagerService;
    const/16 v136, 0x0

    .line 373
    .local v136, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v92, 0x0

    .line 374
    .local v92, location:Lcom/android/server/LocationManagerService;
    const/16 v66, 0x0

    .line 375
    .local v66, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v126, 0x0

    .line 376
    .local v126, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v94, 0x0

    .line 377
    .local v94, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v77, 0x0

    .line 380
    .local v77, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_2ba

    .line 382
    :try_start_290
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v87, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v145

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2a0
    .catch Ljava/lang/Throwable; {:try_start_290 .. :try_end_2a0} :catch_9ab

    .line 384
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_2a0
    const-string v3, "input_method"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a7
    .catch Ljava/lang/Throwable; {:try_start_2a0 .. :try_end_2a7} :catch_d5a

    move-object/from16 v86, v87

    .line 390
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_2a9
    :try_start_2a9
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ba
    .catch Ljava/lang/Throwable; {:try_start_2a9 .. :try_end_2ba} :catch_9b7

    .line 400
    :cond_2ba
    :goto_2ba
    :try_start_2ba
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v70, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c8
    .catch Ljava/lang/Throwable; {:try_start_2ba .. :try_end_2c8} :catch_9c3

    .line 402
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v70, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_2c8
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2cf
    .catch Ljava/lang/Throwable; {:try_start_2c8 .. :try_end_2cf} :catch_d55

    move-object/from16 v69, v70

    .line 408
    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_2d1
    :try_start_2d1
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2d4
    .catch Ljava/lang/Throwable; {:try_start_2d1 .. :try_end_2d4} :catch_9cf

    .line 414
    :goto_2d4
    :try_start_2d4
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2d7
    .catch Ljava/lang/Throwable; {:try_start_2d4 .. :try_end_2d7} :catch_9db

    .line 420
    :goto_2d7
    :try_start_2d7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404d9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_2d7 .. :try_end_2ea} :catch_d52

    .line 427
    :goto_2ea
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_db9

    .line 428
    const/16 v100, 0x0

    .line 429
    .local v100, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_316

    .line 435
    :try_start_2ff
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v101, Lcom/android/server/MountService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_30d
    .catch Ljava/lang/Throwable; {:try_start_2ff .. :try_end_30d} :catch_9e7

    .line 437
    .end local v100           #mountService:Lcom/android/server/MountService;
    .local v101, mountService:Lcom/android/server/MountService;
    :try_start_30d
    const-string v3, "mount"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_314
    .catch Ljava/lang/Throwable; {:try_start_30d .. :try_end_314} :catch_d4d

    move-object/from16 v100, v101

    .line 444
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    :cond_316
    :goto_316
    :try_start_316
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v95, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_324
    .catch Ljava/lang/Throwable; {:try_start_316 .. :try_end_324} :catch_9f3

    .line 446
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v95, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_324
    const-string v3, "lock_settings"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_324 .. :try_end_32b} :catch_d48

    move-object/from16 v94, v95

    .line 452
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_32d
    :try_start_32d
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v74, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33b
    .catch Ljava/lang/Throwable; {:try_start_32d .. :try_end_33b} :catch_9ff

    .line 454
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v74, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_33b
    const-string v3, "device_policy"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_342
    .catch Ljava/lang/Throwable; {:try_start_33b .. :try_end_342} :catch_d43

    move-object/from16 v73, v74

    .line 460
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_344
    :try_start_344
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v121, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v145

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_354
    .catch Ljava/lang/Throwable; {:try_start_344 .. :try_end_354} :catch_a0b

    .line 462
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v121, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_354
    const-string v3, "statusbar"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35b
    .catch Ljava/lang/Throwable; {:try_start_354 .. :try_end_35b} :catch_d3e

    move-object/from16 v120, v121

    .line 469
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_35d
    :try_start_35d
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v81, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v110

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v81

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_370
    .catch Ljava/lang/Throwable; {:try_start_35d .. :try_end_370} :catch_a17

    .line 471
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v81, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_370
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37e
    .catch Ljava/lang/Throwable; {:try_start_370 .. :try_end_37e} :catch_d39

    move-object/from16 v80, v81

    .line 479
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_380
    :try_start_380
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_391
    .catch Ljava/lang/Throwable; {:try_start_380 .. :try_end_391} :catch_a23

    .line 490
    :goto_391
    :try_start_391
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a2
    .catch Ljava/lang/Throwable; {:try_start_391 .. :try_end_3a2} :catch_a2f

    .line 498
    :goto_3a2
    :try_start_3a2
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 500
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b2
    .catch Ljava/lang/Throwable; {:try_start_3a2 .. :try_end_3b2} :catch_a3b

    .line 506
    :goto_3b2
    :try_start_3b2
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v127, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c0
    .catch Ljava/lang/Throwable; {:try_start_3b2 .. :try_end_3c0} :catch_a47

    .line 508
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v127, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_3c0
    const-string v3, "textservices"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c7
    .catch Ljava/lang/Throwable; {:try_start_3c0 .. :try_end_3c7} :catch_d34

    move-object/from16 v126, v127

    .line 514
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_3c9
    :try_start_3c9
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v103, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_3d7
    .catch Ljava/lang/Throwable; {:try_start_3c9 .. :try_end_3d7} :catch_a53

    .line 516
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v103, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_3d7
    const-string v3, "netstats"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3de
    .catch Ljava/lang/Throwable; {:try_start_3d7 .. :try_end_3de} :catch_d2f

    move-object/from16 v12, v103

    .line 522
    .end local v103           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_3e0
    :try_start_3e0
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_3f2
    .catch Ljava/lang/Throwable; {:try_start_3e0 .. :try_end_3f2} :catch_a5f

    .line 526
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_3f2
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f7
    .catch Ljava/lang/Throwable; {:try_start_3f2 .. :try_end_3f7} :catch_d2c

    .line 532
    :goto_3f7
    :try_start_3f7
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v144, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_405
    .catch Ljava/lang/Throwable; {:try_start_3f7 .. :try_end_405} :catch_a6d

    .line 534
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v144, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_405
    const-string v3, "wifip2p"

    move-object/from16 v0, v144

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40c
    .catch Ljava/lang/Throwable; {:try_start_405 .. :try_end_40c} :catch_d27

    move-object/from16 v143, v144

    .line 540
    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_40e
    :try_start_40e
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v141, Lcom/android/server/WifiService;

    move-object/from16 v0, v141

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_41c
    .catch Ljava/lang/Throwable; {:try_start_40e .. :try_end_41c} :catch_a79

    .line 542
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .local v141, wifi:Lcom/android/server/WifiService;
    :try_start_41c
    const-string v3, "wifi"

    move-object/from16 v0, v141

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_423
    .catch Ljava/lang/Throwable; {:try_start_41c .. :try_end_423} :catch_d22

    move-object/from16 v140, v141

    .line 549
    .end local v141           #wifi:Lcom/android/server/WifiService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    :goto_425
    :try_start_425
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v139, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_433
    .catch Ljava/lang/Throwable; {:try_start_425 .. :try_end_433} :catch_a85

    .line 551
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .local v139, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_433
    const-string v3, "wfd"

    move-object/from16 v0, v139

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43a
    .catch Ljava/lang/Throwable; {:try_start_433 .. :try_end_43a} :catch_d1d

    move-object/from16 v138, v139

    .line 574
    .end local v139           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_43c
    :try_start_43c
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v63, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_44a
    .catch Ljava/lang/Throwable; {:try_start_43c .. :try_end_44a} :catch_a91

    .line 577
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .local v63, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_44a
    const-string v3, "connectivity"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 579
    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 580
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 581
    invoke-virtual/range {v143 .. v143}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_461
    .catch Ljava/lang/Throwable; {:try_start_44a .. :try_end_461} :catch_d18

    move-object/from16 v62, v63

    .line 587
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_463
    :try_start_463
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v118

    .line 589
    const-string v3, "servicediscovery"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_475
    .catch Ljava/lang/Throwable; {:try_start_463 .. :try_end_475} :catch_a9d

    .line 596
    :goto_475
    :try_start_475
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v125, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_483
    .catch Ljava/lang/Throwable; {:try_start_475 .. :try_end_483} :catch_aa9

    .line 598
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .local v125, throttle:Lcom/android/server/ThrottleService;
    :try_start_483
    const-string v3, "throttle"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48a
    .catch Ljava/lang/Throwable; {:try_start_483 .. :try_end_48a} :catch_d13

    move-object/from16 v124, v125

    .line 605
    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    :goto_48c
    :try_start_48c
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49d
    .catch Ljava/lang/Throwable; {:try_start_48c .. :try_end_49d} :catch_ab5

    .line 617
    :goto_49d
    if-eqz v100, :cond_4b2

    .line 619
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b2

    .line 620
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 624
    :cond_4b2
    if-eqz v44, :cond_4b7

    .line 625
    :try_start_4b4
    invoke-virtual/range {v44 .. v44}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_4b7
    .catch Ljava/lang/Throwable; {:try_start_4b4 .. :try_end_4b7} :catch_ac1

    .line 631
    :cond_4b7
    :goto_4b7
    if-eqz v65, :cond_4bc

    .line 632
    :try_start_4b9
    invoke-virtual/range {v65 .. v65}, Landroid/content/ContentService;->systemReady()V
    :try_end_4bc
    .catch Ljava/lang/Throwable; {:try_start_4b9 .. :try_end_4bc} :catch_acd

    .line 638
    :cond_4bc
    :goto_4bc
    :try_start_4bc
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v107, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v120

    move-object/from16 v2, v90

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_4ce
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4ce} :catch_ad9

    .line 640
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .local v107, notification:Lcom/android/server/NotificationManagerService;
    :try_start_4ce
    const-string v3, "notification"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 641
    move-object/from16 v0, v107

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_4da
    .catch Ljava/lang/Throwable; {:try_start_4ce .. :try_end_4da} :catch_d0e

    move-object/from16 v106, v107

    .line 647
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    :goto_4dc
    :try_start_4dc
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ed
    .catch Ljava/lang/Throwable; {:try_start_4dc .. :try_end_4ed} :catch_ae5

    .line 655
    :goto_4ed
    :try_start_4ed
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v93, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4fb
    .catch Ljava/lang/Throwable; {:try_start_4ed .. :try_end_4fb} :catch_af1

    .line 657
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .local v93, location:Lcom/android/server/LocationManagerService;
    :try_start_4fb
    const-string v3, "location"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_502
    .catch Ljava/lang/Throwable; {:try_start_4fb .. :try_end_502} :catch_d09

    move-object/from16 v92, v93

    .line 663
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    :goto_504
    :try_start_504
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_512
    .catch Ljava/lang/Throwable; {:try_start_504 .. :try_end_512} :catch_afd

    .line 665
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v67, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_512
    const-string v3, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_519
    .catch Ljava/lang/Throwable; {:try_start_512 .. :try_end_519} :catch_d04

    move-object/from16 v66, v67

    .line 671
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_51b
    :try_start_51b
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52c
    .catch Ljava/lang/Throwable; {:try_start_51b .. :try_end_52c} :catch_b09

    .line 679
    :goto_52c
    :try_start_52c
    const-string v3, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v110

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b15

    .line 680
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v3, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v4}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_547
    .catch Ljava/lang/Throwable; {:try_start_52c .. :try_end_547} :catch_b1e

    .line 690
    :goto_547
    :try_start_547
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55f
    .catch Ljava/lang/Throwable; {:try_start_547 .. :try_end_55f} :catch_b3b

    .line 697
    :goto_55f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_585

    .line 700
    :try_start_56c
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-nez v16, :cond_585

    .line 702
    new-instance v137, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v137

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_57c
    .catch Ljava/lang/Throwable; {:try_start_56c .. :try_end_57c} :catch_b47

    .line 703
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v137, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_57c
    const-string v3, "wallpaper"

    move-object/from16 v0, v137

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_583
    .catch Ljava/lang/Throwable; {:try_start_57c .. :try_end_583} :catch_cff

    move-object/from16 v136, v137

    .line 710
    .end local v137           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_585
    :goto_585
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a4

    .line 712
    :try_start_593
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a4
    .catch Ljava/lang/Throwable; {:try_start_593 .. :try_end_5a4} :catch_b53

    .line 720
    :cond_5a4
    :goto_5a4
    :try_start_5a4
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v76, Lcom/android/server/DockObserver;

    move-object/from16 v0, v76

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_5b2
    .catch Ljava/lang/Throwable; {:try_start_5a4 .. :try_end_5b2} :catch_b5f

    .end local v75           #dock:Lcom/android/server/DockObserver;
    .local v76, dock:Lcom/android/server/DockObserver;
    move-object/from16 v75, v76

    .line 728
    .end local v76           #dock:Lcom/android/server/DockObserver;
    .restart local v75       #dock:Lcom/android/server/DockObserver;
    :goto_5b4
    :try_start_5b4
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_5c0
    .catch Ljava/lang/Throwable; {:try_start_5b4 .. :try_end_5c0} :catch_b6b

    .line 736
    :goto_5c0
    :try_start_5c0
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v123, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v123

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_5ce
    .catch Ljava/lang/Throwable; {:try_start_5c0 .. :try_end_5ce} :catch_b77

    .end local v122           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v123, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v122, v123

    .line 744
    .end local v123           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v122       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_5d0
    :try_start_5d0
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v132, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_5de
    .catch Ljava/lang/Throwable; {:try_start_5d0 .. :try_end_5de} :catch_b83

    .line 747
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .local v132, usb:Lcom/android/server/usb/UsbService;
    :try_start_5de
    const-string v3, "usb"

    move-object/from16 v0, v132

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e5
    .catch Ljava/lang/Throwable; {:try_start_5de .. :try_end_5e5} :catch_cfa

    move-object/from16 v131, v132

    .line 753
    .end local v132           #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    :goto_5e7
    :try_start_5e7
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v117, Lcom/android/server/SerialService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_5f5
    .catch Ljava/lang/Throwable; {:try_start_5e7 .. :try_end_5f5} :catch_b8f

    .line 756
    .end local v116           #serial:Lcom/android/server/SerialService;
    .local v117, serial:Lcom/android/server/SerialService;
    :try_start_5f5
    const-string v3, "serial"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5fc
    .catch Ljava/lang/Throwable; {:try_start_5f5 .. :try_end_5fc} :catch_cf5

    move-object/from16 v116, v117

    .line 762
    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    :goto_5fe
    :try_start_5fe
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v130, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v130

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_60c
    .catch Ljava/lang/Throwable; {:try_start_5fe .. :try_end_60c} :catch_b9b

    .end local v129           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v130, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v129, v130

    .line 770
    .end local v130           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v129       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_60e
    :try_start_60e
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61f
    .catch Ljava/lang/Throwable; {:try_start_60e .. :try_end_61f} :catch_ba7

    .line 778
    :goto_61f
    :try_start_61f
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_62d
    .catch Ljava/lang/Throwable; {:try_start_61f .. :try_end_62d} :catch_bb3

    .line 780
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_62d
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_634
    .catch Ljava/lang/Throwable; {:try_start_62d .. :try_end_634} :catch_cf0

    move-object/from16 v47, v48

    .line 786
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_636
    :try_start_636
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v115, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_644
    .catch Ljava/lang/Throwable; {:try_start_636 .. :try_end_644} :catch_bbf

    .end local v114           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v115, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v114, v115

    .line 793
    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v114       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_646
    :try_start_646
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_657
    .catch Ljava/lang/Throwable; {:try_start_646 .. :try_end_657} :catch_bcb

    .line 813
    :goto_657
    :try_start_657
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_668
    .catch Ljava/lang/Throwable; {:try_start_657 .. :try_end_668} :catch_bd7

    .line 821
    :goto_668
    :try_start_668
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v105, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_676
    .catch Ljava/lang/Throwable; {:try_start_668 .. :try_end_676} :catch_be3

    .end local v104           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v105, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v104, v105

    .line 827
    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v104       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_678
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v109

    .line 830
    .local v109, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69b

    .line 834
    :try_start_686
    const-string v3, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v89, Landroid/app/IrdaService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 838
    .local v89, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69b
    .catch Ljava/lang/Throwable; {:try_start_686 .. :try_end_69b} :catch_bef

    .line 848
    .end local v89           #irda:Landroid/app/IrdaService;
    :cond_69b
    :goto_69b
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6ba

    .line 850
    :try_start_6a5
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v52, Landroid/app/BarBeamService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 853
    .local v52, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ba
    .catch Ljava/lang/Throwable; {:try_start_6a5 .. :try_end_6ba} :catch_bfb

    .line 862
    .end local v52           #barbeam:Landroid/app/BarBeamService;
    :cond_6ba
    :goto_6ba
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78b

    .line 864
    :try_start_6c4
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v97, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 867
    .local v97, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v99, "/data/dalvik-cache/minimode.dex"

    .line 869
    .local v99, minimodeGenDexPath:Ljava/lang/String;
    new-instance v85, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v85 .. v85}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 870
    .local v85, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v97

    move-object/from16 v1, v85

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_752

    .line 871
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v97

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v99

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_752

    .line 873
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v99

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v97

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v98, Ljava/io/File;

    invoke-direct/range {v98 .. v99}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v98, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v85

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v98

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_752

    .line 876
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v99

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v85

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v98           #minimodeGenDexFile:Ljava/io/File;
    :cond_752
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 884
    .local v58, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 885
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 887
    .local v43, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78b
    .catch Ljava/lang/Throwable; {:try_start_6c4 .. :try_end_78b} :catch_c07

    .line 898
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v58           #cl:Ljava/lang/ClassLoader;
    .end local v85           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v97           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v99           #minimodeGenDexPath:Ljava/lang/String;
    :cond_78b
    :goto_78b
    :try_start_78b
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_795
    .catch Ljava/lang/Throwable; {:try_start_78b .. :try_end_795} :catch_c13

    .line 905
    :goto_795
    :try_start_795
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v60, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_7a3
    .catch Ljava/lang/Throwable; {:try_start_795 .. :try_end_7a3} :catch_c1f

    .line 907
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v60, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_7a3
    const-string v3, "commontime_management"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7aa
    .catch Ljava/lang/Throwable; {:try_start_7a3 .. :try_end_7aa} :catch_ceb

    move-object/from16 v59, v60

    .line 913
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_7ac
    :try_start_7ac
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7bd
    .catch Ljava/lang/Throwable; {:try_start_7ac .. :try_end_7bd} :catch_c2b

    .line 920
    :goto_7bd
    :try_start_7bd
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/16 v128, 0x0

    .line 922
    .local v128, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v128

    .line 923
    if-nez v128, :cond_c37

    .line 924
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d5
    .catch Ljava/lang/Throwable; {:try_start_7bd .. :try_end_7d5} :catch_c65

    .line 937
    .end local v128           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_7d5
    :try_start_7d5
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e6
    .catch Ljava/lang/Throwable; {:try_start_7d5 .. :try_end_7e6} :catch_c71

    .line 945
    :goto_7e6
    :try_start_7e6
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_7f2
    .catch Ljava/lang/Throwable; {:try_start_7e6 .. :try_end_7f2} :catch_c7b

    .line 951
    :goto_7f2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_816

    .line 954
    :try_start_7ff
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v78, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_80d
    .catch Ljava/lang/Throwable; {:try_start_7ff .. :try_end_80d} :catch_c87

    .line 957
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v78, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_80d
    const-string v3, "dreams"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_814
    .catch Ljava/lang/Throwable; {:try_start_80d .. :try_end_814} :catch_ce7

    move-object/from16 v77, v78

    .line 980
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v100           #mountService:Lcom/android/server/MountService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_816
    :goto_816
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 981
    .local v29, safeMode:Z
    if-eqz v29, :cond_c93

    .line 982
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 984
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 986
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 995
    :goto_82d
    :try_start_82d
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_830
    .catch Ljava/lang/Throwable; {:try_start_82d .. :try_end_830} :catch_c9c

    .line 1001
    :goto_830
    :try_start_830
    invoke-virtual/range {v94 .. v94}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_833
    .catch Ljava/lang/Throwable; {:try_start_830 .. :try_end_833} :catch_ca8

    .line 1006
    :goto_833
    if-eqz v73, :cond_838

    .line 1008
    :try_start_835
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_838
    .catch Ljava/lang/Throwable; {:try_start_835 .. :try_end_838} :catch_cb4

    .line 1015
    :cond_838
    :goto_838
    if-eqz v80, :cond_844

    .line 1016
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1017
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_844
    if-eqz v106, :cond_849

    .line 1023
    :try_start_846
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_849
    .catch Ljava/lang/Throwable; {:try_start_846 .. :try_end_849} :catch_cc0

    .line 1030
    :cond_849
    :goto_849
    :try_start_849
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_84c
    .catch Ljava/lang/Throwable; {:try_start_849 .. :try_end_84c} :catch_ccc

    .line 1035
    :goto_84c
    if-eqz v29, :cond_855

    .line 1036
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1042
    :cond_855
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v61

    .line 1043
    .local v61, config:Landroid/content/res/Configuration;
    new-instance v96, Landroid/util/DisplayMetrics;

    invoke-direct/range {v96 .. v96}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1044
    .local v96, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v135

    check-cast v135, Landroid/view/WindowManager;

    .line 1045
    .local v135, w:Landroid/view/WindowManager;
    invoke-interface/range {v135 .. v135}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v96

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1046
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v61

    move-object/from16 v1, v96

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1048
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1050
    :try_start_87d
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_880
    .catch Ljava/lang/Throwable; {:try_start_87d .. :try_end_880} :catch_cd8

    .line 1056
    :goto_880
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/LightsService;->systemReady()V

    .line 1059
    move-object/from16 v17, v4

    .line 1060
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1061
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1062
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1063
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1064
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v62

    .line 1065
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v75

    .line 1066
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v122

    .line 1067
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v131

    .line 1068
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v124

    .line 1069
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v129

    .line 1070
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 1071
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v136

    .line 1072
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v86

    .line 1073
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v114

    .line 1074
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v92

    .line 1075
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v66

    .line 1076
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v104

    .line 1077
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v59

    .line 1078
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v126

    .line 1079
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v120

    .line 1080
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v77

    .line 1081
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v88

    .line 1082
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v54

    .line 1089
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1209
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_8ce

    .line 1210
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_8ce
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1215
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void

    .line 147
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v65           #contentService:Landroid/content/ContentService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v75           #dock:Lcom/android/server/DockObserver;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v82           #factoryTest:I
    .end local v83           #factoryTestStr:Ljava/lang/String;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v88           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #pm:Landroid/content/pm/IPackageManager;
    .end local v114           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v116           #serial:Lcom/android/server/SerialService;
    .end local v118           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v122           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v129           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .end local v135           #w:Landroid/view/WindowManager;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .end local v142           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v145           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_8e0
    const/16 v113, 0x0

    goto/16 :goto_3c

    .line 153
    .restart local v113       #reboot:Z
    :cond_8e4
    const/16 v112, 0x0

    .restart local v112       #reason:Ljava/lang/String;
    goto/16 :goto_4e

    .line 161
    .end local v112           #reason:Ljava/lang/String;
    .end local v113           #reboot:Z
    .restart local v83       #factoryTestStr:Ljava/lang/String;
    :cond_8e8
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v82

    goto/16 :goto_67

    .line 231
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v65       #contentService:Landroid/content/ContentService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v75       #dock:Lcom/android/server/DockObserver;
    .restart local v82       #factoryTest:I
    .restart local v88       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v108       #onlyCore:Z
    .restart local v110       #pm:Landroid/content/pm/IPackageManager;
    .restart local v114       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    .restart local v118       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v122       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    .restart local v129       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    .restart local v142       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v145       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_8ee
    :try_start_8ee
    const-string v3, "1"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v108, 0x1

    goto/16 :goto_12a

    .line 237
    :cond_903
    const/4 v3, 0x0

    goto/16 :goto_134

    .line 256
    .restart local v84       #firstBoot:Z
    :catch_906
    move-exception v79

    .line 257
    .local v79, e:Ljava/lang/Throwable;
    :goto_907
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_910
    .catch Ljava/lang/RuntimeException; {:try_start_8ee .. :try_end_910} :catch_912

    goto/16 :goto_169

    .line 359
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v84           #firstBoot:Z
    .end local v108           #onlyCore:Z
    :catch_912
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .line 360
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v79, e:Ljava/lang/RuntimeException;
    :goto_917
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_273

    .line 261
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v79           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v108       #onlyCore:Z
    :cond_929
    const/4 v3, 0x0

    goto/16 :goto_176

    .line 271
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_92c
    move-exception v79

    .line 272
    .local v79, e:Ljava/lang/Throwable;
    :try_start_92d
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_936
    .catch Ljava/lang/RuntimeException; {:try_start_92d .. :try_end_936} :catch_d71

    .line 273
    const/16 v71, 0x0

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_18e

    .line 311
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_93a
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_231

    :cond_93e
    const/4 v3, 0x0

    goto/16 :goto_234

    .line 329
    :cond_941
    const/4 v3, 0x1

    move/from16 v0, v82

    if-ne v0, v3, :cond_955

    .line 330
    :try_start_946
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26f

    .line 359
    :catch_94f
    move-exception v79

    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto :goto_917

    .line 332
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_955
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v55, Landroid/server/BluetoothService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_963
    .catch Ljava/lang/RuntimeException; {:try_start_946 .. :try_end_963} :catch_94f

    .line 334
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .local v55, bluetooth:Landroid/server/BluetoothService;
    :try_start_963
    const-string v3, "bluetooth"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 335
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 337
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dbd

    .line 338
    new-instance v57, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_984
    .catch Ljava/lang/RuntimeException; {:try_start_963 .. :try_end_984} :catch_d93

    .line 339
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v57, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_984
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 341
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v51, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_999
    .catch Ljava/lang/RuntimeException; {:try_start_984 .. :try_end_999} :catch_d9c

    .line 343
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .local v51, avrcp:Landroid/server/AvrcpStubService;
    :try_start_999
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_9a3
    .catch Ljava/lang/RuntimeException; {:try_start_999 .. :try_end_9a3} :catch_da7

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_26f

    .line 385
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v108           #onlyCore:Z
    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_9ab
    move-exception v79

    .line 386
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_9ac
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a9

    .line 393
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9b7
    move-exception v79

    .line 394
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2ba

    .line 403
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9c3
    move-exception v79

    .line 404
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_9c4
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d1

    .line 409
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9cf
    move-exception v79

    .line 410
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d4

    .line 415
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9db
    move-exception v79

    .line 416
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d7

    .line 438
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    :catch_9e7
    move-exception v79

    .line 439
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_9e8
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_316

    .line 447
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9f3
    move-exception v79

    .line 448
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_9f4
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32d

    .line 455
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_9ff
    move-exception v79

    .line 456
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a00
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_344

    .line 463
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a0b
    move-exception v79

    .line 464
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a0c
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35d

    .line 473
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a17
    move-exception v79

    .line 474
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a18
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_380

    .line 482
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a23
    move-exception v79

    .line 483
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_391

    .line 493
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a2f
    move-exception v79

    .line 494
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a2

    .line 501
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a3b
    move-exception v79

    .line 502
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b2

    .line 509
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a47
    move-exception v79

    .line 510
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a48
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c9

    .line 517
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a53
    move-exception v79

    .line 518
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a54
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e0

    .line 527
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a5f
    move-exception v79

    move-object/from16 v8, v102

    .line 528
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a62
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f7

    .line 535
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a6d
    move-exception v79

    .line 536
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a6e
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40e

    .line 543
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a79
    move-exception v79

    .line 544
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a7a
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_425

    .line 552
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a85
    move-exception v79

    .line 553
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a86
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43c

    .line 582
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a91
    move-exception v79

    .line 583
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_a92
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_463

    .line 591
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a9d
    move-exception v79

    .line 592
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_475

    .line 600
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_aa9
    move-exception v79

    .line 601
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_aaa
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48c

    .line 608
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ab5
    move-exception v79

    .line 609
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49d

    .line 626
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ac1
    move-exception v79

    .line 627
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b7

    .line 633
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_acd
    move-exception v79

    .line 634
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4bc

    .line 642
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ad9
    move-exception v79

    .line 643
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_ada
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4dc

    .line 650
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ae5
    move-exception v79

    .line 651
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ed

    .line 658
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_af1
    move-exception v79

    .line 659
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_af2
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_504

    .line 666
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_afd
    move-exception v79

    .line 667
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_afe
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51b

    .line 674
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b09
    move-exception v79

    .line 675
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52c

    .line 684
    .end local v79           #e:Ljava/lang/Throwable;
    :cond_b15
    :try_start_b15
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1c
    .catch Ljava/lang/Throwable; {:try_start_b15 .. :try_end_b1c} :catch_b1e

    goto/16 :goto_547

    .line 686
    :catch_b1e
    move-exception v79

    .line 687
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v79

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_547

    .line 693
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b3b
    move-exception v79

    .line 694
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55f

    .line 705
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b47
    move-exception v79

    .line 706
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_b48
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_585

    .line 714
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b53
    move-exception v79

    .line 715
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a4

    .line 723
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b5f
    move-exception v79

    .line 724
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b4

    .line 731
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b6b
    move-exception v79

    .line 732
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c0

    .line 739
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b77
    move-exception v79

    .line 740
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d0

    .line 748
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b83
    move-exception v79

    .line 749
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_b84
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e7

    .line 757
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b8f
    move-exception v79

    .line 758
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_b90
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5fe

    .line 765
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b9b
    move-exception v79

    .line 766
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60e

    .line 773
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ba7
    move-exception v79

    .line 774
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61f

    .line 781
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_bb3
    move-exception v79

    .line 782
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_bb4
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_636

    .line 788
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_bbf
    move-exception v79

    .line 789
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_646

    .line 795
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_bcb
    move-exception v79

    .line 796
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_657

    .line 816
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_bd7
    move-exception v79

    .line 817
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_668

    .line 823
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_be3
    move-exception v79

    .line 824
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_678

    .line 840
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v109       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_bef
    move-exception v79

    .line 842
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_69b

    .line 854
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_bfb
    move-exception v79

    .line 855
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6ba

    .line 890
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c07
    move-exception v79

    .line 891
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_78b

    .line 899
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c13
    move-exception v79

    .line 900
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_795

    .line 908
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c1f
    move-exception v79

    .line 909
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_c20
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ac

    .line 915
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c2b
    move-exception v79

    .line 916
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7bd

    .line 926
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v128       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c37
    :try_start_c37
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v49, v0

    .line 928
    .local v49, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v49, v3

    .line 929
    move-object/from16 v0, v128

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v64

    .line 930
    .local v64, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c63
    .catch Ljava/lang/Throwable; {:try_start_c37 .. :try_end_c63} :catch_c65

    goto/16 :goto_7d5

    .line 932
    .end local v49           #arg:[Ljava/lang/Class;
    .end local v64           #constructor:Ljava/lang/reflect/Constructor;
    .end local v128           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_c65
    move-exception v79

    .line 933
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7d5

    .line 939
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c71
    move-exception v79

    .line 940
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e6

    .line 947
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c7b
    move-exception v79

    .line 948
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f2

    .line 958
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c87
    move-exception v79

    .line 959
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_c88
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_816

    .line 989
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v100           #mountService:Lcom/android/server/MountService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v29       #safeMode:Z
    :cond_c93
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_82d

    .line 996
    :catch_c9c
    move-exception v79

    .line 997
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_830

    .line 1002
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ca8
    move-exception v79

    .line 1003
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_833

    .line 1009
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_cb4
    move-exception v79

    .line 1010
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_838

    .line 1024
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_cc0
    move-exception v79

    .line 1025
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_849

    .line 1031
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_ccc
    move-exception v79

    .line 1032
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_84c

    .line 1051
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v61       #config:Landroid/content/res/Configuration;
    .restart local v96       #metrics:Landroid/util/DisplayMetrics;
    .restart local v135       #w:Landroid/view/WindowManager;
    :catch_cd8
    move-exception v79

    .line 1052
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_880

    .line 244
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #metrics:Landroid/util/DisplayMetrics;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v135           #w:Landroid/view/WindowManager;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #onlyCore:Z
    :catch_ce4
    move-exception v3

    goto/16 :goto_147

    .line 958
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v108           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_ce7
    move-exception v79

    move-object/from16 v77, v78

    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_c88

    .line 908
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_ceb
    move-exception v79

    move-object/from16 v59, v60

    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_c20

    .line 781
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_cf0
    move-exception v79

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_bb4

    .line 757
    .end local v116           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    :catch_cf5
    move-exception v79

    move-object/from16 v116, v117

    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_b90

    .line 748
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .restart local v132       #usb:Lcom/android/server/usb/UsbService;
    :catch_cfa
    move-exception v79

    move-object/from16 v131, v132

    .end local v132           #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_b84

    .line 705
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v137       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_cff
    move-exception v79

    move-object/from16 v136, v137

    .end local v137           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_b48

    .line 666
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_d04
    move-exception v79

    move-object/from16 v66, v67

    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_afe

    .line 658
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :catch_d09
    move-exception v79

    move-object/from16 v92, v93

    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_af2

    .line 642
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    :catch_d0e
    move-exception v79

    move-object/from16 v106, v107

    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_ada

    .line 600
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .restart local v125       #throttle:Lcom/android/server/ThrottleService;
    :catch_d13
    move-exception v79

    move-object/from16 v124, v125

    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_aaa

    .line 582
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_d18
    move-exception v79

    move-object/from16 v62, v63

    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_a92

    .line 552
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v139       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_d1d
    move-exception v79

    move-object/from16 v138, v139

    .end local v139           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_a86

    .line 543
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .restart local v141       #wifi:Lcom/android/server/WifiService;
    :catch_d22
    move-exception v79

    move-object/from16 v140, v141

    .end local v141           #wifi:Lcom/android/server/WifiService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_a7a

    .line 535
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v144       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_d27
    move-exception v79

    move-object/from16 v143, v144

    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_a6e

    .line 527
    :catch_d2c
    move-exception v79

    goto/16 :goto_a62

    .line 517
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_d2f
    move-exception v79

    move-object/from16 v12, v103

    .end local v103           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_a54

    .line 509
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_d34
    move-exception v79

    move-object/from16 v126, v127

    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_a48

    .line 473
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_d39
    move-exception v79

    move-object/from16 v80, v81

    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_a18

    .line 463
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_d3e
    move-exception v79

    move-object/from16 v120, v121

    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_a0c

    .line 455
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_d43
    move-exception v79

    move-object/from16 v73, v74

    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_a00

    .line 447
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_d48
    move-exception v79

    move-object/from16 v94, v95

    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_9f4

    .line 438
    .end local v100           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :catch_d4d
    move-exception v79

    move-object/from16 v100, v101

    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_9e8

    .line 424
    .end local v100           #mountService:Lcom/android/server/MountService;
    :catch_d52
    move-exception v3

    goto/16 :goto_2ea

    .line 403
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v70       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_d55
    move-exception v79

    move-object/from16 v69, v70

    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_9c4

    .line 385
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_d5a
    move-exception v79

    move-object/from16 v86, v87

    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_9ac

    .line 359
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #power:Lcom/android/server/PowerManagerService;
    :catch_d5f
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_917

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v108       #onlyCore:Z
    :catch_d68
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_917

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_d71
    move-exception v79

    move-object/from16 v71, v72

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_917

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :catch_d7a
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :catch_d83
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_d8a
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_d93
    move-exception v79

    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_d9c
    move-exception v79

    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_da7
    move-exception v79

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_917

    .line 256
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    :catch_db4
    move-exception v79

    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_907

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v108           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_db9
    move-object/from16 v8, v102

    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_816

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #onlyCore:Z
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_dbd
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_26f
.end method
