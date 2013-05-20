.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMiniAppFocusChanged(Landroid/content/ComponentName;Z)Z
    .locals 4
    .parameter "cn"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 606
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    .line 607
    .local v0, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-nez v0, :cond_0

    .line 608
    const-string v2, "MiniModeAppsPanel"

    const-string v3, "focusChanged : findComponentDescriptionByName return NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v2, 0x0

    .line 617
    :goto_0
    return v2

    .line 612
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setFocus(Z)V

    .line 614
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 615
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
