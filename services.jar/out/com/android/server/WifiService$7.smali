.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2
    .parameter

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .registers 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1805
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private shouldWifiStayAwake(II)Z
    .registers 8
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1773
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1777
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_15

    .line 1786
    :cond_14
    :goto_14
    return v1

    .line 1780
    :cond_15
    if-ne v0, v1, :cond_19

    if-nez p2, :cond_14

    .line 1786
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$7;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_14
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, action:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_idle_ms"

    const-wide/32 v12, 0xdbba0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1680
    .local v2, idleMillis:J
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stay_on_while_plugged_in"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1683
    .local v7, stayAwakeConditions:I
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 1684
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 1685
    const-string v10, "WifiService"

    const-string v11, "ACTION_SCREEN_ON"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_3d
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1688
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1694
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1695
    .local v4, msg:Landroid/os/Message;
    const/4 v10, 0x2

    iput v10, v4, Landroid/os/Message;->what:I

    .line 1696
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 1699
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    .line 1762
    .end local v4           #msg:Landroid/os/Message;
    :cond_69
    :goto_69
    return-void

    .line 1700
    :cond_6a
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_de

    .line 1701
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 1702
    const-string v10, "WifiService"

    const-string v11, "ACTION_SCREEN_OFF"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_7f
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1714
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_69

    .line 1716
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_d7

    .line 1717
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_c1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_c1
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v2

    iget-object v14, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_69

    .line 1721
    :cond_d7
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    goto :goto_69

    .line 1724
    :cond_de
    const-string v10, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 1725
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_69

    .line 1726
    :cond_ee
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18e

    .line 1734
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1735
    .local v5, pluggedType:I
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 1736
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_11d
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_171

    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v10

    if-eqz v10, :cond_171

    invoke-direct {p0, v7, v5}, Lcom/android/server/WifiService$7;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_171

    .line 1740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v8, v10, v2

    .line 1741
    .local v8, triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_161

    .line 1742
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_161
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1748
    .end local v8           #triggerTime:J
    :cond_171
    if-nez v5, :cond_184

    .line 1749
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 1750
    :try_start_17a
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1751
    monitor-exit v11
    :try_end_184
    .catchall {:try_start_17a .. :try_end_184} :catchall_18b

    .line 1753
    :cond_184
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10, v5}, Lcom/android/server/WifiService;->access$2802(Lcom/android/server/WifiService;I)I

    goto/16 :goto_69

    .line 1751
    :catchall_18b
    move-exception v10

    :try_start_18c
    monitor-exit v11
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v10

    .line 1754
    .end local v5           #pluggedType:I
    :cond_18e
    const-string v10, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1aa

    .line 1755
    const-string v10, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1757
    .local v6, state:I
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_69

    .line 1758
    .end local v6           #state:I
    :cond_1aa
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 1759
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    const-string v11, "phoneinECMState"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    .line 1760
    iget-object v10, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_69
.end method
