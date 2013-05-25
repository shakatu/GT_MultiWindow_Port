.class Lcom/android/server/pm/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 115
    const/16 v0, 0x1f4

    .line 118
    .local v0, PHONE_STATE_POLL_SLEEP_MSEC:I
    const-string v3, "sys.radio.shutdown"

    const-string v6, "true"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_f
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-nez v3, :cond_15f

    move v3, v5

    :goto_18
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 125
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v3

    if-nez v3, :cond_32

    .line 126
    const-string v3, "ShutdownThread"

    const-string v6, "!@Turning off radio..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_32} :catch_162

    .line 148
    :cond_32
    :goto_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-nez v3, :cond_16f

    move v3, v5

    :goto_3b
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    .line 149
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v3

    if-nez v3, :cond_55

    .line 150
    const-string v3, "ShutdownThread"

    const-string v6, "Turning off radio2..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_55} :catch_172

    .line 159
    :cond_55
    :goto_55
    const-string v3, "ShutdownThread"

    const-string v6, "!@before Bluetooth"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    if-ne v3, v10, :cond_17f

    :cond_70
    move v3, v5

    :goto_71
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 163
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 164
    const-string v3, "ShutdownThread"

    const-string v6, "!@Disabling Bluetooth..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_8b} :catch_182

    .line 173
    :cond_8b
    :goto_8b
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v5, :cond_18f

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne v3, v11, :cond_18f

    :cond_9f
    move v3, v5

    :goto_a0
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$602(Z)Z

    .line 176
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 177
    const-string v3, "ShutdownThread"

    const-string v6, "!@Disabling WiFi..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->shutdown()Z

    .line 182
    :cond_b5
    const-string v3, "ShutdownThread"

    const-string v6, "!@Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_bc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_15e

    .line 185
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v3

    if-nez v3, :cond_dc

    .line 187
    :try_start_cc
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    if-ne v3, v10, :cond_192

    move v3, v5

    :goto_d9
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_dc} :catch_195

    .line 195
    :cond_dc
    :goto_dc
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v3

    if-nez v3, :cond_109

    .line 196
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v5, :cond_f3

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1a2

    :cond_f3
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-eq v3, v11, :cond_105

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v6, 0xe

    if-ne v3, v6, :cond_1a2

    :cond_105
    move v3, v5

    :goto_106
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$602(Z)Z

    .line 202
    :cond_109
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 204
    :try_start_10f
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$800(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    if-ne v3, v5, :cond_1a5

    move v3, v5

    :goto_11c
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$702(Z)Z
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_11f} :catch_1a8

    .line 215
    :cond_11f
    :goto_11f
    const-string v2, ""

    .line 216
    .local v2, repPhoneOff:Ljava/lang/String;
    const-string v3, "ril.deviceOffRes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_13b

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 220
    const-string v3, "ShutdownThread"

    const-string v6, "!@PhoneOff req resp"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 243
    :cond_13b
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1b5

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1b5

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v3

    if-eqz v3, :cond_1b5

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 244
    const-string v3, "ShutdownThread"

    const-string v6, "!@NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    aput-boolean v5, v3, v4

    .line 261
    .end local v2           #repPhoneOff:Ljava/lang/String;
    :cond_15e
    return-void

    :cond_15f
    move v3, v4

    .line 124
    goto/16 :goto_18

    .line 129
    :catch_162
    move-exception v1

    .line 130
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "!@RemoteException during radio shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 131
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto/16 :goto_32

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_16f
    move v3, v4

    .line 148
    goto/16 :goto_3b

    .line 153
    :catch_172
    move-exception v1

    .line 154
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 155
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto/16 :goto_55

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_17f
    move v3, v4

    .line 161
    goto/16 :goto_71

    .line 167
    :catch_182
    move-exception v1

    .line 168
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "!@RemoteException during bluetooth shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 169
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_8b

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_18f
    move v3, v4

    .line 173
    goto/16 :goto_a0

    :cond_192
    move v3, v4

    .line 187
    goto/16 :goto_d9

    .line 189
    :catch_195
    move-exception v1

    .line 190
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "!@RemoteException during bluetooth shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 191
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_dc

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1a2
    move v3, v4

    .line 196
    goto/16 :goto_106

    :cond_1a5
    move v3, v4

    .line 204
    goto/16 :goto_11c

    .line 205
    :catch_1a8
    move-exception v1

    .line 206
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 207
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$702(Z)Z

    goto/16 :goto_11f

    .line 248
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v2       #repPhoneOff:Ljava/lang/String;
    :cond_1b5
    const-string v3, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@RadioOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", BluetoothOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NFC Off:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", WiFiOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v3, "ShutdownThread"

    const-string v6, "!@before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 258
    const-string v3, "ShutdownThread"

    const-string v6, "!@after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[Phone off retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " radioOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bluetoothOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc
.end method
