.class Lcom/android/server/enterprise/kioskmode/KioskModeService$2;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 537
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 538
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, kioskPackage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    .line 541
    .local v1, isAppInstalled:Z
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 545
    .local v0, isAppEnabled:Z
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 547
    :cond_32
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 550
    .end local v0           #isAppEnabled:Z
    .end local v1           #isAppInstalled:Z
    .end local v2           #kioskPackage:Ljava/lang/String;
    :cond_37
    return-void
.end method
