.class Lcom/android/internal/policy/impl/PhoneWindowManager$22;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 5742
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5744
    const-string v1, "WindowManager"

    const-string v2, "ACTION_USBHID_MOUSE_EVENT Received..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 5746
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "android.intent.extra.device_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 5748
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_USBHID_MOUSE_EVENT Received.status  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v4, v1, :cond_50

    .line 5750
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 5763
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5764
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5765
    return-void

    .line 5752
    :cond_50
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v5, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_45

    .line 5755
    :cond_55
    :try_start_55
    const-string v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 5757
    .local v0, uiModeService:Landroid/app/IUiModeManager;
    if-eqz v0, :cond_45

    .line 5758
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_69} :catch_6a

    goto :goto_45

    .line 5760
    .end local v0           #uiModeService:Landroid/app/IUiModeManager;
    :catch_6a
    move-exception v1

    goto :goto_45
.end method
