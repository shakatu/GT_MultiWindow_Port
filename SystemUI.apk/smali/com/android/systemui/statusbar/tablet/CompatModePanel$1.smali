.class Lcom/android/systemui/statusbar/tablet/CompatModePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "CompatModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/CompatModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/CompatModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/CompatModePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOnButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->access$000(Lcom/android/systemui/statusbar/tablet/CompatModePanel;)Landroid/widget/RadioButton;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/CompatModePanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/CompatModePanel;->mOffButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->access$100(Lcom/android/systemui/statusbar/tablet/CompatModePanel;)Landroid/widget/RadioButton;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 51
    :cond_0
    return-void
.end method
