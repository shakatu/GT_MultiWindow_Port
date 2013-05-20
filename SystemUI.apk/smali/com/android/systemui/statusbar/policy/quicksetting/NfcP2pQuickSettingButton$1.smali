.class Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcP2pQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 23
    .local v0, state:I
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC onReceive()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcP2pQuickSettingButton;->setActivateStatus(I)V

    .line 25
    return-void
.end method
