.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field bottomResize:Landroid/graphics/Rect;

.field currentLaunchMode:I

.field leftResize:Landroid/graphics/Rect;

.field leftbottomResize:Landroid/graphics/Rect;

.field rightResize:Landroid/graphics/Rect;

.field rightbottomResize:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private windowMode:I


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1584
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    return-void
.end method

.method private isResizeArea(II)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0x190

    const/16 v5, 0x1e

    .line 1615
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1616
    .local v0, moveDistanceX:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1618
    .local v1, moveDistanceY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3a

    if-le v0, v1, :cond_3a

    if-lt v1, v5, :cond_c0

    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5a

    if-le v0, v1, :cond_5a

    if-lt v1, v5, :cond_c0

    :cond_5a
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c0

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    if-gt v2, v6, :cond_c0

    :cond_7d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c0

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    if-gt v2, v6, :cond_c0

    :cond_a0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_c2

    if-le v1, v0, :cond_c2

    if-ge v0, v5, :cond_c2

    .line 1623
    :cond_c0
    const/4 v2, 0x1

    .line 1626
    :goto_c1
    return v2

    :cond_c2
    const/4 v2, 0x0

    goto :goto_c1
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "overlay"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1630
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1678
    :cond_b
    :goto_b
    return-void

    .line 1634
    :cond_c
    const/4 v0, 0x0

    .line 1635
    .local v0, needGuideView:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    if-nez v2, :cond_b0

    .line 1636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->isResizeArea(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1637
    const/4 v0, 0x1

    .line 1639
    :cond_2e
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v4, :cond_3f

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v5, :cond_3f

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1642
    const/4 v0, 0x0

    .line 1645
    :cond_3f
    if-eqz v0, :cond_6d

    .line 1646
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    .line 1647
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1648
    .local v1, winInfo:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1649
    const-string v2, "MultiPhoneWindowEvent"

    const-string v3, "Create GhostView by onGesture"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v4

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    .line 1665
    .end local v1           #winInfo:Landroid/os/Bundle;
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    if-eqz v2, :cond_f9

    .line 1666
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 1667
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    .line 1668
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/gesture/GestureOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1669
    if-eqz v0, :cond_b

    .line 1670
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/gesture/GestureOverlayView;->sendCancelEventToChild(Landroid/view/MotionEvent;)V

    goto/16 :goto_b

    .line 1653
    :cond_b0
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v4, :cond_c0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    if-eq v2, v5, :cond_c0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1656
    :cond_c0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->isResizeArea(II)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1657
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1658
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1659
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1660
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto :goto_6d

    .line 1673
    :cond_ee
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto/16 :goto_b

    .line 1676
    :cond_f9
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto/16 :goto_b
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1693
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1702
    :goto_8
    return-void

    .line 1697
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1698
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1699
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1701
    :cond_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto :goto_8
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1681
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1690
    :goto_8
    return-void

    .line 1685
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1686
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1689
    :cond_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setByPassingModeToSuper(Z)V

    goto :goto_8
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "overlay"
    .parameter "event"

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x0

    .line 1596
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1597
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1598
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1599
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1600
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->windowMode:I

    .line 1601
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->currentLaunchMode:I

    .line 1604
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1605
    .local v2, th:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1606
    .local v0, bh:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 1607
    .local v1, bw:I
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1e

    invoke-direct {v3, v6, v2, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftResize:Landroid/graphics/Rect;

    .line 1608
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0x1e

    add-int/lit8 v5, v0, -0x1e

    invoke-direct {v3, v4, v2, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightResize:Landroid/graphics/Rect;

    .line 1609
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x3c

    const/16 v5, 0x3c

    invoke-direct {v3, v6, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->leftbottomResize:Landroid/graphics/Rect;

    .line 1610
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0x3c

    add-int/lit8 v5, v0, -0x3c

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->rightbottomResize:Landroid/graphics/Rect;

    .line 1611
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1e

    add-int/lit8 v5, v1, -0x1e

    invoke-direct {v3, v7, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->bottomResize:Landroid/graphics/Rect;

    .line 1612
    return-void
.end method
