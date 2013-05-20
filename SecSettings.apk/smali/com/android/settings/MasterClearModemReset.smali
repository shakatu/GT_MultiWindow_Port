.class public Lcom/android/settings/MasterClearModemReset;
.super Landroid/app/Service;
.source "MasterClearModemReset.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/MasterClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearModemReset$1;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearModemReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearModemReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private sendResetCommandToRIL()V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    .line 58
    .local v0, packet:Lcom/samsung/android/sec_platform_library/PacketBuilder;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableModemResetDuringFactoryReset"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 64
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 110
    const-string v2, "FACTORY"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    .local v0, callByFactory:Z
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 123
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 124
    const v2, 0x1040182

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClearModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 127
    const-string v2, "MasterClearModemReset"

    const-string v3, "Modem reset started..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendResetCommandToRIL()V

    goto :goto_0
.end method
