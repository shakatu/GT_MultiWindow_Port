.class public Lcom/android/server/enterprise/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final ENGINE:Ljava/lang/String; = "engine"

.field private static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_ID:Ljava/lang/String; = "key_id"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isBootCompleted:Z


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mChannel:Landroid/net/wifi/WifiManager$Channel;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurityLevel:[Ljava/lang/String;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    .line 108
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 110
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 119
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->toast:Landroid/widget/Toast;

    .line 122
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 129
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WEP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WPA/WPA2 PSK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "802.1x EAP-LEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "802.1x EAP-FAST"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "802.1x EAP-PEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "802.1x EAP-TTLS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "802.1x EAP-TLS"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 182
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2685
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/WifiPolicy$3;-><init>(Lcom/android/server/enterprise/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    .line 149
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/WifiPolicy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 9
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 237
    .local v2, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 238
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v6, :cond_2a

    .line 240
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v5, v6, :cond_1a

    move v1, v4

    .line 241
    .local v1, ret:Z
    :cond_1a
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 248
    :goto_21
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 252
    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    return v1

    .line 244
    .end local v1           #ret:Z
    :cond_2a
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 245
    .local v0, netId:I
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 246
    if-ne v0, v6, :cond_38

    move v1, v4

    .restart local v1       #ret:Z
    :cond_38
    goto :goto_21

    .line 250
    .end local v0           #netId:I
    .end local v1           #ret:Z
    :cond_39
    const/4 v1, 0x1

    .restart local v1       #ret:Z
    goto :goto_26
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .registers 5
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2103
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2105
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2106
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2107
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2109
    :cond_10
    return-void
.end method

.method private alignConfiguredNetworks()V
    .registers 5

    .prologue
    .line 3309
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3310
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_36

    .line 3311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 3312
    .local v2, wc:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3313
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    goto :goto_12

    .line 3315
    :cond_30
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    goto :goto_12

    .line 3319
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #wc:Landroid/net/wifi/WifiConfiguration;
    :cond_36
    const-string v3, "BLOCKED_NETWORKS"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 3320
    return-void
.end method

.method private asyncDisableNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 2742
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_15

    .line 2743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.disable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2745
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2747
    .end local v0           #intent:Landroid/content/Intent;
    :cond_15
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .registers 5
    .parameter "netId"
    .parameter "enableOthers"

    .prologue
    .line 2733
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_1a

    .line 2734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2735
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2736
    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2737
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2739
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1a
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .registers 9
    .parameter "mask"

    .prologue
    .line 2674
    const/4 v2, 0x0

    .line 2675
    .local v2, count:I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7
    if-ge v4, v5, :cond_1d

    aget-byte v1, v0, v4

    .line 2676
    .local v1, b:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1a

    .line 2677
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_17

    .line 2678
    add-int/lit8 v2, v2, 0x1

    .line 2676
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2675
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2682
    .end local v1           #b:B
    .end local v3           #i:I
    :cond_1d
    return v2
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 2163
    if-nez p0, :cond_6

    .line 2164
    const/4 p0, 0x0

    .line 2170
    .end local p0
    .local v0, length:I
    :cond_5
    :goto_5
    return-object p0

    .line 2166
    .end local v0           #length:I
    .restart local p0
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2167
    .restart local v0       #length:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_5

    .line 2170
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"

    .prologue
    .line 1992
    const/4 v0, 0x1

    .line 1993
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1994
    .local v1, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 1997
    :cond_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1998
    return v0
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 10
    .parameter "config"
    .parameter "adminUid"

    .prologue
    const/4 v6, 0x0

    .line 2343
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2344
    .local v3, security:Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2345
    .local v0, enterprise:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2346
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2347
    .local v2, index:I
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-eqz v4, :cond_36

    .line 2348
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2349
    if-eqz v2, :cond_36

    .line 2350
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2351
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2352
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 2369
    .end local v2           #index:I
    :cond_36
    :goto_36
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2371
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v4, v5, :cond_49

    .line 2372
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2375
    :cond_49
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 2382
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b6

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 2384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_67
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_b6

    .line 2385
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_78

    .line 2386
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 2384
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2355
    .end local v1           #i:I
    :cond_7b
    const-string v4, "WPA/WPA2 PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2356
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 2359
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_36

    .line 2361
    :cond_8c
    const-string v4, "802.1x EAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2362
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_95
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v4, v4

    if-ge v1, v4, :cond_36

    .line 2363
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 2364
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2362
    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 2390
    .end local v1           #i:I
    :cond_b6
    return-void
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .registers 7
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 3323
    const/4 v0, 0x1

    .line 3324
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3327
    .local v1, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3328
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 3330
    :cond_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3331
    return v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 203
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_12
    return-void
.end method

.method private enforceWifiPermission()I
    .registers 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceWifiPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "ssid"

    .prologue
    .line 1301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    .line 1302
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1304
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method private getAdminUid()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 220
    .local v1, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, adminUid:I
    if-eq v0, v1, :cond_37

    .line 223
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_37
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2063
    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2065
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2066
    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 2069
    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_2d
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2412
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2414
    .local v4, list:Ljava/lang/String;
    if-eqz v4, :cond_22

    .line 2415
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2416
    .local v2, lastSSIDs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v3, :cond_22

    aget-object v6, v0, v1

    .line 2417
    .local v6, value:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2420
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #lastSSIDs:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :cond_22
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2393
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 2396
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2398
    .local v1, cv:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2399
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_48

    .line 2400
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2399
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2403
    :cond_48
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .registers 12
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2074
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2076
    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2077
    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_24

    .line 2078
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2079
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1a
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 2080
    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2079
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2083
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_24
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .registers 10
    .parameter "netId"

    .prologue
    .line 2039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2040
    .local v5, token:J
    const/4 v3, 0x0

    .line 2041
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_b

    move-object v4, v3

    .line 2054
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v4, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_a
    return-object v4

    .line 2044
    .end local v4           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2045
    .local v2, networkList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_28

    .line 2046
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2047
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, p1, :cond_17

    .line 2048
    move-object v3, v0

    .line 2053
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_28
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 2054
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 186
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 189
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "field"

    .prologue
    .line 753
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 754
    .local v1, wifiCfg:Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 755
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 759
    .end local v0           #i:I
    :goto_19
    return v0

    .line 754
    .restart local v0       #i:I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 759
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method private getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_10

    .line 734
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 740
    .local v0, callingUid:I
    :goto_d
    if-gez p2, :cond_1b

    .line 748
    :cond_f
    :goto_f
    return-object v2

    .line 736
    .end local v0           #callingUid:I
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_d

    .line 744
    :cond_1b
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 745
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 746
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method

.method static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .parameter "config"

    .prologue
    .line 2750
    invoke-static {p0}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "ssid"
    .parameter "addrType"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1356
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1358
    .local v0, callingUid:I
    if-nez p1, :cond_b

    .line 1374
    :cond_a
    :goto_a
    return-object v4

    .line 1361
    :cond_b
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v1, v8

    const-string v5, "networkSSID"

    aput-object v5, v1, v7

    .line 1364
    .local v1, col:[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1367
    .local v3, val:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1371
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1372
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 11
    .parameter "ssid"

    .prologue
    .line 2428
    const/4 v3, 0x0

    .line 2429
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2430
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_b

    move-object v4, v3

    .line 2445
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v4, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_a
    return-object v4

    .line 2433
    .end local v4           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 2434
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2435
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_36

    .line 2436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2437
    .local v0, auxNet:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2438
    move-object v3, v0

    .line 2444
    .end local v0           #auxNet:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_36
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 2445
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_a
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 31
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2528
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v4, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "adminUid"

    aput-object v26, v4, v25

    const/16 v25, 0x1

    const-string v26, "networkSSID"

    aput-object v26, v4, v25

    .line 2531
    .local v4, col:[Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 2535
    .local v24, val:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string v26, "WIFI_CONF"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2537
    .local v8, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2538
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    .line 2540
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_54

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5a

    .line 2541
    :cond_54
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2670
    :cond_59
    :goto_59
    return-object v5

    .line 2543
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_5a
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cv:Landroid/content/ContentValues;
    check-cast v7, Landroid/content/ContentValues;

    .line 2547
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v25, "networkSSID"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2548
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_80

    .line 2549
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_59

    .line 2551
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_80
    const-string v25, "networkBSSID"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2552
    const-string v25, "networkKeyMgmt"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2554
    const-string v25, "networkAllowedProtos"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2556
    const-string v25, "networkAuthAlg"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2559
    const-string v25, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2562
    const-string v25, "networkAllowedGroupProtocols"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2565
    const-string v25, "networkPSK"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2566
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "networkWEPKey1"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2567
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const-string v27, "networkWEPKey2"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2568
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const-string v27, "networkWEPKey3"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2569
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const-string v27, "networkWEPKey4"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2570
    const-string v25, "networkWEPKeyId"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2571
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkEAP"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2573
    const-string v25, "networkPhase2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1b3

    .line 2574
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "phase2"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "auth="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "networkPhase2"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2578
    :cond_1b3
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkIdentity"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2580
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkAnonymousId"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2582
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "password"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkPassword"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2584
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "client_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkClientCertification"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2587
    const-string v25, "networkPrivateKey"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2588
    .local v18, oldPrivateKey:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_36b

    const/4 v13, 0x1

    .line 2590
    .local v13, hasPrivateKey:Z
    :goto_22e
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "key_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    if-eqz v13, :cond_36e

    .end local v18           #oldPrivateKey:Ljava/lang/String;
    :goto_240
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2592
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "engine_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v26, v25, v26

    if-eqz v13, :cond_372

    const-string v25, "keystore"

    :goto_25b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2594
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "engine"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v26, v25, v26

    if-eqz v13, :cond_376

    const-string v25, "1"

    :goto_276
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2597
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v25, v0

    const-string v26, "ca_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v26

    aget-object v25, v25, v26

    const-string v26, "networkCaCertificate"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2600
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2601
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2602
    .local v6, configAux:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_2bc

    .line 2603
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2604
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2608
    :cond_2bc
    const-string v25, "networkStaticIpEnabled"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 2609
    .local v16, ipAssignment:Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_37a

    sget-object v25, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_2d2
    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2610
    new-instance v25, Landroid/net/LinkProperties;

    invoke-direct/range {v25 .. v25}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v25

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2611
    const-string v25, "networkStaticIp"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2612
    .local v22, staticIp:Ljava/lang/String;
    const-string v25, "networkStaticGateway"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2613
    .local v21, staticGateway:Ljava/lang/String;
    const-string v25, "networkStaticPrimaryDns"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2614
    .local v19, staticDns1:Ljava/lang/String;
    const-string v25, "networkStaticSecondaryDns"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2615
    .local v20, staticDns2:Ljava/lang/String;
    const-string v25, "networkStaticSubnetMask"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2617
    .local v23, staticSubnetMask:Ljava/lang/String;
    if-eqz v22, :cond_38e

    .line 2619
    :try_start_309
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 2621
    .local v14, inetAddr:Ljava/net/InetAddress;
    if-eqz v23, :cond_37e

    .line 2622
    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    .line 2624
    .local v15, inetsubNetAddr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v17

    .line 2628
    .end local v15           #inetsubNetAddr:Ljava/net/InetAddress;
    .local v17, maskLength:I
    :goto_319
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    new-instance v26, Landroid/net/LinkAddress;

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_329
    .catch Ljava/lang/IllegalArgumentException; {:try_start_309 .. :try_end_329} :catch_381

    .line 2638
    .end local v14           #inetAddr:Ljava/net/InetAddress;
    .end local v17           #maskLength:I
    :goto_329
    if-eqz v21, :cond_3b4

    .line 2640
    :try_start_32b
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2641
    .local v12, gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    new-instance v26, Landroid/net/RouteInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_33d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32b .. :try_end_33d} :catch_3a7

    .line 2650
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :goto_33d
    if-eqz v19, :cond_3d8

    .line 2652
    :try_start_33f
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2653
    .local v9, dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_34c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33f .. :try_end_34c} :catch_3ca

    .line 2661
    .end local v9           #dns1Addr:Ljava/net/InetAddress;
    :goto_34c
    if-eqz v20, :cond_59

    .line 2663
    :try_start_34e
    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 2664
    .local v10, dns2Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_35b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34e .. :try_end_35b} :catch_35d

    goto/16 :goto_59

    .line 2665
    .end local v10           #dns2Addr:Ljava/net/InetAddress;
    :catch_35d
    move-exception v11

    .line 2666
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v25, "WifiPolicyService"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    .line 2588
    .end local v6           #configAux:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v13           #hasPrivateKey:Z
    .end local v16           #ipAssignment:Ljava/lang/Integer;
    .end local v19           #staticDns1:Ljava/lang/String;
    .end local v20           #staticDns2:Ljava/lang/String;
    .end local v21           #staticGateway:Ljava/lang/String;
    .end local v22           #staticIp:Ljava/lang/String;
    .end local v23           #staticSubnetMask:Ljava/lang/String;
    .restart local v18       #oldPrivateKey:Ljava/lang/String;
    :cond_36b
    const/4 v13, 0x0

    goto/16 :goto_22e

    .line 2590
    .restart local v13       #hasPrivateKey:Z
    :cond_36e
    const-string v18, ""

    goto/16 :goto_240

    .line 2592
    .end local v18           #oldPrivateKey:Ljava/lang/String;
    :cond_372
    const-string v25, ""

    goto/16 :goto_25b

    .line 2594
    :cond_376
    const-string v25, "0"

    goto/16 :goto_276

    .line 2609
    .restart local v6       #configAux:Landroid/net/wifi/WifiConfiguration;
    .restart local v16       #ipAssignment:Ljava/lang/Integer;
    :cond_37a
    sget-object v25, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto/16 :goto_2d2

    .line 2626
    .restart local v14       #inetAddr:Ljava/net/InetAddress;
    .restart local v19       #staticDns1:Ljava/lang/String;
    .restart local v20       #staticDns2:Ljava/lang/String;
    .restart local v21       #staticGateway:Ljava/lang/String;
    .restart local v22       #staticIp:Ljava/lang/String;
    .restart local v23       #staticSubnetMask:Ljava/lang/String;
    :cond_37e
    const/16 v17, 0x18

    .restart local v17       #maskLength:I
    goto :goto_319

    .line 2629
    .end local v14           #inetAddr:Ljava/net/InetAddress;
    .end local v17           #maskLength:I
    :catch_381
    move-exception v11

    .line 2630
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v25, "WifiPolicyService"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_329

    .line 2633
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_38e
    const-string v25, "::1"

    invoke-static/range {v25 .. v25}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 2634
    .restart local v14       #inetAddr:Ljava/net/InetAddress;
    const/16 v17, 0x18

    .line 2635
    .restart local v17       #maskLength:I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    new-instance v26, Landroid/net/LinkAddress;

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_329

    .line 2642
    .end local v14           #inetAddr:Ljava/net/InetAddress;
    .end local v17           #maskLength:I
    :catch_3a7
    move-exception v11

    .line 2643
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v25, "WifiPolicyService"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33d

    .line 2646
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_3b4
    const-string v25, "::1"

    invoke-static/range {v25 .. v25}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2647
    .restart local v12       #gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    new-instance v26, Landroid/net/RouteInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto/16 :goto_33d

    .line 2654
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :catch_3ca
    move-exception v11

    .line 2655
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v25, "WifiPolicyService"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34c

    .line 2658
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_3d8
    const-string v25, "::1"

    invoke-static/range {v25 .. v25}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2659
    .restart local v9       #dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_34c
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .registers 10
    .parameter "ssid"

    .prologue
    .line 2003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2004
    .local v4, token:J
    const/4 v2, -0x1

    .line 2005
    .local v2, netId:I
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_b

    .line 2006
    const/4 v6, -0x1

    .line 2018
    :goto_a
    return v6

    .line 2008
    :cond_b
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2009
    .local v3, netList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_31

    .line 2010
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2011
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2012
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2017
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2018
    goto :goto_a
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "adminUid"
    .parameter "ssid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 466
    .local v1, enterpriseNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_68

    .line 467
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 468
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 469
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 486
    :goto_1d
    return-object v2

    .line 471
    :cond_1e
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1d

    .line 472
    :cond_23
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 473
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto :goto_1d

    .line 474
    :cond_30
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 476
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, eap:Ljava/lang/String;
    const-string v2, "PEAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 478
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    goto :goto_1d

    .line 479
    :cond_4c
    const-string v2, "TTLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 480
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    goto :goto_1d

    .line 481
    :cond_5a
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 482
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    goto :goto_1d

    .line 486
    .end local v0           #eap:Ljava/lang/String;
    :cond_68
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 609
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ltz p2, :cond_d

    const/4 v3, 0x3

    if-le p2, v3, :cond_e

    .line 620
    :cond_d
    :goto_d
    return-object v2

    .line 613
    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 614
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_d

    .line 615
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_d

    .line 616
    const-string v2, "*"

    goto :goto_d
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .parameter "uid"

    .prologue
    .line 3295
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3297
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3298
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    .line 1455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1456
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 2112
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 2113
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isHoneycombOrHigher()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, mainVersion:I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_14

    .line 213
    :goto_13
    return v1

    :cond_14
    move v1, v2

    goto :goto_13
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 2030
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 2031
    :cond_8
    const/4 v1, 0x1

    .line 2035
    :goto_9
    return v1

    .line 2034
    :cond_a
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2035
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_9
.end method

.method private isNetworkSecure(II)Z
    .registers 8
    .parameter "netId"
    .parameter "minSec"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1903
    const/4 v3, -0x1

    if-eq p1, v3, :cond_14

    .line 1904
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1905
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_11

    .line 1906
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-le p2, v3, :cond_12

    .line 1916
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    :goto_11
    return v1

    .restart local v0       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move v1, v2

    .line 1909
    goto :goto_11

    .line 1915
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_14
    const-string v1, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1916
    goto :goto_11
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 3302
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 3303
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    move-result v0

    .line 3305
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 3302
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .registers 6
    .parameter "uid"

    .prologue
    .line 3286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "wifiSsidRestriction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 3291
    :goto_a
    return v1

    .line 3288
    :catch_b
    move-exception v0

    .line 3289
    .local v0, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1984
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_6

    .line 1987
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2926
    monitor-enter p0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v11, "adminUid"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2929
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_17

    .line 2930
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_71

    .line 2970
    :cond_15
    monitor-exit p0

    return-object v5

    .line 2934
    :cond_17
    :try_start_17
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 2935
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "BLACKLIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "WHITELIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2941
    .local v8, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 2944
    .local v5, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2945
    .local v6, uid:Ljava/lang/Integer;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2946
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v9, "BLACKLIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    const-string v9, "WHITELIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2948
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_17 .. :try_end_70} :catchall_71

    goto :goto_48

    .line 2926
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v6           #uid:Ljava/lang/Integer;
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_71
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2951
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v7       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_74
    const/4 v9, 0x3

    :try_start_75
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "WIFI_SSID"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "WIFI_LIST_TYPE"

    aput-object v10, v1, v9

    .line 2954
    .local v1, columns:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2957
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2958
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "WIFI_LIST_TYPE"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "WIFI_SSID"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 2963
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_c0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c4
    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2964
    .restart local v6       #uid:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 2965
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "*"

    invoke-static {v10, v9, v11}, Lcom/android/server/enterprise/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;
    :try_end_ea
    .catchall {:try_start_75 .. :try_end_ea} :catchall_71

    goto :goto_c4
.end method

.method private loadWifiManager()V
    .registers 5

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_21

    .line 1978
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1979
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 1981
    :cond_21
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2174
    array-length v1, p1

    .line 2175
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_18

    .line 2177
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2179
    .end local v0           #i:I
    :goto_14
    return v0

    .line 2176
    .restart local v0       #i:I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2179
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .registers 11
    .parameter "value"
    .parameter "strings"

    .prologue
    .line 2205
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 2206
    .local v1, bitset:Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 2207
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2208
    .local v6, vals:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 2209
    .local v5, val:Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2210
    .local v3, index:I
    if-ltz v3, :cond_21

    .line 2211
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2208
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2215
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v5           #val:Ljava/lang/String;
    .end local v6           #vals:[Ljava/lang/String;
    :cond_24
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2184
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2190
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 2192
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 2193
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 2197
    :cond_29
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 2198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2201
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "str"
    .parameter "value"

    .prologue
    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1449
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1450
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    return v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 2152
    if-nez p0, :cond_7

    .line 2153
    const/4 p0, 0x0

    .line 2159
    .end local p0
    .local v0, length:I
    :cond_6
    :goto_6
    return-object p0

    .line 2155
    .end local v0           #length:I
    .restart local p0
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2156
    .restart local v0       #length:I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 2157
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .registers 4
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2097
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2098
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2099
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2100
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .registers 10
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2088
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2089
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2090
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2092
    .end local v1           #s:Ljava/lang/String;
    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2094
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 2756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2757
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_e

    .line 2758
    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2760
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2761
    return-void
.end method

.method private setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_12

    .line 709
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 716
    .local v0, callingUid:I
    :goto_c
    if-eqz p3, :cond_10

    if-gez p2, :cond_1d

    .line 717
    :cond_10
    const/4 v2, 0x0

    .line 727
    :cond_11
    :goto_11
    return v2

    .line 711
    .end local v0           #callingUid:I
    :cond_12
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_c

    .line 720
    :cond_1d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 721
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 722
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 723
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v3, v3, p2

    invoke-virtual {v3, p3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 725
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_11
.end method

.method private setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "ssid"
    .parameter "addr"
    .parameter "addrType"

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v2

    .line 1340
    .local v2, callingUid:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_e

    .line 1341
    :cond_c
    const/4 v6, 0x0

    .line 1351
    :goto_d
    return v6

    .line 1343
    :cond_e
    const/4 v6, 0x1

    .line 1345
    .local v6, ret:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1346
    .local v5, cv:Landroid/content/ContentValues;
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v3, "networkSSID"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1350
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_d
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .registers 21
    .parameter "callingUid"
    .parameter "config"

    .prologue
    .line 2452
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2453
    .local v6, cv:Landroid/content/ContentValues;
    const-string v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const-string v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const-string v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    const-string v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    const-string v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const-string v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    const-string v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const-string v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    const-string v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const-string v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2471
    const-string v1, "networkEAP"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "eap"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "phase2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v15

    .line 2474
    .local v15, phase2:Ljava/lang/String;
    if-eqz v15, :cond_ee

    .line 2475
    const-string v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :cond_ee
    const-string v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    const-string v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "anonymous_identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const-string v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const-string v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "client_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const-string v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "key_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "ca_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    const-string v2, "networkStaticIpEnabled"

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_244

    const/4 v1, 0x1

    :goto_183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2492
    const/4 v12, 0x0

    .local v12, ipAddr:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, subnetAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, gatewayAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, dns1Addr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2493
    .local v8, dns2Addr:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2494
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 2495
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    .line 2496
    .local v14, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 2497
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 2501
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    :cond_1c0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    .line 2502
    .local v16, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 2503
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 2507
    .end local v16           #route:Landroid/net/RouteInfo;
    :cond_1e6
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2508
    .local v9, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 2509
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2511
    :cond_202
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_212

    .line 2512
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2514
    :cond_212
    const-string v1, "networkStaticIp"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    const-string v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const-string v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    const-string v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const-string v1, "networkStaticSubnetMask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 2490
    .end local v7           #dns1Addr:Ljava/lang/String;
    .end local v8           #dns2Addr:Ljava/lang/String;
    .end local v9           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v10           #gatewayAddr:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ipAddr:Ljava/lang/String;
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v17           #subnetAddr:Ljava/lang/String;
    :cond_244
    const/4 v1, 0x0

    goto/16 :goto_183
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "ssid"
    .parameter "lastssid"

    .prologue
    .line 1171
    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1174
    .local v3, lastSSIDs:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .local v6, newList:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_41

    .line 1177
    if-eqz p2, :cond_3e

    .line 1178
    move-object v2, p2

    .line 1179
    .local v2, last:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1180
    .local v5, list:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v4, :cond_41

    aget-object v7, v0, v1

    .line 1182
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 1183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1188
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #last:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_3e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_41
    if-eqz p1, :cond_59

    .line 1193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 544
    .local v0, callingUid:I
    if-eqz p3, :cond_b

    if-ltz p2, :cond_b

    const/4 v4, 0x3

    if-le p2, v4, :cond_d

    .line 545
    :cond_b
    const/4 v3, 0x0

    .line 562
    :cond_c
    :goto_c
    return v3

    .line 547
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 548
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 549
    .local v3, ret:Z
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    .line 550
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 552
    .local v2, length:I
    const/16 v4, 0xa

    if-eq v2, v4, :cond_28

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_28

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_3c

    :cond_28
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 554
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v4, p2

    .line 559
    :goto_34
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 560
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_c

    .line 557
    :cond_3c
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    goto :goto_34
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .registers 4
    .parameter "list"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .registers 11

    .prologue
    .line 2117
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2118
    const/4 v5, 0x1

    .line 2119
    .local v5, success:Z
    const/4 v4, 0x0

    .line 2120
    .local v4, showMsg:Z
    const/4 v0, 0x0

    .line 2121
    .local v0, hasChanged:Z
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2122
    .local v3, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_59

    .line 2123
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2124
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x1

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v8, :cond_13

    .line 2125
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2127
    :cond_34
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_52

    .line 2129
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v1, i:Landroid/content/Intent;
    const-string v7, "message"

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v9, 0x10401d8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2133
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2136
    .end local v1           #i:Landroid/content/Intent;
    :cond_52
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 2137
    const/4 v0, 0x1

    goto :goto_13

    .line 2142
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_59
    if-eqz v0, :cond_6b

    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 2143
    const-string v7, "WifiPolicyService"

    const-string v8, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6d

    .line 2144
    const/4 v5, 0x0

    .line 2146
    :cond_6b
    monitor-exit p0

    return v5

    .line 2117
    .end local v0           #hasChanged:Z
    .end local v3           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #showMsg:Z
    .end local v5           #success:Z
    :catchall_6d
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 3263
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3264
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "wifiSsidRestriction"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3266
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3267
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3268
    return v1
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1220
    .local v0, callingUid:I
    if-nez p1, :cond_8

    .line 1221
    const/4 v1, 0x0

    .line 1229
    :goto_7
    return v1

    .line 1224
    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 1227
    const-string v1, "BLOCKED_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public addWifiSsidToBlackList(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2991
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 2993
    .local v0, callingUid:I
    if-nez p1, :cond_8

    .line 3009
    :goto_7
    return v5

    .line 2997
    :cond_8
    const/4 v3, 0x1

    .line 2998
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2999
    .local v4, s:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3000
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "WIFI_SSID"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3002
    const-string v6, "WIFI_LIST_TYPE"

    const-string v7, "BLACKLIST"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    if-eqz v3, :cond_41

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v3, 0x1

    .line 3006
    :goto_40
    goto :goto_d

    :cond_41
    move v3, v5

    .line 3003
    goto :goto_40

    .line 3007
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    :cond_43
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3008
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    move v5, v3

    .line 3009
    goto :goto_7
.end method

.method public addWifiSsidToWhiteList(Ljava/util/List;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3135
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3136
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 3137
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3138
    .local v4, s:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3139
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "WIFI_SSID"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3141
    const-string v5, "WIFI_LIST_TYPE"

    const-string v6, "WHITELIST"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    if-eqz v3, :cond_3d

    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v3, 0x1

    .line 3145
    :goto_3c
    goto :goto_9

    .line 3142
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3c

    .line 3146
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3147
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3148
    return v3
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 2895
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 2896
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiApSettingModification"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public clearWifiSsidBlackList()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3067
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3068
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 3069
    .local v2, result:Z
    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    .line 3072
    .local v1, columns:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "BLACKLIST"

    aput-object v6, v3, v4

    .line 3075
    .local v3, values:[Ljava/lang/String;
    if-eqz v2, :cond_32

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v2, v4

    .line 3078
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3079
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3080
    return v2

    :cond_32
    move v2, v5

    .line 3075
    goto :goto_2b
.end method

.method public clearWifiSsidWhiteList()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3204
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3205
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 3206
    .local v2, result:Z
    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    .line 3209
    .local v1, columns:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "WHITELIST"

    aput-object v6, v3, v4

    .line 3212
    .local v3, values:[Ljava/lang/String;
    if-eqz v2, :cond_32

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v2, v4

    .line 3215
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3216
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3217
    return v2

    :cond_32
    move v2, v5

    .line 3212
    goto :goto_2b
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 10
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 2311
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2313
    if-nez p1, :cond_6

    .line 2337
    :cond_5
    :goto_5
    return-void

    .line 2317
    :cond_6
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2319
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2321
    .local v0, adminUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 2330
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2335
    .local v1, taskToUpdateNetwork:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2336
    .local v2, threadToUpdateNetwork:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .registers 15

    .prologue
    .line 2245
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2247
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_54

    if-nez v10, :cond_a

    .line 2304
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 2250
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 2254
    .local v6, lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 2259
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    .line 2260
    .local v2, enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2261
    .local v0, confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_8

    .line 2264
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v4

    .line 2265
    .local v4, enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2268
    .local v3, enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2269
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_37

    .line 2270
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2271
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_54

    goto :goto_37

    .line 2245
    .end local v0           #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_54
    move-exception v10

    monitor-exit p0

    throw v10

    .line 2276
    .restart local v0       #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2       #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4       #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_57
    :try_start_57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2277
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2279
    .local v8, notQuotedSSID:Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    :cond_7f
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_97

    .line 2283
    :cond_8b
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v11, p0, Lcom/android/server/enterprise/WifiPolicy;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v13, p0, Lcom/android/server/enterprise/WifiPolicy;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_5b

    .line 2287
    :cond_97
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v10

    if-nez v10, :cond_aa

    .line 2288
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_5b

    .line 2291
    :cond_aa
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_5b

    .line 2296
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #notQuotedSSID:Ljava/lang/String;
    :cond_b1
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2300
    .local v7, newSSIDsList:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2301
    .local v9, value:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bf

    .line 2303
    .end local v9           #value:Ljava/lang/String;
    :cond_e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_e9
    .catchall {:try_start_57 .. :try_end_e9} :catchall_54

    goto/16 :goto_8
.end method

.method public getAllWifiSsidBlackLists()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3094
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 3096
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 3097
    .local v2, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_b

    .line 3098
    const/4 v1, 0x0

    .line 3110
    :cond_a
    return-object v1

    .line 3100
    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3101
    .local v4, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3103
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3104
    .local v3, uid:Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 3105
    .local v5, wci:Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3106
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 3107
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public getAllWifiSsidWhiteLists()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3232
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 3234
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 3235
    .local v2, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_b

    .line 3236
    const/4 v1, 0x0

    .line 3248
    :cond_a
    return-object v1

    .line 3238
    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3239
    .local v4, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3241
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3242
    .local v3, uid:Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 3243
    .local v5, wci:Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3244
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 3245
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 8

    .prologue
    .line 1732
    const/4 v1, 0x1

    .line 1733
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1736
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1737
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1738
    move v1, v2

    .line 1742
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public getAllowUserProfiles(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 1684
    const/4 v2, 0x1

    .line 1685
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowUserProfiles"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1687
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1688
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 1689
    move v2, v3

    .line 1693
    .end local v3           #value:Z
    :cond_22
    if-nez v2, :cond_40

    if-eqz p1, :cond_40

    .line 1694
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1695
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1699
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1267
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1268
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1269
    .local v0, aux:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1271
    .end local v0           #aux:Ljava/lang/String;
    :cond_24
    return-object v2
.end method

.method public getDHCPEnabled()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1437
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1440
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1442
    .local v0, ret:I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    if-nez v0, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    return v3
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1503
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1504
    const/4 v0, 0x0

    .line 1507
    :goto_a
    return-object v0

    .line 1506
    :cond_b
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultIp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1479
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1480
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1481
    const/4 v0, 0x0

    .line 1484
    :goto_a
    return-object v0

    .line 1483
    :cond_b
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1525
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1526
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1527
    const/4 v0, 0x0

    .line 1530
    :goto_a
    return-object v0

    .line 1529
    :cond_b
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1549
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1550
    const/4 v0, 0x0

    .line 1553
    :goto_a
    return-object v0

    .line 1552
    :cond_b
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1572
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1573
    const/4 v0, 0x0

    .line 1576
    :goto_a
    return-object v0

    .line 1575
    :cond_b
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getMinimumRequiredSecurity()I
    .registers 8

    .prologue
    .line 1852
    const/4 v1, 0x0

    .line 1853
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1855
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1856
    .local v2, value:I
    if-le v2, v1, :cond_f

    .line 1857
    move v1, v2

    goto :goto_f

    .line 1860
    .end local v2           #value:I
    :cond_23
    return v1
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 974
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 975
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 905
    const-string v2, "ca_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 906
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 908
    const-string v2, "keystore://CACERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 910
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 920
    const-string v2, "client_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 921
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 923
    const-string v2, "keystore://USRCERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 925
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .registers 7
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1326
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1328
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1329
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 1330
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_14

    const/4 v2, 0x1

    .line 1332
    :cond_14
    return v2
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 880
    const-string v1, "eap"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 881
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1391
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 966
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 967
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1383
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 457
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 694
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 701
    :cond_8
    :goto_8
    return-object v2

    .line 697
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 698
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_8

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 699
    const-string v2, "*"

    goto :goto_8
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "ssid"

    .prologue
    .line 954
    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 955
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 957
    const-string v2, "*"

    .line 959
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 890
    const-string v2, "phase2"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, phase2:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 893
    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 895
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1399
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 935
    const-string v2, "key_id"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 936
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 938
    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 939
    const-string v2, "keystore://USRPKEY_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 944
    :goto_1c
    return-object v2

    .line 942
    :cond_1d
    const-string v2, "USRPKEY_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 944
    :cond_26
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 323
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, SSIDList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 328
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 330
    .local v1, cv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 331
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 333
    :cond_32
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1407
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1415
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 629
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 638
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 647
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 656
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .registers 4
    .parameter "ssid"

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 523
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 524
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 527
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 529
    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public getPasswordHidden()Z
    .registers 8

    .prologue
    .line 1960
    const/4 v1, 0x0

    .line 1961
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1964
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1965
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 1966
    move v1, v2

    goto :goto_f

    .line 1969
    .end local v2           #value:Z
    :cond_24
    return v1
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 8

    .prologue
    .line 1773
    const/4 v1, 0x1

    .line 1774
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "promptCredentials"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1777
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1778
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1779
    move v1, v2

    .line 1783
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public getTlsCertificateSecurityLevel()I
    .registers 8

    .prologue
    .line 1885
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1886
    const/4 v2, 0x0

    .line 1888
    .local v2, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1890
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1891
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_12

    .line 1892
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12

    .line 1895
    .end local v3           #value:Ljava/lang/Integer;
    :cond_29
    return v2
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    .prologue
    .line 2865
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 2866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2872
    .local v0, token:J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    move-result-object v2

    .line 2874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2872
    return-object v2

    .line 2874
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .registers 13
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1080
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1083
    .local v0, adminUid:I
    new-instance v4, Landroid/app/enterprise/WifiAdminProfile;

    invoke-direct {v4}, Landroid/app/enterprise/WifiAdminProfile;-><init>()V

    .line 1085
    .local v4, ret:Landroid/app/enterprise/WifiAdminProfile;
    new-array v1, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string v6, "networkSSID"

    aput-object v6, v1, v8

    .line 1088
    .local v1, col:[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1091
    .local v5, val:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v6, v8, v1, v5, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1095
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_16f

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_16f

    .line 1096
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1101
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1102
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1104
    :cond_58
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1105
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1107
    :cond_68
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1108
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 1110
    :cond_78
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1111
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1113
    :cond_88
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1114
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1116
    :cond_98
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 1117
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1119
    :cond_a8
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1120
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1122
    :cond_b8
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 1123
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 1125
    :cond_ce
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 1126
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 1128
    :cond_de
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1129
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 1131
    :cond_ee
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 1132
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 1134
    :cond_fe
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 1135
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1136
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_11e

    .line 1137
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v7, "keystore://CACERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1141
    :cond_11e
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13e

    .line 1142
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1143
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_13e

    .line 1144
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v7, "keystore://USRCERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1148
    :cond_13e
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_168

    .line 1149
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1150
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_168

    .line 1152
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_171

    .line 1153
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1161
    :cond_168
    :goto_168
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1163
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #ret:Landroid/app/enterprise/WifiAdminProfile;
    :goto_16e
    return-object v4

    .restart local v4       #ret:Landroid/app/enterprise/WifiAdminProfile;
    :cond_16f
    move-object v4, v7

    .line 1098
    goto :goto_16e

    .line 1157
    .restart local v2       #cv:Landroid/content/ContentValues;
    :cond_171
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_168
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 2228
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2229
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 2230
    .local v0, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1282
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_14
    const/4 v1, 0x1

    .line 1284
    .local v1, ret:Z
    :goto_15
    if-eqz v1, :cond_33

    if-eqz p2, :cond_33

    .line 1285
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1290
    .end local v0           #i:Landroid/content/Intent;
    :cond_33
    return v1

    .line 1282
    .end local v1           #ret:Z
    :cond_34
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isNetworkSecure(IZ)Z
    .registers 8
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v1

    .line 1930
    .local v1, ret:Z
    if-nez v1, :cond_29

    if-eqz p2, :cond_29

    .line 1931
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1934
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1936
    .end local v0           #i:Landroid/content/Intent;
    :cond_29
    return v1
.end method

.method public isWifiAllowed(Z)Z
    .registers 9
    .parameter "showMsg"

    .prologue
    .line 1645
    const/4 v1, 0x1

    .line 1646
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1649
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1650
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1651
    move v1, v2

    .line 1657
    .end local v2           #value:Z
    :cond_22
    if-nez v1, :cond_2d

    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1658
    const/4 v1, 0x1

    .line 1667
    :cond_2d
    return v1
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .registers 8

    .prologue
    .line 2911
    const/4 v1, 0x1

    .line 2912
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifiApSettingModification"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2914
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2915
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 2916
    move v1, v2

    .line 2920
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isWifiSsidRestrictionActive()Z
    .registers 3

    .prologue
    .line 3280
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3281
    .local v0, callingUid:I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v1

    return v1
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 8

    .prologue
    .line 3359
    const/4 v1, 0x1

    .line 3360
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3363
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3364
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 3365
    move v1, v2

    .line 3369
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 169
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .parameter "uid"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 175
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 180
    return-void
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .registers 8
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 1240
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1242
    .local v0, callingUid:I
    if-nez p1, :cond_9

    move v1, v4

    .line 1257
    :goto_8
    return v1

    .line 1245
    :cond_9
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 1246
    const/4 v1, 0x1

    .line 1247
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1249
    .local v2, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 1252
    :cond_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    const-string v4, "BLOCKED_NETWORKS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 11
    .parameter "ssid"

    .prologue
    .line 341
    const/4 v2, 0x1

    .line 343
    .local v2, ret:Z
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_54

    .line 347
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 354
    .local v0, callingUid:I
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_43

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 356
    .local v3, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 357
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 358
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 359
    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 361
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    .end local v3           #token:J
    :cond_43
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v0, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 368
    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 370
    return v2

    .line 349
    .end local v0           #callingUid:I
    :cond_54
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_11
.end method

.method public removeWifiSsidFromBlackList(Ljava/util/List;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3031
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3032
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 3033
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3034
    .local v4, s:Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    .line 3038
    .local v1, columns:[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "BLACKLIST"

    aput-object v8, v5, v10

    .line 3041
    .local v5, values:[Ljava/lang/String;
    if-eqz v3, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    move v3, v6

    .line 3044
    :goto_42
    goto :goto_d

    :cond_43
    move v3, v7

    .line 3041
    goto :goto_42

    .line 3045
    .end local v1           #columns:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_45
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3046
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3047
    return v3
.end method

.method public removeWifiSsidFromWhiteList(Ljava/util/List;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3169
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3170
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 3171
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3172
    .local v4, s:Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    .line 3176
    .local v1, columns:[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "WHITELIST"

    aput-object v8, v5, v10

    .line 3179
    .local v5, values:[Ljava/lang/String;
    if-eqz v3, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    move v3, v6

    .line 3182
    :goto_42
    goto :goto_d

    :cond_43
    move v3, v7

    .line 3179
    goto :goto_42

    .line 3183
    .end local v1           #columns:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_45
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3184
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3185
    return v3
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1714
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserChanges"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1718
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_CHANGES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1720
    return v1
.end method

.method public setAllowUserProfiles(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1672
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1673
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1677
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1679
    return v1
.end method

.method public setDHCPEnabled(Z)Z
    .registers 8
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1423
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1424
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1432
    :goto_a
    return v3

    .line 1427
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1429
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    if-eqz p1, :cond_22

    :goto_19
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1431
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 1432
    goto :goto_a

    .line 1429
    .end local v0           #ret:Z
    :cond_22
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1490
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1491
    const/4 v0, 0x0

    .line 1497
    :cond_a
    :goto_a
    return v0

    .line 1493
    :cond_b
    const/4 v0, 0x0

    .line 1494
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1495
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1467
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1468
    const/4 v0, 0x0

    .line 1474
    :cond_a
    :goto_a
    return v0

    .line 1470
    :cond_b
    const/4 v0, 0x0

    .line 1471
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1472
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1513
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1514
    const/4 v0, 0x0

    .line 1520
    :cond_a
    :goto_a
    return v0

    .line 1516
    :cond_b
    const/4 v0, 0x0

    .line 1517
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1518
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1535
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1536
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1537
    const/4 v0, 0x0

    .line 1543
    :cond_a
    :goto_a
    return v0

    .line 1539
    :cond_b
    const/4 v0, 0x0

    .line 1540
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1541
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1561
    const/4 v1, 0x0

    .line 1566
    :goto_b
    return v1

    .line 1563
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1564
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_18
    move v1, v0

    .line 1566
    goto :goto_b
.end method

.method public setMinimumRequiredSecurity(I)Z
    .registers 18
    .parameter "secType"

    .prologue
    .line 1788
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    .line 1792
    .local v1, callingUid:I
    if-ltz p1, :cond_10

    const/4 v13, 0x7

    move/from16 v0, p1

    if-gt v0, v13, :cond_10

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_12

    .line 1793
    :cond_10
    const/4 v8, 0x0

    .line 1834
    :goto_11
    return v8

    .line 1797
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v4

    .line 1799
    .local v4, lastSec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    move/from16 v0, p1

    invoke-virtual {v13, v1, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1802
    .local v8, ret:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1804
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1805
    .local v7, newSec:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1806
    .local v11, value:I
    if-le v11, v7, :cond_35

    .line 1807
    move v7, v11

    goto :goto_35

    .line 1814
    .end local v11           #value:I
    :cond_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1815
    .local v9, token:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_94

    .line 1816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 1817
    .local v5, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_94

    .line 1818
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1819
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1820
    .local v6, netId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_7d

    .line 1821
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_61

    .line 1822
    :cond_7d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_61

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-eqz v13, :cond_61

    .line 1824
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_61

    .line 1829
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #netId:I
    :cond_94
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1832
    const-string v13, "MINIMUM_SECURITY_LEVEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 796
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 797
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 835
    const-string v1, "ca_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 836
    .local v0, index:I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 837
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 839
    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 820
    const-string v1, "client_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, index:I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 822
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 824
    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 1310
    if-nez p1, :cond_4

    .line 1311
    const/4 v2, 0x0

    .line 1322
    :goto_3
    return v2

    .line 1314
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission(Ljava/lang/String;)I

    move-result v0

    .line 1316
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1317
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 1318
    .local v2, ret:Z
    if-eqz p2, :cond_1b

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_11
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1319
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1320
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_3

    .line 1318
    :cond_1b
    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_11
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1387
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 782
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_11

    .line 783
    const-string v1, "WifiPolicyService"

    const-string v2, "Identity value excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, 0x0

    .line 787
    :goto_10
    return v1

    .line 786
    :cond_11
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 787
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1379
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "ssid"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 381
    .local v0, callingUid:I
    if-nez p2, :cond_b

    move v3, v4

    .line 449
    :cond_a
    :goto_a
    return v3

    .line 385
    :cond_b
    const-string v5, "FAST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "LEAP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1b
    move v3, v4

    .line 386
    goto :goto_a

    .line 389
    :cond_1d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 390
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 391
    .local v3, ret:Z
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 393
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 394
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 395
    const-string v5, "NONE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 396
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 417
    :cond_3d
    :goto_3d
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 418
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 423
    :cond_4a
    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 425
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkLinkSecurity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 428
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 429
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    :cond_7b
    const-string v4, "NONE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_84
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_10e

    .line 440
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_95

    .line 441
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    .line 439
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 397
    .end local v2           #i:I
    :cond_98
    const-string v5, "WEP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 398
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 399
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 400
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3d

    .line 401
    :cond_b0
    const-string v4, "PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 402
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3d

    .line 403
    :cond_be
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 404
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 405
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 406
    const-string v4, "PEAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 407
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 408
    :cond_e3
    const-string v4, "TTLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 409
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TTLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 410
    :cond_f4
    const-string v4, "TLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 411
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 413
    :cond_105
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 445
    :cond_10e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 447
    const-string v4, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 669
    .local v0, callingUid:I
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    .line 670
    :cond_e
    const/4 v2, 0x0

    .line 684
    :cond_f
    :goto_f
    return v2

    .line 673
    :cond_10
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 674
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 675
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_f

    .line 676
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 677
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 681
    :goto_2c
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 682
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_f

    .line 679
    :cond_34
    invoke-static {p2}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2c
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 768
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_11

    .line 769
    const-string v1, "WifiPolicyService"

    const-string v2, "Password excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v1, 0x0

    .line 773
    :goto_10
    return v1

    .line 772
    :cond_11
    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 773
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 806
    if-eqz p2, :cond_20

    .line 807
    const-string v1, "phase2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 808
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 810
    .end local v0           #index:I
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1395
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 850
    const-string v2, "key_id"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 851
    .local v0, index:I
    const/4 v1, 0x1

    .line 852
    .local v1, ret:Z
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    .line 853
    const-string v2, ""

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 855
    if-eqz v1, :cond_31

    .line 856
    const-string v2, "engine"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 857
    const-string v2, "0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 858
    const-string v2, "engine_id"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 859
    const-string v2, ""

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 871
    :cond_31
    :goto_31
    return v1

    .line 862
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 864
    if-eqz v1, :cond_31

    .line 865
    const-string v2, "engine"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 866
    const-string v2, "1"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 867
    const-string v2, "engine_id"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 868
    const-string v2, "keystore"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_31
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .registers 15
    .parameter "ssid"

    .prologue
    const/4 v10, 0x0

    .line 262
    const/4 v6, 0x0

    .line 264
    .local v6, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 266
    .local v0, callingUid:I
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_18

    .line 267
    :cond_10
    const-string v11, "WifiPolicyService"

    const-string v12, "SSID is invalid or excedes maximum length (32)"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_17
    :goto_17
    return v10

    .line 272
    :cond_18
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 273
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 274
    .local v4, lastSSID:Ljava/lang/String;
    if-eqz v4, :cond_2c

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 275
    const/4 v10, 0x1

    goto :goto_17

    .line 279
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 280
    .local v7, token:J
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 281
    .local v1, checkEnterprise:Z
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    if-nez v1, :cond_17

    .line 286
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 287
    const/4 v11, -0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 289
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 290
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    .line 292
    :cond_4f
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 296
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 297
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_91

    .line 299
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 300
    .local v9, wifi:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    if-eqz v4, :cond_69

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 302
    :cond_89
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_69

    .line 306
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_91
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 307
    if-eqz v4, :cond_a8

    .line 308
    invoke-static {v4}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9d
    :goto_9d
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    const-string v10, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v10, v6

    .line 319
    goto/16 :goto_17

    .line 310
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_a8
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9d
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1403
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1411
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 572
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 582
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 592
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 602
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .registers 7
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 498
    .local v0, callingUid:I
    const/4 v3, 0x1

    if-lt p2, v3, :cond_a

    const/4 v3, 0x4

    if-le p2, v3, :cond_c

    .line 499
    :cond_a
    const/4 v2, 0x0

    .line 513
    :goto_b
    return v2

    .line 502
    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 504
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 507
    add-int/lit8 v3, p2, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 508
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 509
    .local v2, ret:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_b

    .line 511
    .end local v2           #ret:Z
    :cond_20
    const/4 v2, 0x0

    .restart local v2       #ret:Z
    goto :goto_b
.end method

.method public setPasswordHidden(Z)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 1948
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1949
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "passwordHidden"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1757
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "promptCredentials"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1761
    .local v1, ret:Z
    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1763
    return v1
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .registers 9
    .parameter "level"

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1871
    .local v0, callingUid:I
    if-ltz p1, :cond_9

    const/4 v4, 0x1

    if-le p1, v4, :cond_b

    .line 1872
    :cond_9
    const/4 v1, 0x0

    .line 1880
    :goto_a
    return v1

    .line 1875
    :cond_b
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1878
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1879
    .local v2, token:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a
.end method

.method public setWifi(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    .line 1590
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1591
    .local v0, adminUid:I
    const/4 v1, 0x1

    .line 1592
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1594
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1598
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1600
    if-eqz p1, :cond_2b

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1601
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1606
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1608
    return v1

    .line 1603
    :cond_2b
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_27
.end method

.method public setWifiAllowed(Z)Z
    .registers 9
    .parameter "enable"

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1620
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1622
    .local v1, ret:Z
    if-nez p1, :cond_24

    .line 1623
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_16

    .line 1624
    const/4 v4, 0x0

    .line 1634
    :goto_15
    return v4

    .line 1626
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1627
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1628
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    .end local v2           #token:J
    :cond_24
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v4, v1

    .line 1634
    goto :goto_15
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "ssid"
    .parameter "securityType"
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2786
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 2788
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_34

    .line 2789
    :cond_15
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or more than 32 characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :goto_33
    return v1

    .line 2794
    :cond_34
    const-string v4, "Open"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2795
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2800
    :cond_63
    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    if-eqz p3, :cond_75

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_94

    .line 2802
    :cond_75
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or less than 8 characters for WPA PSK security type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2808
    :cond_94
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2809
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2810
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2811
    const-string v4, ""

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2812
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2813
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v6, ""

    aput-object v6, v4, v5

    .line 2815
    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 2816
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 2817
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 2818
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2826
    :goto_c4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2828
    .local v2, token:J
    :try_start_c8
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_eb

    .line 2829
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2830
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_ff

    move-result v1

    .line 2842
    :goto_e0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_33

    .line 2823
    .end local v2           #token:J
    :cond_e5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_c4

    .line 2837
    .restart local v2       #token:J
    :cond_eb
    :try_start_eb
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 2839
    .local v1, result:Z
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_fe
    .catchall {:try_start_eb .. :try_end_fe} :catchall_ff

    goto :goto_e0

    .line 2842
    .end local v1           #result:Z
    :catchall_ff
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .registers 12
    .parameter "profile"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 980
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 981
    const/4 v1, 0x1

    .line 983
    .local v1, ret:Z
    if-nez p1, :cond_a

    .line 1075
    :goto_9
    return v5

    .line 986
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 987
    .local v3, token:J
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 988
    .local v0, isEnterprise:Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v6, :cond_b5

    .line 993
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    .line 994
    .local v2, sec:Ljava/lang/String;
    const-string v6, "PSK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v6, :cond_39

    .line 995
    const-string v6, "WifiPolicyService"

    const-string v7, "PSK not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 998
    :cond_39
    const-string v6, "WEP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 999
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v8, :cond_49

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v6, v9, :cond_51

    .line 1000
    :cond_49
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKeyId invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1003
    :cond_51
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_69

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v6, :cond_61

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1005
    :cond_61
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey1 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1008
    :cond_69
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_82

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v6, :cond_7a

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1010
    :cond_7a
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey2 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1013
    :cond_82
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9c

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v6, :cond_93

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 1015
    :cond_93
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey3 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1018
    :cond_9c
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_b5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v6, :cond_ac

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1020
    :cond_ac
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey4 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1027
    .end local v2           #sec:Ljava/lang/String;
    :cond_b5
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_17c

    if-nez v0, :cond_17c

    .line 1028
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1032
    :cond_c2
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v5, :cond_cf

    .line 1033
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1035
    :cond_cf
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v5, :cond_dc

    .line 1036
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1038
    :cond_dc
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v5, :cond_e9

    .line 1039
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1041
    :cond_e9
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v5, :cond_f6

    .line 1042
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1044
    :cond_f6
    iget v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_104

    .line 1045
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1047
    :cond_104
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    if-eqz v5, :cond_111

    .line 1048
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1050
    :cond_111
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-eqz v5, :cond_11e

    .line 1051
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1053
    :cond_11e
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v5, :cond_12b

    .line 1054
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1056
    :cond_12b
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v5, :cond_138

    .line 1057
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1059
    :cond_138
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v5, :cond_145

    .line 1060
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1062
    :cond_145
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    if-eqz v5, :cond_152

    .line 1063
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1065
    :cond_152
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v5, :cond_15f

    .line 1066
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1068
    :cond_15f
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    if-eqz v5, :cond_16c

    .line 1069
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1071
    :cond_16c
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    if-eqz v5, :cond_179

    .line 1072
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_179
    move v5, v1

    .line 1075
    goto/16 :goto_9

    .line 1029
    :cond_17c
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-nez v6, :cond_c2

    goto/16 :goto_9
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .registers 7
    .parameter "allow"

    .prologue
    .line 3342
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3343
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3347
    .local v1, ret:Z
    const-string v2, "WIFI_ALLOWED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 3349
    return v1
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadWifiManager()V

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    .line 163
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 164
    return-void
.end method
