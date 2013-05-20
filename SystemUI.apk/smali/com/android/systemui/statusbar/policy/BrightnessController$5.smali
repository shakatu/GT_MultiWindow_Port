.class Lcom/android/systemui/statusbar/policy/BrightnessController$5;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$500(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$600(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$5;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #calls: Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$700(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    .line 452
    :cond_0
    return-void
.end method
