.class Lcom/android/systemui/ExpandHelper$3;
.super Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ExpandHelper;->prepareTwScaleGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    #calls: Lcom/android/systemui/ExpandHelper;->updateExpansion()V
    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->access$500(Lcom/android/systemui/ExpandHelper;)V

    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 672
    .local v0, focusX:F
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 675
    .local v1, focusY:F
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    #setter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F
    invoke-static {v3, v1}, Lcom/android/systemui/ExpandHelper;->access$002(Lcom/android/systemui/ExpandHelper;F)F

    .line 676
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    #setter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F
    invoke-static {v3, v4}, Lcom/android/systemui/ExpandHelper;->access$102(Lcom/android/systemui/ExpandHelper;F)F

    .line 679
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    #calls: Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;
    invoke-static {v3, v0, v1}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;

    move-result-object v2

    .line 680
    .local v2, underFocus:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    const/4 v4, 0x4

    #calls: Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V
    invoke-static {v3, v2, v4}, Lcom/android/systemui/ExpandHelper;->access$300(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mExpanding:Z
    invoke-static {v3}, Lcom/android/systemui/ExpandHelper;->access$400(Lcom/android/systemui/ExpandHelper;)Z

    move-result v3

    return v3
.end method

.method public onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/ExpandHelper;->access$600(Lcom/android/systemui/ExpandHelper;Z)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    #calls: Lcom/android/systemui/ExpandHelper;->clearView()V
    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->access$700(Lcom/android/systemui/ExpandHelper;)V

    .line 700
    return-void
.end method
