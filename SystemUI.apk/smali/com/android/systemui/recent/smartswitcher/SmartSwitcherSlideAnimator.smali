.class public abstract Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
.super Ljava/lang/Object;
.source "SmartSwitcherSlideAnimator.java"

# interfaces
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherContants;
.implements Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    }
.end annotation


# static fields
.field protected static mScrollVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final SWIPE_MAX_ANGLE:F

.field protected mAutoScrollHandler:Landroid/os/Handler;

.field protected mBoundScrollDirection:I

.field mContext:Landroid/content/Context;

.field protected mCoverStopPos:F

.field protected mFollowDist:F

.field protected mIsScrolling:Z

.field protected mIsSliding:Z

.field protected mLastMovePos:F

.field protected mLastOffsetX:F

.field protected mLastOffsetY:F

.field protected mLastOffsetZ:F

.field protected mLastOpacity:F

.field protected mLastVelocity:F

.field mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

.field protected mMarginePos:F

.field protected mNotFollowDist:F

.field protected mPrevNextX:F

.field protected mPrevNextY:F

.field protected mScrollDirection:I

.field protected mScrollLengthForPage:F

.field protected mScrollMode:I

.field protected mSelectedIndex:I

.field protected mSlideBitmap:Landroid/graphics/Bitmap;

.field protected mSlideVisibleLength:F

.field protected mSwipeMaxLength:F

.field protected mSwipeOriginPos:F

.field mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v0, -0x3b86

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 34
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mPrevNextX:F

    .line 36
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mPrevNextY:F

    .line 38
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    .line 42
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    .line 44
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 46
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 48
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetY:F

    .line 50
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 52
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    .line 54
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollLengthForPage:F

    .line 56
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsScrolling:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    .line 60
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->SWIPE_MAX_ANGLE:F

    .line 68
    iput-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    .line 76
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    .line 78
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 84
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    .line 86
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideVisibleLength:F

    .line 88
    return-void
.end method

.method private initSwipeAni(F)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, 0x0

    .line 191
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 192
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 193
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetY:F

    .line 194
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 195
    return-void
.end method

.method private resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 3
    .parameter "slide"

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-result-object v0

    .line 395
    .local v0, pivot:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 396
    return-void
.end method


# virtual methods
.method public finishScroll(Z)V
    .locals 5
    .parameter "reset"

    .prologue
    const v4, 0x3ecccccd

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_1

    .line 203
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollLengthForPage:F

    mul-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 209
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 211
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsScrolling:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsScrolling:Z

    goto :goto_0

    .line 215
    :cond_3
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 216
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public getInitPos(II)F
    .locals 9
    .parameter "index"
    .parameter "totalCnt"

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 151
    if-le p2, v5, :cond_3

    .line 152
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 153
    .local v1, pos_1_4:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 154
    .local v3, pos_2_4:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 156
    .local v4, pos_3_4:F
    if-ne p1, v7, :cond_0

    .line 177
    .end local v1           #pos_1_4:F
    .end local v3           #pos_2_4:F
    .end local v4           #pos_3_4:F
    :goto_0
    return v1

    .line 158
    .restart local v1       #pos_1_4:F
    .restart local v3       #pos_2_4:F
    .restart local v4       #pos_3_4:F
    :cond_0
    if-ne p1, v8, :cond_1

    move v1, v3

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    move v1, v4

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMinPos(I)F

    move-result v1

    goto :goto_0

    .line 165
    .end local v1           #pos_1_4:F
    .end local v3           #pos_2_4:F
    .end local v4           #pos_3_4:F
    :cond_3
    if-ne p2, v5, :cond_6

    .line 166
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 167
    .local v0, pos_1_3:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 169
    .local v2, pos_2_3:F
    if-ne p1, v7, :cond_4

    move v1, v0

    .line 170
    goto :goto_0

    .line 171
    :cond_4
    if-ne p1, v8, :cond_5

    move v1, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMinPos(I)F

    move-result v1

    goto :goto_0

    .line 177
    .end local v0           #pos_1_3:F
    .end local v2           #pos_2_3:F
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMinPos(I)F

    move-result v1

    goto :goto_0
.end method

.method protected getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    return-object v0
.end method

.method public abstract getMaxPos(I)F
.end method

.method public abstract getMinPos(I)F
.end method

.method public getScrollMode()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    return v0
.end method

.method public getScrollValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSwipeOriginPos()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    return v0
.end method

.method public getZPos(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 186
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 2
    .parameter "context"
    .parameter "window"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public initScrollValue(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    sget-object v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 141
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    .end local v1           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;I)V

    .line 142
    .restart local v1       #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    sget-object v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    sget-object v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    goto :goto_1

    .line 148
    .end local v1           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 410
    const-string v4, "SLIDE_FOLD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 412
    .local v2, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 414
    .local v3, slideCnt:I
    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 415
    invoke-virtual {v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 416
    .local v0, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    int-to-float v4, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    const/16 v5, 0x32

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v0           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v1           #i:I
    .end local v2           #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v3           #slideCnt:I
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 426
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 432
    return-void
.end method

.method public rearrangeSlide(Z)V
    .locals 2
    .parameter "bLandScape"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 404
    .local v0, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v1

    .line 406
    .local v1, slideCnt:I
    return-void
.end method

.method public abstract removeSlideAni(I)V
.end method

.method public abstract restoreBoundAni()V
.end method

.method public abstract restoreScrollMode()V
.end method

.method public abstract restoreSwipeAni(I)V
.end method

.method protected abstract scrollSlides(F)V
.end method

.method public setMainSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 0
    .parameter "mainSlide"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 131
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 231
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    .line 232
    return-void
.end method

.method public setScrollMode(I)V
    .locals 0
    .parameter "scrollMode"

    .prologue
    .line 227
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 228
    return-void
.end method

.method public abstract setTouchDownPos(FF)V
.end method

.method public abstract setTouchUpPos(FF)V
.end method

.method public abstract slideReArrangeAni(I)V
.end method

.method public slideSelectAni1(ILandroid/graphics/Bitmap;)V
    .locals 31
    .parameter "slideIdx"
    .parameter "slideImage"

    .prologue
    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v26

    .line 252
    .local v26, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 253
    .local v20, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 257
    .local v14, display:Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 259
    .local v16, displayWidth:I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 261
    .local v15, displayHeight:I
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f00

    mul-float v27, v4, v5

    .line 262
    .local v27, slideX:F
    const/16 v17, 0x64

    .line 263
    .local v17, duration:I
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 264
    .local v25, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 266
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v15, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 269
    .local v24, resized:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 272
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .local v12, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v23, pnt:Landroid/graphics/Paint;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v13

    .line 280
    .local v13, currentY:F
    new-instance v9, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v0, v4, v5, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 282
    .local v9, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v21, Lcom/sec/android/samsunganimation/basetype/SARect;

    const/4 v4, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v13, v5, v6}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    .line 283
    .local v21, movefrom:Lcom/sec/android/samsunganimation/basetype/SARect;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SARect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v7

    add-int/lit8 v8, v16, 0xa

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v8

    div-float/2addr v7, v8

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    .line 285
    .local v22, moveto:Lcom/sec/android/samsunganimation/basetype/SARect;
    new-instance v30, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SARect;Lcom/sec/android/samsunganimation/basetype/SARect;)V

    .line 288
    .local v30, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 289
    const-string v4, "SELECT"

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 292
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 293
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 295
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 296
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 297
    .local v3, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 298
    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 299
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v7

    const/16 v8, 0xc8

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 295
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 302
    .end local v3           #upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    add-int/lit8 v19, p1, 0x1

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 303
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v11

    .line 304
    .local v11, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 305
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v4

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 306
    .local v18, fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v28, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    int-to-float v4, v15

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 307
    .local v28, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 308
    .local v10, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v29, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 310
    .local v29, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 311
    invoke-virtual {v11, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 302
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 313
    .end local v10           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v11           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v28           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v29           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 316
    return-void
.end method

.method public slideSelectAni2(I)V
    .locals 30
    .parameter "slideIdx"

    .prologue
    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v21

    .line 320
    .local v21, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v16

    .line 321
    .local v16, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "window"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 325
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 327
    .local v12, displayWidth:I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 329
    .local v11, displayHeight:I
    const/16 v13, 0xc8

    .line 330
    .local v13, duration:I
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 332
    .local v20, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 333
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v8

    .line 334
    .local v8, currentX:F
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v9

    .line 335
    .local v9, currentY:F
    int-to-float v0, v11

    move/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v27

    sub-float v26, v26, v27

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    move/from16 v27, v0

    add-float v19, v26, v27

    .line 336
    .local v19, selectedSlideY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0074

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    add-float v7, v19, v26

    .line 339
    .local v7, bottomSlidesY:F
    new-instance v4, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 341
    .local v4, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v17, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 342
    .local v17, movefrom:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 344
    .local v18, moveto:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v24, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 347
    .local v24, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 348
    const-string v26, "SELECT"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 351
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 353
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v15, v0, :cond_0

    .line 354
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 355
    .local v25, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 357
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 358
    .local v14, fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 359
    .local v22, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v5, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 360
    .local v5, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 362
    .local v23, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 363
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 353
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 366
    .end local v5           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v14           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v22           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v23           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    .end local v25           #upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    add-int/lit8 v15, p1, 0x1

    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    .line 367
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 369
    .local v6, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 370
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 371
    .restart local v14       #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 372
    .restart local v22       #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x96

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 373
    .restart local v5       #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 375
    .restart local v23       #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 376
    const-string v26, "SLIDE_FOLD"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 380
    invoke-virtual {v6, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 366
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 382
    .end local v5           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v6           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v14           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v22           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v23           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 384
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 386
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 387
    return-void
.end method

.method public abstract startBoundAni(F)V
.end method

.method public abstract startBoundAni(IF)V
.end method

.method protected abstract startCoverAni()V
.end method

.method public abstract startSwipeAni(IF)V
.end method
