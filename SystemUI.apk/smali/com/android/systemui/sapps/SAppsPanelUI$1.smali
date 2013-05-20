.class Lcom/android/systemui/sapps/SAppsPanelUI$1;
.super Landroid/content/BroadcastReceiver;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$1;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #calls: Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$000(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V

    goto :goto_0
.end method
