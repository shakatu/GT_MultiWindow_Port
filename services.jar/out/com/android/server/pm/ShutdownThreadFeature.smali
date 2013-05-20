.class public Lcom/android/server/pm/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z

.field private static bluetoothOff:Z

.field private static nfcOff:Z

.field private static radioOff:Z


# instance fields
.field final bluetooth:Landroid/bluetooth/IBluetooth;

.field mContext:Landroid/content/Context;

.field final nfc:Landroid/nfc/INfcAdapter;

.field final phone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 42
    sput v1, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    .line 43
    sput v1, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    .line 45
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 46
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    .line 47
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "TAG"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    .line 58
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 59
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 61
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 64
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return p0
.end method


# virtual methods
.method protected preShutdownRadios(I)V
    .registers 7
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    const-string v3, "ShutdownThread"

    const-string v4, "!@sys.deviceOffReq = 1"

    invoke-static {v3, v4}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v3, "sys.deviceOffReq"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    .line 79
    sget-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    if-nez v1, :cond_28

    .line 80
    const-string v1, "ShutdownThread"

    const-string v3, "!@Turning off radio..."

    invoke-static {v1, v3}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_28} :catch_29

    .line 87
    :cond_28
    :goto_28
    return-void

    .line 83
    :catch_29
    move-exception v0

    .line 84
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v3, "!@RemoteException during radio shutdown"

    invoke-static {v1, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 85
    sput-boolean v2, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    goto :goto_28
.end method

.method public run()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;Z)V
    .registers 14
    .parameter "timeout"
    .parameter "con"
    .parameter "reboot"

    .prologue
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v3, v6, v8

    .line 93
    .local v3, endTime:J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 94
    .local v5, done:[Z
    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 95
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 96
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    new-instance v0, Lcom/android/server/pm/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShutdownThreadFeature$1;-><init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V

    .line 182
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    int-to-long v6, p1

    :try_start_20
    invoke-virtual {v0, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_30

    .line 187
    :goto_23
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_2f

    .line 188
    const-string v1, "ShutdownThread"

    const-string v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2f
    return-void

    .line 185
    :catch_30
    move-exception v1

    goto :goto_23
.end method
