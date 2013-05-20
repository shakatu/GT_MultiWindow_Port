.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;
.super Landroid/os/Handler;
.source "SmartSwitcherSlideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    const/high16 v0, 0x3f80

    .line 107
    .local v0, fSpeed:F
    const/4 v1, 0x0

    .line 108
    .local v1, mRemainVelocity:F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    if-lez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v1, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 110
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iput v7, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v3, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v4, v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    const v5, 0x3ccccccd

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 113
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v3, v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->scrollSlides(F)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget-boolean v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    if-nez v2, :cond_2

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iput v7, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 117
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->removeMessages(I)V

    .line 118
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iput v6, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_2
    const-wide/16 v2, 0xa

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
