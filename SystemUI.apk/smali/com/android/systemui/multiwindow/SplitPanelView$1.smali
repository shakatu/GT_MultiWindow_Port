.class Lcom/android/systemui/multiwindow/SplitPanelView$1;
.super Landroid/content/BroadcastReceiver;
.source "SplitPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/SplitPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->GESTURE_PINCH_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/SplitPanelView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, arrangeIntent:Landroid/content/Intent;
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$000(Lcom/android/systemui/multiwindow/SplitPanelView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #getter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$1;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/SplitPanelView;->setVisibility(I)V

    goto :goto_0
.end method
