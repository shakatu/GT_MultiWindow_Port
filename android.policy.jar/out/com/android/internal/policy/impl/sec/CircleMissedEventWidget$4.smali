.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsHoveringUIEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 239
    :cond_f
    :goto_f
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 229
    :pswitch_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 232
    :pswitch_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 235
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 227
    nop

    :pswitch_data_36
    .packed-switch 0x7
        :pswitch_29
        :pswitch_f
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method
