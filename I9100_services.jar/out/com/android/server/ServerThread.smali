.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 208
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
    .line 191
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1955
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1957
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1961
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

    .line 1963
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1965
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 213
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
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

    .line 217
    return-void
.end method

.method public run()V
    .registers 149

    .prologue
    .line 223
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 230
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 233
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 238
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 240
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 247
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v120

    .line 251
    .local v120, shutdownAction:Ljava/lang/String;
    if-eqz v120, :cond_62

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_62

    .line 253
    const/4 v3, 0x0

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_977

    const/16 v114, 0x1

    .line 258
    .local v114, reboot:Z
    :goto_49
    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_97b

    .line 260
    const/4 v3, 0x1

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v120

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v113

    .line 269
    .local v113, reason:Ljava/lang/String;
    :goto_5b
    move/from16 v0, v114

    move-object/from16 v1, v113

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 276
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    :cond_62
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 278
    .local v84, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97f

    const/16 v83, 0x0

    .line 282
    .local v83, factoryTest:I
    :goto_74
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 284
    .local v16, headless:Z
    const/16 v44, 0x0

    .line 285
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v65, 0x0

    .line 287
    .local v65, contentService:Landroid/content/ContentService;
    const/16 v91, 0x0

    .line 289
    .local v91, lights:Lcom/android/server/LightsService;
    const/16 v112, 0x0

    .line 291
    .local v112, power:Lcom/android/server/PowerManagerService;
    const/16 v53, 0x0

    .line 293
    .local v53, battery:Lcom/android/server/BatteryService;
    const/16 v135, 0x0

    .line 295
    .local v135, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 297
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 299
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 301
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v103, 0x0

    .line 303
    .local v103, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v62, 0x0

    .line 305
    .local v62, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v145, 0x0

    .line 307
    .local v145, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v142, 0x0

    .line 310
    .local v142, wifi:Lcom/android/server/WifiService;
    const/16 v144, 0x0

    .line 313
    .local v144, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v119, 0x0

    .line 315
    .local v119, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v140, 0x0

    .line 317
    .local v140, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v111, 0x0

    .line 319
    .local v111, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 321
    .local v4, context:Landroid/content/Context;
    const/16 v147, 0x0

    .line 323
    .local v147, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v54, 0x0

    .line 325
    .local v54, bluetooth:Landroid/server/BluetoothService;
    const/16 v56, 0x0

    .line 326
    .local v56, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v50, 0x0

    .line 327
    .local v50, avrcp:Landroid/server/AvrcpStubService;
    const/16 v76, 0x0

    .line 328
    .local v76, dock:Lcom/android/server/DockObserver;
    const/16 v123, 0x0

    .line 329
    .local v123, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v133, 0x0

    .line 331
    .local v133, usb:Lcom/android/server/usb/UsbService;
    const/16 v117, 0x0

    .line 333
    .local v117, serial:Lcom/android/server/SerialService;
    const/16 v131, 0x0

    .line 335
    .local v131, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v115, 0x0

    .line 337
    .local v115, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v125, 0x0

    .line 339
    .local v125, throttle:Lcom/android/server/ThrottleService;
    const/16 v105, 0x0

    .line 341
    .local v105, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v73, 0x0

    .line 344
    .local v73, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v59, 0x0

    .line 346
    .local v59, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v89, 0x0

    .line 347
    .local v89, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v69, 0x0

    .line 351
    .local v69, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v71, 0x0

    .line 358
    .local v71, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_c5
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 363
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_e2} :catch_e1a

    .line 367
    .end local v112           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_e2
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 378
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static/range {v83 .. v83}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 383
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 396
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 403
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 406
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 412
    .local v68, cryptState:Ljava/lang/String;
    const/16 v109, 0x0

    .line 414
    .local v109, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_985

    .line 416
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v109, 0x1

    .line 428
    :cond_139
    :goto_139
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v83, :cond_99a

    const/4 v3, 0x1

    :goto_143
    move/from16 v0, v109

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v111

    .line 434
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_150} :catch_9a9

    .line 435
    const/16 v85, 0x0

    .line 439
    .local v85, firstBoot:Z
    :try_start_152
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_155} :catch_d9f
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_155} :catch_9a9

    move-result v85

    .line 446
    :goto_156
    :try_start_156
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 449
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_161
    .catch Ljava/lang/RuntimeException; {:try_start_156 .. :try_end_161} :catch_9a9

    .line 456
    :try_start_161
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v45, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16f
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_16f} :catch_99d
    .catch Ljava/lang/RuntimeException; {:try_start_161 .. :try_end_16f} :catch_9a9

    .line 458
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_16f
    const-string v3, "account"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_176} :catch_e6f
    .catch Ljava/lang/RuntimeException; {:try_start_16f .. :try_end_176} :catch_e23

    move-object/from16 v44, v45

    .line 465
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_178
    :try_start_178
    const-string v3, ""

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 475
    :cond_182
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v3, 0x1

    move/from16 v0, v83

    if-ne v0, v3, :cond_9c0

    const/4 v3, 0x1

    :goto_18f
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v65

    .line 486
    new-instance v72, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_19a
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_19a} :catch_9a9

    .line 490
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .local v72, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_19a
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_1a5

    .line 492
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19a .. :try_end_1a5} :catch_9c3
    .catch Ljava/lang/RuntimeException; {:try_start_19a .. :try_end_1a5} :catch_e2c

    :cond_1a5
    move-object/from16 v71, v72

    .line 506
    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_1a7
    :try_start_1a7
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 511
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v92, Lcom/android/server/LightsService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1bf
    .catch Ljava/lang/RuntimeException; {:try_start_1a7 .. :try_end_1bf} :catch_9a9

    .line 516
    .end local v91           #lights:Lcom/android/server/LightsService;
    .local v92, lights:Lcom/android/server/LightsService;
    :try_start_1bf
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v92

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_1bf .. :try_end_1cd} :catch_e35

    .line 520
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_1cd
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 523
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v136, Lcom/android/server/VibratorService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1e0
    .catch Ljava/lang/RuntimeException; {:try_start_1cd .. :try_end_1e0} :catch_e3e

    .line 527
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .local v136, vibrator:Lcom/android/server/VibratorService;
    :try_start_1e0
    const-string v3, "vibrator"

    move-object/from16 v0, v136

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 534
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v92

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 537
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1fc
    .catch Ljava/lang/RuntimeException; {:try_start_1e0 .. :try_end_1fc} :catch_e45

    .line 541
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_1fc
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 544
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 550
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 551
    const-string v3, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v3, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/ContextAwareService;

    invoke-direct {v9, v4}, Landroid/hardware/contextaware/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 554
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 558
    :cond_241
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_9d1

    const/4 v3, 0x1

    move v9, v3

    :goto_24f
    if-nez v85, :cond_9d5

    const/4 v3, 0x1

    :goto_252
    move/from16 v0, v109

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v147

    .line 566
    const-string v3, "window"

    move-object/from16 v0, v147

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 568
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v89

    .line 570
    const-string v3, "input"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 573
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v147

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 577
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 586
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d8

    .line 588
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28d
    .catch Ljava/lang/RuntimeException; {:try_start_1fc .. :try_end_28d} :catch_9e6

    :goto_28d
    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .line 641
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v109           #onlyCore:Z
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :goto_291
    const/16 v74, 0x0

    .line 643
    .local v74, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v81, 0x0

    .line 645
    .local v81, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v121, 0x0

    .line 647
    .local v121, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v87, 0x0

    .line 649
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 651
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v107, 0x0

    .line 653
    .local v107, notification:Lcom/android/server/NotificationManagerService;
    const/16 v138, 0x0

    .line 655
    .local v138, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v93, 0x0

    .line 657
    .local v93, location:Lcom/android/server/LocationManagerService;
    const/16 v66, 0x0

    .line 659
    .local v66, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v127, 0x0

    .line 661
    .local v127, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v95, 0x0

    .line 663
    .local v95, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v78, 0x0

    .line 668
    .local v78, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_2d8

    .line 672
    :try_start_2ae
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v88, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v147

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2be
    .catch Ljava/lang/Throwable; {:try_start_2ae .. :try_end_2be} :catch_a42

    .line 676
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .local v88, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_2be
    const-string v3, "input_method"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c5
    .catch Ljava/lang/Throwable; {:try_start_2be .. :try_end_2c5} :catch_e15

    move-object/from16 v87, v88

    .line 687
    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_2c7
    :try_start_2c7
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d8
    .catch Ljava/lang/Throwable; {:try_start_2c7 .. :try_end_2d8} :catch_a4e

    .line 703
    :cond_2d8
    :goto_2d8
    :try_start_2d8
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v70, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e6
    .catch Ljava/lang/Throwable; {:try_start_2d8 .. :try_end_2e6} :catch_a5a

    .line 705
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v70, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_2e6
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2e6 .. :try_end_2ed} :catch_e10

    move-object/from16 v69, v70

    .line 712
    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_2ef
    :try_start_2ef
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2f2
    .catch Ljava/lang/Throwable; {:try_start_2ef .. :try_end_2f2} :catch_a66

    .line 723
    :goto_2f2
    :try_start_2f2
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2f5
    .catch Ljava/lang/Throwable; {:try_start_2f2 .. :try_end_2f5} :catch_a72

    .line 734
    :goto_2f5
    :try_start_2f5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_308
    .catch Landroid/os/RemoteException; {:try_start_2f5 .. :try_end_308} :catch_e0d

    .line 747
    :goto_308
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_e74

    .line 749
    const/16 v101, 0x0

    .line 751
    .local v101, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_334

    .line 763
    :try_start_31d
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v102, Lcom/android/server/MountService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_31d .. :try_end_32b} :catch_a7e

    .line 767
    .end local v101           #mountService:Lcom/android/server/MountService;
    .local v102, mountService:Lcom/android/server/MountService;
    :try_start_32b
    const-string v3, "mount"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_332
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_332} :catch_e08

    move-object/from16 v101, v102

    .line 778
    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :cond_334
    :goto_334
    :try_start_334
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-eqz v71, :cond_347

    .line 780
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_347
    .catch Ljava/lang/Throwable; {:try_start_334 .. :try_end_347} :catch_a8a

    .line 790
    :cond_347
    :goto_347
    :try_start_347
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v96, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_355
    .catch Ljava/lang/Throwable; {:try_start_347 .. :try_end_355} :catch_a96

    .line 794
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v96, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_355
    const-string v3, "lock_settings"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35c
    .catch Ljava/lang/Throwable; {:try_start_355 .. :try_end_35c} :catch_e03

    move-object/from16 v95, v96

    .line 805
    .end local v96           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_35e
    :try_start_35e
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v75, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36c
    .catch Ljava/lang/Throwable; {:try_start_35e .. :try_end_36c} :catch_aa2

    .line 809
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v75, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_36c
    const-string v3, "device_policy"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_373
    .catch Ljava/lang/Throwable; {:try_start_36c .. :try_end_373} :catch_dfe

    move-object/from16 v74, v75

    .line 819
    .end local v75           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_375
    :try_start_375
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v82, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v111

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v82

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_388
    .catch Ljava/lang/Throwable; {:try_start_375 .. :try_end_388} :catch_aae

    .line 821
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v82, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_388
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 822
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_396
    .catch Ljava/lang/Throwable; {:try_start_388 .. :try_end_396} :catch_df9

    move-object/from16 v81, v82

    .line 832
    .end local v82           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_398
    :try_start_398
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v122, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v122

    move-object/from16 v1, v147

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3a8
    .catch Ljava/lang/Throwable; {:try_start_398 .. :try_end_3a8} :catch_aba

    .line 836
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v122, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_3a8
    const-string v3, "statusbar"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3af
    .catch Ljava/lang/Throwable; {:try_start_3a8 .. :try_end_3af} :catch_df4

    move-object/from16 v121, v122

    .line 847
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_3b1
    :try_start_3b1
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c2
    .catch Ljava/lang/Throwable; {:try_start_3b1 .. :try_end_3c2} :catch_ac6

    .line 868
    :goto_3c2
    :try_start_3c2
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d3
    .catch Ljava/lang/Throwable; {:try_start_3c2 .. :try_end_3d3} :catch_ad2

    .line 883
    :goto_3d3
    :try_start_3d3
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 887
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e3
    .catch Ljava/lang/Throwable; {:try_start_3d3 .. :try_end_3e3} :catch_ade

    .line 898
    :goto_3e3
    :try_start_3e3
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v128, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v128

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f1
    .catch Ljava/lang/Throwable; {:try_start_3e3 .. :try_end_3f1} :catch_aea

    .line 902
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v128, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_3f1
    const-string v3, "textservices"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f8
    .catch Ljava/lang/Throwable; {:try_start_3f1 .. :try_end_3f8} :catch_def

    move-object/from16 v127, v128

    .line 913
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_3fa
    :try_start_3fa
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v104, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_408
    .catch Ljava/lang/Throwable; {:try_start_3fa .. :try_end_408} :catch_af6

    .line 917
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v104, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_408
    const-string v3, "netstats"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40f
    .catch Ljava/lang/Throwable; {:try_start_408 .. :try_end_40f} :catch_dea

    move-object/from16 v12, v104

    .line 928
    .end local v104           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_411
    :try_start_411
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_423
    .catch Ljava/lang/Throwable; {:try_start_411 .. :try_end_423} :catch_b02

    .line 936
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_423
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_428
    .catch Ljava/lang/Throwable; {:try_start_423 .. :try_end_428} :catch_de7

    .line 947
    :goto_428
    :try_start_428
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v146, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v146

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_436
    .catch Ljava/lang/Throwable; {:try_start_428 .. :try_end_436} :catch_b10

    .line 951
    .end local v145           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v146, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_436
    const-string v3, "wifip2p"

    move-object/from16 v0, v146

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43d
    .catch Ljava/lang/Throwable; {:try_start_436 .. :try_end_43d} :catch_de2

    move-object/from16 v145, v146

    .line 962
    .end local v146           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v145       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_43f
    :try_start_43f
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v143, Lcom/android/server/WifiService;

    move-object/from16 v0, v143

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_44d
    .catch Ljava/lang/Throwable; {:try_start_43f .. :try_end_44d} :catch_b1c

    .line 966
    .end local v142           #wifi:Lcom/android/server/WifiService;
    .local v143, wifi:Lcom/android/server/WifiService;
    :try_start_44d
    const-string v3, "wifi"

    move-object/from16 v0, v143

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_454
    .catch Ljava/lang/Throwable; {:try_start_44d .. :try_end_454} :catch_ddd

    move-object/from16 v142, v143

    .line 997
    .end local v143           #wifi:Lcom/android/server/WifiService;
    .restart local v142       #wifi:Lcom/android/server/WifiService;
    :goto_456
    :try_start_456
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v141, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v141

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_464
    .catch Ljava/lang/Throwable; {:try_start_456 .. :try_end_464} :catch_b28

    .line 1001
    .end local v140           #wfd:Lcom/samsung/wfd/WfdService;
    .local v141, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_464
    const-string v3, "wfd"

    move-object/from16 v0, v141

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46b
    .catch Ljava/lang/Throwable; {:try_start_464 .. :try_end_46b} :catch_dd8

    move-object/from16 v140, v141

    .line 1012
    .end local v141           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v140       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_46d
    :try_start_46d
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v63, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_47b
    .catch Ljava/lang/Throwable; {:try_start_46d .. :try_end_47b} :catch_b34

    .line 1018
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .local v63, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_47b
    const-string v3, "connectivity"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1020
    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1022
    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1024
    invoke-virtual/range {v142 .. v142}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 1026
    invoke-virtual/range {v145 .. v145}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_492
    .catch Ljava/lang/Throwable; {:try_start_47b .. :try_end_492} :catch_dd3

    move-object/from16 v62, v63

    .line 1037
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_494
    :try_start_494
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v119

    .line 1041
    const-string v3, "servicediscovery"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a6
    .catch Ljava/lang/Throwable; {:try_start_494 .. :try_end_4a6} :catch_b40

    .line 1054
    :goto_4a6
    :try_start_4a6
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v126, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_4b4
    .catch Ljava/lang/Throwable; {:try_start_4a6 .. :try_end_4b4} :catch_b4c

    .line 1058
    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .local v126, throttle:Lcom/android/server/ThrottleService;
    :try_start_4b4
    const-string v3, "throttle"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4bb
    .catch Ljava/lang/Throwable; {:try_start_4b4 .. :try_end_4bb} :catch_dce

    move-object/from16 v125, v126

    .line 1071
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .restart local v125       #throttle:Lcom/android/server/ThrottleService;
    :goto_4bd
    :try_start_4bd
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ce
    .catch Ljava/lang/Throwable; {:try_start_4bd .. :try_end_4ce} :catch_b58

    .line 1094
    :goto_4ce
    if-eqz v101, :cond_4e3

    .line 1096
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e3

    .line 1097
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1101
    :cond_4e3
    if-eqz v44, :cond_4e8

    .line 1102
    :try_start_4e5
    invoke-virtual/range {v44 .. v44}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_4e8
    .catch Ljava/lang/Throwable; {:try_start_4e5 .. :try_end_4e8} :catch_b64

    .line 1107
    :cond_4e8
    :goto_4e8
    if-eqz v65, :cond_4ed

    .line 1108
    :try_start_4ea
    invoke-virtual/range {v65 .. v65}, Landroid/content/ContentService;->systemReady()V
    :try_end_4ed
    .catch Ljava/lang/Throwable; {:try_start_4ea .. :try_end_4ed} :catch_b70

    .line 1114
    :cond_4ed
    :goto_4ed
    :try_start_4ed
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v108, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v121

    move-object/from16 v2, v91

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_4ff
    .catch Ljava/lang/Throwable; {:try_start_4ed .. :try_end_4ff} :catch_b7c

    .line 1118
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .local v108, notification:Lcom/android/server/NotificationManagerService;
    :try_start_4ff
    const-string v3, "notification"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1120
    move-object/from16 v0, v108

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_50b
    .catch Ljava/lang/Throwable; {:try_start_4ff .. :try_end_50b} :catch_dc9

    move-object/from16 v107, v108

    .line 1131
    .end local v108           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    :goto_50d
    :try_start_50d
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51e
    .catch Ljava/lang/Throwable; {:try_start_50d .. :try_end_51e} :catch_b88

    .line 1146
    :goto_51e
    :try_start_51e
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v94, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52c
    .catch Ljava/lang/Throwable; {:try_start_51e .. :try_end_52c} :catch_b94

    .line 1150
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .local v94, location:Lcom/android/server/LocationManagerService;
    :try_start_52c
    const-string v3, "location"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_533
    .catch Ljava/lang/Throwable; {:try_start_52c .. :try_end_533} :catch_dc4

    move-object/from16 v93, v94

    .line 1160
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :goto_535
    :try_start_535
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_543
    .catch Ljava/lang/Throwable; {:try_start_535 .. :try_end_543} :catch_ba0

    .line 1164
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v67, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_543
    const-string v3, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54a
    .catch Ljava/lang/Throwable; {:try_start_543 .. :try_end_54a} :catch_dbf

    move-object/from16 v66, v67

    .line 1175
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_54c
    :try_start_54c
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55d
    .catch Ljava/lang/Throwable; {:try_start_54c .. :try_end_55d} :catch_bac

    .line 1188
    :goto_55d
    :try_start_55d
    const-string v3, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v111

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bb8

    .line 1189
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v3, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v4}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_578
    .catch Ljava/lang/Throwable; {:try_start_55d .. :try_end_578} :catch_bc1

    .line 1201
    :goto_578
    :try_start_578
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_590
    .catch Ljava/lang/Throwable; {:try_start_578 .. :try_end_590} :catch_bde

    .line 1214
    :goto_590
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5b6

    .line 1220
    :try_start_59d
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-nez v16, :cond_5b6

    .line 1224
    new-instance v139, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5ad
    .catch Ljava/lang/Throwable; {:try_start_59d .. :try_end_5ad} :catch_bea

    .line 1226
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v139, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_5ad
    const-string v3, "wallpaper"

    move-object/from16 v0, v139

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b4
    .catch Ljava/lang/Throwable; {:try_start_5ad .. :try_end_5b4} :catch_dba

    move-object/from16 v138, v139

    .line 1239
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v138       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_5b6
    :goto_5b6
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d5

    .line 1243
    :try_start_5c4
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d5
    .catch Ljava/lang/Throwable; {:try_start_5c4 .. :try_end_5d5} :catch_bf6

    .line 1254
    :cond_5d5
    :goto_5d5
    :try_start_5d5
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    new-instance v77, Lcom/android/server/DockObserver;

    move-object/from16 v0, v77

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_5e3
    .catch Ljava/lang/Throwable; {:try_start_5d5 .. :try_end_5e3} :catch_c02

    .end local v76           #dock:Lcom/android/server/DockObserver;
    .local v77, dock:Lcom/android/server/DockObserver;
    move-object/from16 v76, v77

    .line 1262
    .end local v77           #dock:Lcom/android/server/DockObserver;
    .restart local v76       #dock:Lcom/android/server/DockObserver;
    :goto_5e5
    :try_start_5e5
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_5f1
    .catch Ljava/lang/Throwable; {:try_start_5e5 .. :try_end_5f1} :catch_c0e

    .line 1270
    :goto_5f1
    :try_start_5f1
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v124, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v124

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_5ff
    .catch Ljava/lang/Throwable; {:try_start_5f1 .. :try_end_5ff} :catch_c1a

    .end local v123           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v124, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v123, v124

    .line 1278
    .end local v124           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v123       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_601
    :try_start_601
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v134, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_60f
    .catch Ljava/lang/Throwable; {:try_start_601 .. :try_end_60f} :catch_c26

    .line 1281
    .end local v133           #usb:Lcom/android/server/usb/UsbService;
    .local v134, usb:Lcom/android/server/usb/UsbService;
    :try_start_60f
    const-string v3, "usb"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_616
    .catch Ljava/lang/Throwable; {:try_start_60f .. :try_end_616} :catch_db5

    move-object/from16 v133, v134

    .line 1286
    .end local v134           #usb:Lcom/android/server/usb/UsbService;
    .restart local v133       #usb:Lcom/android/server/usb/UsbService;
    :goto_618
    :try_start_618
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v118, Lcom/android/server/SerialService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_626
    .catch Ljava/lang/Throwable; {:try_start_618 .. :try_end_626} :catch_c32

    .line 1289
    .end local v117           #serial:Lcom/android/server/SerialService;
    .local v118, serial:Lcom/android/server/SerialService;
    :try_start_626
    const-string v3, "serial"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62d
    .catch Ljava/lang/Throwable; {:try_start_626 .. :try_end_62d} :catch_db0

    move-object/from16 v117, v118

    .line 1295
    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    :goto_62f
    :try_start_62f
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v132, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_63d
    .catch Ljava/lang/Throwable; {:try_start_62f .. :try_end_63d} :catch_c3e

    .end local v131           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v132, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v131, v132

    .line 1306
    .end local v132           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v131       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_63f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65c

    .line 1309
    :try_start_64b
    const-string v3, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v3, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65c
    .catch Ljava/lang/Throwable; {:try_start_64b .. :try_end_65c} :catch_c4a

    .line 1319
    :cond_65c
    :goto_65c
    :try_start_65c
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66d
    .catch Ljava/lang/Throwable; {:try_start_65c .. :try_end_66d} :catch_c56

    .line 1334
    :goto_66d
    :try_start_66d
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_67b
    .catch Ljava/lang/Throwable; {:try_start_66d .. :try_end_67b} :catch_c62

    .line 1338
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_67b
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_682
    .catch Ljava/lang/Throwable; {:try_start_67b .. :try_end_682} :catch_dab

    move-object/from16 v47, v48

    .line 1349
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_684
    :try_start_684
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v116, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_692
    .catch Ljava/lang/Throwable; {:try_start_684 .. :try_end_692} :catch_c6e

    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v116, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v115, v116

    .line 1362
    .end local v116           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_694
    :try_start_694
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a5
    .catch Ljava/lang/Throwable; {:try_start_694 .. :try_end_6a5} :catch_c7a

    .line 1383
    :goto_6a5
    :try_start_6a5
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b6
    .catch Ljava/lang/Throwable; {:try_start_6a5 .. :try_end_6b6} :catch_c86

    .line 1398
    :goto_6b6
    :try_start_6b6
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v106, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_6c4
    .catch Ljava/lang/Throwable; {:try_start_6b6 .. :try_end_6c4} :catch_c92

    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v106, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v105, v106

    .line 1426
    .end local v106           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v105       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_6c6
    const-string v3, "ro.tvout.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v129

    .line 1428
    .local v129, tvoutEnable:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v129

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-string v3, "false"

    move-object/from16 v0, v129

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_708

    .line 1436
    :try_start_6f0
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/16 v130, 0x0

    .line 1440
    .local v130, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v130

    .line 1442
    if-nez v130, :cond_c9e

    .line 1444
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_708
    .catch Ljava/lang/Throwable; {:try_start_6f0 .. :try_end_708} :catch_ccc

    .line 1473
    .end local v130           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_708
    :goto_708
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v110

    .line 1475
    .local v110, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72b

    .line 1477
    :try_start_716
    const-string v3, "SystemServer"

    const-string v9, "Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v90, Landroid/app/IrdaService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 1479
    .local v90, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72b
    .catch Ljava/lang/Throwable; {:try_start_716 .. :try_end_72b} :catch_cd8

    .line 1485
    .end local v90           #irda:Landroid/app/IrdaService;
    :cond_72b
    :goto_72b
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7fc

    .line 1489
    :try_start_735
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-string v98, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1494
    .local v98, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v100, "/data/dalvik-cache/minimode.dex"

    .line 1497
    .local v100, minimodeGenDexPath:Ljava/lang/String;
    new-instance v86, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v86 .. v86}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 1499
    .local v86, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v98

    move-object/from16 v1, v86

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_7c3

    .line 1501
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v98

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v100

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_7c3

    .line 1505
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v98

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    new-instance v99, Ljava/io/File;

    invoke-direct/range {v99 .. v100}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v99, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v86

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v99

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_7c3

    .line 1511
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v86

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    .end local v99           #minimodeGenDexFile:Ljava/io/File;
    :cond_7c3
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1525
    .local v58, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 1527
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 1531
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
    :try_end_7fc
    .catch Ljava/lang/Throwable; {:try_start_735 .. :try_end_7fc} :catch_ce4

    .line 1544
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v58           #cl:Ljava/lang/ClassLoader;
    .end local v86           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v98           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v100           #minimodeGenDexPath:Ljava/lang/String;
    :cond_7fc
    :goto_7fc
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81b

    .line 1546
    :try_start_806
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v52, Landroid/app/BarBeamService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1549
    .local v52, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81b
    .catch Ljava/lang/Throwable; {:try_start_806 .. :try_end_81b} :catch_cf0

    .line 1561
    .end local v52           #barbeam:Landroid/app/BarBeamService;
    :cond_81b
    :goto_81b
    :try_start_81b
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v60, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_829
    .catch Ljava/lang/Throwable; {:try_start_81b .. :try_end_829} :catch_cfc

    .line 1565
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v60, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_829
    const-string v3, "commontime_management"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_830
    .catch Ljava/lang/Throwable; {:try_start_829 .. :try_end_830} :catch_da6

    move-object/from16 v59, v60

    .line 1578
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_832
    :try_start_832
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_843
    .catch Ljava/lang/Throwable; {:try_start_832 .. :try_end_843} :catch_d08

    .line 1592
    :goto_843
    :try_start_843
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84d
    .catch Ljava/lang/Throwable; {:try_start_843 .. :try_end_84d} :catch_d12

    .line 1600
    :goto_84d
    :try_start_84d
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85e
    .catch Ljava/lang/Throwable; {:try_start_84d .. :try_end_85e} :catch_d1e

    .line 1614
    :goto_85e
    const-string v3, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_SUPPORT_FMRADIO_SILICON - true"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :try_start_865
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1622
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added.."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87d
    .catch Ljava/lang/Throwable; {:try_start_865 .. :try_end_87d} :catch_d2a

    .line 1638
    :goto_87d
    :try_start_87d
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_889
    .catch Ljava/lang/Throwable; {:try_start_87d .. :try_end_889} :catch_d36

    .line 1650
    :goto_889
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8ad

    .line 1656
    :try_start_896
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v79, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8a4
    .catch Ljava/lang/Throwable; {:try_start_896 .. :try_end_8a4} :catch_d42

    .line 1662
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v79, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_8a4
    const-string v3, "dreams"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ab
    .catch Ljava/lang/Throwable; {:try_start_8a4 .. :try_end_8ab} :catch_da2

    move-object/from16 v78, v79

    .line 1679
    .end local v79           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v129           #tvoutEnable:Ljava/lang/String;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_8ad
    :goto_8ad
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 1681
    .local v29, safeMode:Z
    if-eqz v29, :cond_d4e

    .line 1683
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1687
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1691
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1707
    :goto_8c4
    :try_start_8c4
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8c7
    .catch Ljava/lang/Throwable; {:try_start_8c4 .. :try_end_8c7} :catch_d57

    .line 1716
    :goto_8c7
    :try_start_8c7
    invoke-virtual/range {v95 .. v95}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_8ca
    .catch Ljava/lang/Throwable; {:try_start_8c7 .. :try_end_8ca} :catch_d63

    .line 1721
    :goto_8ca
    if-eqz v74, :cond_8cf

    .line 1725
    :try_start_8cc
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_8cf
    .catch Ljava/lang/Throwable; {:try_start_8cc .. :try_end_8cf} :catch_d6f

    .line 1737
    :cond_8cf
    :goto_8cf
    if-eqz v81, :cond_8db

    .line 1738
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1739
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_8db
    if-eqz v107, :cond_8e0

    .line 1747
    :try_start_8dd
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_8e0
    .catch Ljava/lang/Throwable; {:try_start_8dd .. :try_end_8e0} :catch_d7b

    .line 1758
    :cond_8e0
    :goto_8e0
    :try_start_8e0
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_8e3
    .catch Ljava/lang/Throwable; {:try_start_8e0 .. :try_end_8e3} :catch_d87

    .line 1763
    :goto_8e3
    if-eqz v29, :cond_8ec

    .line 1764
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1770
    :cond_8ec
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v61

    .line 1771
    .local v61, config:Landroid/content/res/Configuration;
    new-instance v97, Landroid/util/DisplayMetrics;

    invoke-direct/range {v97 .. v97}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1772
    .local v97, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v137

    check-cast v137, Landroid/view/WindowManager;

    .line 1773
    .local v137, w:Landroid/view/WindowManager;
    invoke-interface/range {v137 .. v137}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v97

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1774
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v61

    move-object/from16 v1, v97

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1776
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1778
    :try_start_914
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_917
    .catch Ljava/lang/Throwable; {:try_start_914 .. :try_end_917} :catch_d93

    .line 1784
    :goto_917
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/LightsService;->systemReady()V

    .line 1787
    move-object/from16 v17, v4

    .line 1788
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1789
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1790
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1791
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1792
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v62

    .line 1793
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v76

    .line 1794
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v123

    .line 1795
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v133

    .line 1796
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v125

    .line 1797
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v131

    .line 1798
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 1799
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v138

    .line 1800
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v87

    .line 1801
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v115

    .line 1802
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v93

    .line 1803
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v66

    .line 1804
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v105

    .line 1805
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v59

    .line 1806
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v127

    .line 1807
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v121

    .line 1808
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v78

    .line 1809
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v89

    .line 1810
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v54

    .line 1817
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1939
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_965

    .line 1941
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_965
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1948
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-void

    .line 253
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
    .end local v73           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v76           #dock:Lcom/android/server/DockObserver;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v83           #factoryTest:I
    .end local v84           #factoryTestStr:Ljava/lang/String;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v111           #pm:Landroid/content/pm/IPackageManager;
    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v117           #serial:Lcom/android/server/SerialService;
    .end local v119           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v123           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v131           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v133           #usb:Lcom/android/server/usb/UsbService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .end local v137           #w:Landroid/view/WindowManager;
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v140           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v142           #wifi:Lcom/android/server/WifiService;
    .end local v144           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v145           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v147           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_977
    const/16 v114, 0x0

    goto/16 :goto_49

    .line 264
    .restart local v114       #reboot:Z
    :cond_97b
    const/16 v113, 0x0

    .restart local v113       #reason:Ljava/lang/String;
    goto/16 :goto_5b

    .line 278
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    .restart local v84       #factoryTestStr:Ljava/lang/String;
    :cond_97f
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v83

    goto/16 :goto_74

    .line 420
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
    .restart local v73       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v76       #dock:Lcom/android/server/DockObserver;
    .restart local v83       #factoryTest:I
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v109       #onlyCore:Z
    .restart local v111       #pm:Landroid/content/pm/IPackageManager;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    .restart local v119       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v123       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v125       #throttle:Lcom/android/server/ThrottleService;
    .restart local v131       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v133       #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v142       #wifi:Lcom/android/server/WifiService;
    .restart local v144       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v145       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_985
    :try_start_985
    const-string v3, "1"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 422
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v109, 0x1

    goto/16 :goto_139

    .line 429
    :cond_99a
    const/4 v3, 0x0

    goto/16 :goto_143

    .line 459
    .restart local v85       #firstBoot:Z
    :catch_99d
    move-exception v80

    .line 461
    .local v80, e:Ljava/lang/Throwable;
    :goto_99e
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a7
    .catch Ljava/lang/RuntimeException; {:try_start_985 .. :try_end_9a7} :catch_9a9

    goto/16 :goto_178

    .line 632
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v85           #firstBoot:Z
    .end local v109           #onlyCore:Z
    :catch_9a9
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .line 634
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v80, e:Ljava/lang/RuntimeException;
    :goto_9ae
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_291

    .line 476
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v109       #onlyCore:Z
    :cond_9c0
    const/4 v3, 0x0

    goto/16 :goto_18f

    .line 496
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_9c3
    move-exception v80

    .line 498
    .local v80, e:Ljava/lang/Throwable;
    :try_start_9c4
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9cd
    .catch Ljava/lang/RuntimeException; {:try_start_9c4 .. :try_end_9cd} :catch_e2c

    .line 500
    const/16 v71, 0x0

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_1a7

    .line 560
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :cond_9d1
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_24f

    :cond_9d5
    const/4 v3, 0x0

    goto/16 :goto_252

    .line 590
    :cond_9d8
    const/4 v3, 0x1

    move/from16 v0, v83

    if-ne v0, v3, :cond_9ec

    .line 592
    :try_start_9dd
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28d

    .line 632
    :catch_9e6
    move-exception v80

    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto :goto_9ae

    .line 596
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :cond_9ec
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v55, Landroid/server/BluetoothService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_9fa
    .catch Ljava/lang/RuntimeException; {:try_start_9dd .. :try_end_9fa} :catch_9e6

    .line 600
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .local v55, bluetooth:Landroid/server/BluetoothService;
    :try_start_9fa
    const-string v3, "bluetooth"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 602
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 605
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e78

    .line 607
    new-instance v57, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_a1b
    .catch Ljava/lang/RuntimeException; {:try_start_9fa .. :try_end_a1b} :catch_e4e

    .line 609
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v57, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_a1b
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 612
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v51, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_a30
    .catch Ljava/lang/RuntimeException; {:try_start_a1b .. :try_end_a30} :catch_e57

    .line 614
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .local v51, avrcp:Landroid/server/AvrcpStubService;
    :try_start_a30
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 615
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_a3a
    .catch Ljava/lang/RuntimeException; {:try_start_a30 .. :try_end_a3a} :catch_e62

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_28d

    .line 678
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v109           #onlyCore:Z
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    .restart local v138       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_a42
    move-exception v80

    .line 680
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_a43
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c7

    .line 693
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a4e
    move-exception v80

    .line 695
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d8

    .line 706
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a5a
    move-exception v80

    .line 707
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_a5b
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2ef

    .line 714
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a66
    move-exception v80

    .line 716
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f2

    .line 725
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a72
    move-exception v80

    .line 727
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f5

    .line 769
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :catch_a7e
    move-exception v80

    .line 771
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_a7f
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_334

    .line 783
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a8a
    move-exception v80

    .line 784
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_347

    .line 796
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a96
    move-exception v80

    .line 798
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_a97
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35e

    .line 811
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_aa2
    move-exception v80

    .line 813
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_aa3
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_375

    .line 823
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_aae
    move-exception v80

    .line 824
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_aaf
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_398

    .line 838
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_aba
    move-exception v80

    .line 840
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_abb
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b1

    .line 853
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_ac6
    move-exception v80

    .line 855
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c2

    .line 874
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_ad2
    move-exception v80

    .line 876
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d3

    .line 889
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_ade
    move-exception v80

    .line 891
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e3

    .line 904
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_aea
    move-exception v80

    .line 906
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_aeb
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3fa

    .line 919
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_af6
    move-exception v80

    .line 921
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_af7
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_411

    .line 938
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b02
    move-exception v80

    move-object/from16 v8, v103

    .line 940
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b05
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_428

    .line 953
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b10
    move-exception v80

    .line 955
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b11
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43f

    .line 968
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b1c
    move-exception v80

    .line 970
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b1d
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_456

    .line 1003
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b28
    move-exception v80

    .line 1005
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b29
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46d

    .line 1028
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b34
    move-exception v80

    .line 1030
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b35
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_494

    .line 1045
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b40
    move-exception v80

    .line 1047
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a6

    .line 1062
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b4c
    move-exception v80

    .line 1064
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b4d
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4bd

    .line 1077
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b58
    move-exception v80

    .line 1079
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ce

    .line 1103
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b64
    move-exception v80

    .line 1104
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e8

    .line 1109
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b70
    move-exception v80

    .line 1110
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ed

    .line 1122
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b7c
    move-exception v80

    .line 1124
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b7d
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50d

    .line 1137
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b88
    move-exception v80

    .line 1139
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51e

    .line 1152
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b94
    move-exception v80

    .line 1154
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_b95
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_535

    .line 1166
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_ba0
    move-exception v80

    .line 1168
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_ba1
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54c

    .line 1181
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_bac
    move-exception v80

    .line 1183
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55d

    .line 1193
    .end local v80           #e:Ljava/lang/Throwable;
    :cond_bb8
    :try_start_bb8
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bbf
    .catch Ljava/lang/Throwable; {:try_start_bb8 .. :try_end_bbf} :catch_bc1

    goto/16 :goto_578

    .line 1195
    :catch_bc1
    move-exception v80

    .line 1196
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v80

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_578

    .line 1207
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_bde
    move-exception v80

    .line 1209
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_590

    .line 1230
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_bea
    move-exception v80

    .line 1232
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_beb
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b6

    .line 1247
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_bf6
    move-exception v80

    .line 1249
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d5

    .line 1257
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c02
    move-exception v80

    .line 1258
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e5

    .line 1265
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c0e
    move-exception v80

    .line 1266
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f1

    .line 1273
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c1a
    move-exception v80

    .line 1274
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_601

    .line 1282
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c26
    move-exception v80

    .line 1283
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_c27
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_618

    .line 1290
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c32
    move-exception v80

    .line 1291
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_c33
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62f

    .line 1299
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c3e
    move-exception v80

    .line 1301
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63f

    .line 1311
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c4a
    move-exception v80

    .line 1312
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65c

    .line 1325
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c56
    move-exception v80

    .line 1327
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66d

    .line 1340
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c62
    move-exception v80

    .line 1342
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_c63
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_684

    .line 1353
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c6e
    move-exception v80

    .line 1355
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_694

    .line 1366
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c7a
    move-exception v80

    .line 1368
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a5

    .line 1389
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c86
    move-exception v80

    .line 1391
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b6

    .line 1402
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c92
    move-exception v80

    .line 1404
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c6

    .line 1452
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v129       #tvoutEnable:Ljava/lang/String;
    .restart local v130       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c9e
    :try_start_c9e
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v49, v0

    .line 1456
    .local v49, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v49, v3

    .line 1458
    move-object/from16 v0, v130

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v64

    .line 1460
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
    :try_end_cca
    .catch Ljava/lang/Throwable; {:try_start_c9e .. :try_end_cca} :catch_ccc

    goto/16 :goto_708

    .line 1464
    .end local v49           #arg:[Ljava/lang/Class;
    .end local v64           #constructor:Ljava/lang/reflect/Constructor;
    .end local v130           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_ccc
    move-exception v80

    .line 1466
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_708

    .line 1480
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v110       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_cd8
    move-exception v80

    .line 1481
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_72b

    .line 1537
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_ce4
    move-exception v80

    .line 1539
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7fc

    .line 1550
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_cf0
    move-exception v80

    .line 1551
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_81b

    .line 1567
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_cfc
    move-exception v80

    .line 1569
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_cfd
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_832

    .line 1582
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d08
    move-exception v80

    .line 1584
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_843

    .line 1593
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d12
    move-exception v80

    .line 1594
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_84d

    .line 1604
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d1e
    move-exception v80

    .line 1606
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_85e

    .line 1624
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d2a
    move-exception v80

    .line 1626
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_87d

    .line 1642
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d36
    move-exception v80

    .line 1644
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_889

    .line 1664
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d42
    move-exception v80

    .line 1666
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_d43
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ad

    .line 1697
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v129           #tvoutEnable:Ljava/lang/String;
    .restart local v29       #safeMode:Z
    :cond_d4e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_8c4

    .line 1709
    :catch_d57
    move-exception v80

    .line 1711
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8c7

    .line 1717
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d63
    move-exception v80

    .line 1718
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ca

    .line 1727
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d6f
    move-exception v80

    .line 1729
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8cf

    .line 1749
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d7b
    move-exception v80

    .line 1751
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e0

    .line 1759
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d87
    move-exception v80

    .line 1760
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e3

    .line 1779
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v61       #config:Landroid/content/res/Configuration;
    .restart local v97       #metrics:Landroid/util/DisplayMetrics;
    .restart local v137       #w:Landroid/view/WindowManager;
    :catch_d93
    move-exception v80

    .line 1780
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_917

    .line 441
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v137           #w:Landroid/view/WindowManager;
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #onlyCore:Z
    :catch_d9f
    move-exception v3

    goto/16 :goto_156

    .line 1664
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v109           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v79       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #tvoutEnable:Ljava/lang/String;
    .restart local v138       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_da2
    move-exception v80

    move-object/from16 v78, v79

    .end local v79           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_d43

    .line 1567
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_da6
    move-exception v80

    move-object/from16 v59, v60

    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_cfd

    .line 1340
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v129           #tvoutEnable:Ljava/lang/String;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_dab
    move-exception v80

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_c63

    .line 1290
    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v118       #serial:Lcom/android/server/SerialService;
    :catch_db0
    move-exception v80

    move-object/from16 v117, v118

    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_c33

    .line 1282
    .end local v133           #usb:Lcom/android/server/usb/UsbService;
    .restart local v134       #usb:Lcom/android/server/usb/UsbService;
    :catch_db5
    move-exception v80

    move-object/from16 v133, v134

    .end local v134           #usb:Lcom/android/server/usb/UsbService;
    .restart local v133       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_c27

    .line 1230
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_dba
    move-exception v80

    move-object/from16 v138, v139

    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v138       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_beb

    .line 1166
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_dbf
    move-exception v80

    move-object/from16 v66, v67

    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_ba1

    .line 1152
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    :catch_dc4
    move-exception v80

    move-object/from16 v93, v94

    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_b95

    .line 1122
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v108       #notification:Lcom/android/server/NotificationManagerService;
    :catch_dc9
    move-exception v80

    move-object/from16 v107, v108

    .end local v108           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_b7d

    .line 1062
    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    :catch_dce
    move-exception v80

    move-object/from16 v125, v126

    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .restart local v125       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_b4d

    .line 1028
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_dd3
    move-exception v80

    move-object/from16 v62, v63

    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_b35

    .line 1003
    .end local v140           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v141       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_dd8
    move-exception v80

    move-object/from16 v140, v141

    .end local v141           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v140       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_b29

    .line 968
    .end local v142           #wifi:Lcom/android/server/WifiService;
    .restart local v143       #wifi:Lcom/android/server/WifiService;
    :catch_ddd
    move-exception v80

    move-object/from16 v142, v143

    .end local v143           #wifi:Lcom/android/server/WifiService;
    .restart local v142       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_b1d

    .line 953
    .end local v145           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v146       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_de2
    move-exception v80

    move-object/from16 v145, v146

    .end local v146           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v145       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_b11

    .line 938
    :catch_de7
    move-exception v80

    goto/16 :goto_b05

    .line 919
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_dea
    move-exception v80

    move-object/from16 v12, v104

    .end local v104           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_af7

    .line 904
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_def
    move-exception v80

    move-object/from16 v127, v128

    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_aeb

    .line 838
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_df4
    move-exception v80

    move-object/from16 v121, v122

    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_abb

    .line 823
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v82       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_df9
    move-exception v80

    move-object/from16 v81, v82

    .end local v82           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_aaf

    .line 811
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v75       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_dfe
    move-exception v80

    move-object/from16 v74, v75

    .end local v75           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_aa3

    .line 796
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_e03
    move-exception v80

    move-object/from16 v95, v96

    .end local v96           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_a97

    .line 769
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v102       #mountService:Lcom/android/server/MountService;
    :catch_e08
    move-exception v80

    move-object/from16 v101, v102

    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_a7f

    .line 742
    .end local v101           #mountService:Lcom/android/server/MountService;
    :catch_e0d
    move-exception v3

    goto/16 :goto_308

    .line 706
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v70       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_e10
    move-exception v80

    move-object/from16 v69, v70

    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_a5b

    .line 678
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_e15
    move-exception v80

    move-object/from16 v87, v88

    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_a43

    .line 632
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v112       #power:Lcom/android/server/PowerManagerService;
    :catch_e1a
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_9ae

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v109       #onlyCore:Z
    :catch_e23
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_9ae

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_e2c
    move-exception v80

    move-object/from16 v71, v72

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_9ae

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_e35
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_e3e
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :catch_e45
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :catch_e4e
    move-exception v80

    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :catch_e57
    move-exception v80

    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :catch_e62
    move-exception v80

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v135, v136

    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v135       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_9ae

    .line 459
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    :catch_e6f
    move-exception v80

    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_99e

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v109           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v138       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_e74
    move-object/from16 v8, v103

    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_8ad

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v135           #vibrator:Lcom/android/server/VibratorService;
    .end local v138           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #onlyCore:Z
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    :cond_e78
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_28d
.end method
