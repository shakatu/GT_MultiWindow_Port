.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;
.super Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;
.source "SmartSwitcherWindow.java"

# interfaces
.implements Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherContants;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$SmartSwitcherRecentsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;
    }
.end annotation


# instance fields
.field private mActiveMode:Z

.field private mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

.field private mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

.field mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDeleteButtonH:F

.field private mDeleteButtonW:F

.field private mDeleteButtonX:F

.field private mDeleteButtonY:F

.field private mDeletePressed:Z

.field private mDeletePressedIndex:I

.field private mFrameBorder:F

.field private mLoadedSlideFirst:I

.field private mLoadedSlideLast:I

.field private mPreviousX:F

.field private mPreviousY:F

.field private mRecentAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSlideIndex:I

.field private mSwipeMaxLength:F

.field private mSwippingSideIndex:I

.field private mVisibleSlideCount:I

.field private mVisibleSlideFirst:I

.field private mVisibleSlideLast:I

.field private slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    .line 42
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    .line 44
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 46
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    .line 48
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    .line 50
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    .line 52
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 54
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 56
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    .line 58
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideFirst:I

    .line 60
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideLast:I

    .line 62
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mLoadedSlideFirst:I

    .line 64
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mLoadedSlideLast:I

    .line 66
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 70
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    .line 72
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    .line 74
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    .line 76
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    .line 78
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    .line 80
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 82
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 84
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 85
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    .line 87
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    .line 99
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 101
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->buildSubSlide()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setMainSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwipeMaxLength:F

    .line 113
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherHorizonSlideAnimator;->getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherHorizonSlideAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    return-object v0
.end method

.method private checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I
    .locals 9
    .parameter "pos"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 305
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 306
    .local v3, slideCnt:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 307
    invoke-virtual {v1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 309
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v6, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v5, v6, v7

    .line 311
    .local v5, y:F
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 312
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    add-float/2addr v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 313
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete slide index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0           #i:I
    .end local v2           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #y:F
    :goto_1
    return v0

    .line 318
    .restart local v0       #i:I
    .restart local v2       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v6, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v4, v6, v7

    .line 319
    .local v4, x:F
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 320
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    add-float/2addr v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 321
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete slide index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    .end local v4           #x:F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 327
    .end local v2           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private finishSwipe(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 6
    .parameter "pos"

    .prologue
    const/high16 v3, 0x3f80

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 349
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getSwipeOriginPos()F

    move-result v4

    iget v5, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    sub-float v0, v4, v5

    .line 360
    .local v0, dist:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwipeMaxLength:F

    div-float v1, v4, v5

    .line 361
    .local v1, ratio:F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    .line 363
    .local v3, strenth:F
    :goto_2
    const/high16 v4, 0x3f00

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 364
    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-direct {p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeSlide(I)V

    .line 365
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 370
    :goto_3
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    goto :goto_0

    .line 357
    .end local v0           #dist:F
    .end local v1           #ratio:F
    .end local v3           #strenth:F
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getSwipeOriginPos()F

    move-result v4

    iget v5, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    sub-float v0, v4, v5

    .restart local v0       #dist:F
    goto :goto_1

    .restart local v1       #ratio:F
    :cond_2
    move v3, v1

    .line 361
    goto :goto_2

    .line 367
    .restart local v3       #strenth:F
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreSwipeAni(I)V

    goto :goto_3
.end method

.method private getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I
    .locals 11
    .parameter "pos"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 286
    .local v2, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v4

    .line 287
    .local v4, slideCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 288
    invoke-virtual {v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 289
    .local v3, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 290
    .local v6, x:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v8, v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v7, v8, v9

    .line 291
    .local v7, y:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v5

    .line 292
    .local v5, w:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 294
    .local v0, h:F
    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_0

    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    add-float v9, v6, v5

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 295
    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_0

    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    add-float v9, v7, v0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 300
    .end local v0           #h:F
    .end local v1           #i:I
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #w:F
    .end local v6           #x:F
    .end local v7           #y:F
    :goto_1
    return v1

    .line 287
    .restart local v0       #h:F
    .restart local v1       #i:I
    .restart local v3       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .restart local v5       #w:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0           #h:F
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #w:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isPortraitMode()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 721
    :cond_0
    const/4 v0, 0x1

    .line 723
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDeleteButtonClick(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->removeSlideAni(I)V

    .line 412
    return-void
.end method

.method private onSelectSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 375
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v1

    .line 376
    .local v1, slideIdx:I
    if-ne v1, v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 382
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 387
    :cond_2
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    sub-int/2addr v2, v1

    if-le v2, v3, :cond_4

    .line 388
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    add-int/lit8 v1, v2, -0x1

    .line 392
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 403
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 405
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 406
    .local v0, currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v0, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    invoke-interface {v2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;->handleOnClick(Lcom/android/systemui/recent/TaskDescription;)V

    goto :goto_0

    .line 389
    .end local v0           #currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    :cond_4
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    sub-int v2, v1, v2

    if-le v2, v3, :cond_3

    .line 390
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    add-int/lit8 v1, v2, 0x1

    goto :goto_1
.end method

.method private removeSlide(I)V
    .locals 4
    .parameter "slideIdx"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 416
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v1, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 417
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 420
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 421
    .local v0, currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 424
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->slideReArrangeAni(I)V

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    invoke-interface {v3, v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;->handleSwipe(Lcom/android/systemui/recent/TaskDescription;I)V

    .line 430
    .end local v0           #currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    return-void
.end method

.method private resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 3
    .parameter "slide"

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-result-object v0

    .line 569
    .local v0, pivot:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    invoke-virtual {p1, v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    goto :goto_0
.end method

.method private scrollSlides(F)V
    .locals 1
    .parameter "velocity"

    .prologue
    .line 261
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->scrollSlides(F)V

    goto :goto_0
.end method

.method private setBorderImage(Landroid/graphics/Bitmap;Landroid/graphics/NinePatch;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "bgImage"
    .parameter "npBitmap"
    .parameter "w"
    .parameter "h"
    .parameter "bCover"

    .prologue
    .line 502
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 503
    .local v9, output_bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 504
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020071

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 508
    .local v6, delete_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0072

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 510
    .local v7, discardTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0075

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    .line 511
    .local v12, topMargin:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0076

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v8, v13

    .line 512
    .local v8, margin:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0062

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 513
    .local v4, deleteX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0063

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 515
    .local v5, deleteY:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 516
    .local v2, blackBgPnt:Landroid/graphics/Paint;
    const/high16 v13, -0x100

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v10, v13, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    .local v10, sourceRect:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v13, v13

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v14, v14

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v15, v15

    sub-int v15, p3, v15

    sub-int/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v16, p4, v16

    sub-int v16, v16, v8

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    .local v11, targetRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v11, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 524
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 527
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 529
    if-nez p5, :cond_0

    .line 530
    const/4 v13, 0x0

    invoke-virtual {v3, v6, v4, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 550
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 551
    return-object v9
.end method

.method private swipeSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 267
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    if-ne v1, v2, :cond_1

    .line 271
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v0

    .line 272
    .local v0, slideIdx:I
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 273
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    .line 276
    .end local v0           #slideIdx:I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    iget v3, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startSwipeAni(IF)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    iget v3, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startSwipeAni(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected buildSubSlide()V
    .locals 24

    .prologue
    .line 434
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->buildSubSlide()V

    .line 435
    const/4 v3, 0x4

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    .line 438
    .local v9, bgColor:[F
    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 441
    .local v16, itemColor:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v17

    .line 442
    .local v17, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundColor([F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v15

    .line 446
    .local v15, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v15, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 447
    .local v10, bgBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 449
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v23

    .line 450
    .local v23, width:F
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v14

    .line 451
    .local v14, height:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 452
    .local v22, totalCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 454
    .local v11, display:Landroid/view/Display;
    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 455
    .local v13, displayWidth:I
    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 457
    .local v12, displayHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 458
    .local v19, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 460
    .local v18, reSizeHeight:I
    const/16 v21, 0x0

    .line 461
    .local v21, slideWidth:I
    const/16 v20, 0x0

    .line 463
    .local v20, slideHeight:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v21, v13, v3

    .line 465
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v20, v18, v3

    .line 471
    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 473
    new-instance v2, Lcom/sec/android/samsunganimation/slide/SASlide;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    int-to-float v7, v0

    move/from16 v0, v20

    int-to-float v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    .line 475
    .local v2, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 476
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 477
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(I)V

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    const/high16 v3, 0x3f00

    mul-float v3, v3, v23

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    .line 487
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startCoverAni()V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->initScrollValue(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v3, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 493
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 496
    :cond_0
    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    return-void

    .line 467
    .end local v2           #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v21, v19, v3

    .line 468
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v20, v18, v3

    goto/16 :goto_0

    .line 484
    .restart local v2       #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v14

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    goto :goto_1

    .line 435
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 438
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public drawThumbnailAndIcon(I)V
    .locals 34
    .parameter "index"

    .prologue
    .line 754
    if-nez p1, :cond_1

    const/4 v10, 0x1

    .line 755
    .local v10, bCover:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0073

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .line 756
    .local v26, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0074

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    .line 758
    .local v25, reSizeHeight:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int v8, v26, v5

    .line 759
    .local v8, slideWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int v9, v25, v5

    .line 760
    .local v9, slideHeight:I
    const/16 v27, 0x0

    .line 762
    .local v27, removeBtnMargin:I
    if-eqz v10, :cond_2

    .line 763
    const/16 v27, 0x0

    .line 768
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c007f

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v19, v27, v5

    .line 769
    .local v19, iconLf:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0080

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v21, v0

    .line 770
    .local v21, iconTp:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0081

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v22, v0

    .line 771
    .local v22, iconWidth:I
    add-int v20, v19, v22

    .line 772
    .local v20, iconRt:I
    add-int v18, v21, v22

    .line 774
    .local v18, iconBt:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0082

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v31, v27, v5

    .line 775
    .local v31, textX:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0083

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v32, v0

    .line 776
    .local v32, textY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0084

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v16, v0

    .line 778
    .local v16, fontSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v23

    .line 780
    .local v23, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 781
    .local v30, textPaint:Landroid/graphics/Paint;
    move/from16 v0, v16

    int-to-float v5, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 782
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 783
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 784
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 785
    const/4 v5, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    const/4 v12, 0x0

    .line 789
    .local v12, borderBitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f020005

    move/from16 v0, v33

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 803
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v14

    .line 804
    .local v14, chunk:[B
    new-instance v7, Landroid/graphics/NinePatch;

    const/4 v5, 0x0

    invoke-direct {v7, v12, v14, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 806
    .local v7, npBitmap:Landroid/graphics/NinePatch;
    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v15

    .line 808
    .local v15, curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v15, :cond_5

    .line 841
    :cond_0
    :goto_3
    return-void

    .line 754
    .end local v7           #npBitmap:Landroid/graphics/NinePatch;
    .end local v8           #slideWidth:I
    .end local v9           #slideHeight:I
    .end local v10           #bCover:Z
    .end local v12           #borderBitmap:Landroid/graphics/Bitmap;
    .end local v14           #chunk:[B
    .end local v15           #curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v16           #fontSize:I
    .end local v18           #iconBt:I
    .end local v19           #iconLf:I
    .end local v20           #iconRt:I
    .end local v21           #iconTp:I
    .end local v22           #iconWidth:I
    .end local v23           #mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v25           #reSizeHeight:I
    .end local v26           #reSizeWidth:I
    .end local v27           #removeBtnMargin:I
    .end local v30           #textPaint:Landroid/graphics/Paint;
    .end local v31           #textX:I
    .end local v32           #textY:I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 765
    .restart local v8       #slideWidth:I
    .restart local v9       #slideHeight:I
    .restart local v10       #bCover:Z
    .restart local v25       #reSizeHeight:I
    .restart local v26       #reSizeWidth:I
    .restart local v27       #removeBtnMargin:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f0c0085

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v27, v0

    goto/16 :goto_1

    .line 793
    .restart local v12       #borderBitmap:Landroid/graphics/Bitmap;
    .restart local v16       #fontSize:I
    .restart local v18       #iconBt:I
    .restart local v19       #iconLf:I
    .restart local v20       #iconRt:I
    .restart local v21       #iconTp:I
    .restart local v22       #iconWidth:I
    .restart local v23       #mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .restart local v30       #textPaint:Landroid/graphics/Paint;
    .restart local v31       #textX:I
    .restart local v32       #textY:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f020007

    move/from16 v0, v33

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    .line 798
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v33, 0x7f020006

    move/from16 v0, v33

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    .line 812
    .restart local v7       #npBitmap:Landroid/graphics/NinePatch;
    .restart local v14       #chunk:[B
    .restart local v15       #curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/recent/TaskDescription;

    .line 814
    .local v29, td:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v29, :cond_0

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 817
    :cond_6
    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v28

    .line 818
    .local v28, screenShot:Landroid/graphics/Bitmap;
    move-object/from16 v6, v28

    .local v6, thumbBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, p0

    .line 820
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->setBorderImage(Landroid/graphics/Bitmap;Landroid/graphics/NinePatch;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 821
    .local v11, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 822
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 824
    .local v24, name:Ljava/lang/String;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 826
    .local v13, canvas:Landroid/graphics/Canvas;
    if-eqz v17, :cond_7

    .line 827
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 828
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 831
    :cond_7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 832
    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v13, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 835
    :cond_8
    if-eqz v11, :cond_9

    .line 836
    invoke-virtual {v15, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 839
    :cond_9
    if-eqz v12, :cond_0

    .line 840
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVisibleSlideCount()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    return v0
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 578
    const-string v0, "SELECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v0, "RESTORE_SWIFE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    const-string v0, "RESTORE_FOLD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    goto :goto_0

    .line 586
    :cond_2
    const-string v0, "REMOVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeSlide(I)V

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    goto :goto_0
.end method

.method public onAnimationRepeat(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 595
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 599
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 626
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onConfigurationChanged(I)V

    .line 628
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->rearrangeSlide(Z)V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->rearrangeSlide(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 613
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeAllSubSlide()V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 621
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onPause()V

    .line 622
    return-void
.end method

.method public onResize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onResize(II)V

    .line 133
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 603
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    .line 605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->buildSubSlide()V

    .line 608
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onResume()V

    .line 609
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/high16 v8, 0x4080

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 147
    new-instance v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;

    invoke-direct {v3, v6, v6}, Lcom/sec/android/samsunganimation/basetype/SAVector2;-><init>(FF)V

    .line 148
    .local v3, pos:Lcom/sec/android/samsunganimation/basetype/SAVector2;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 152
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    .line 153
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    if-eq v6, v11, :cond_1

    .line 154
    iput-boolean v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 257
    :cond_0
    :goto_0
    return v9

    .line 158
    :cond_1
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 159
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 161
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v7, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setTouchDownPos(FF)V

    .line 162
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->requestRender()V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 164
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    if-nez v6, :cond_0

    .line 168
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    .line 169
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    .line 171
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 172
    .local v1, dx:F
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 174
    .local v2, dy:F
    cmpg-float v6, v1, v8

    if-gez v6, :cond_4

    .line 175
    const/4 v1, 0x0

    .line 177
    :cond_4
    cmpg-float v6, v2, v8

    if-gez v6, :cond_5

    .line 178
    const/4 v2, 0x0

    .line 180
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getScrollMode()I

    move-result v4

    .line 181
    .local v4, scrollMode:I
    if-nez v4, :cond_7

    .line 182
    cmpg-float v6, v2, v1

    if-gez v6, :cond_a

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 184
    const/4 v4, 0x2

    .line 195
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 198
    :cond_7
    const/4 v5, 0x0

    .line 199
    .local v5, velocity:F
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 200
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    sub-float v5, v6, v7

    .line 201
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 202
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 209
    :goto_3
    if-eq v4, v9, :cond_8

    const/4 v6, 0x3

    if-ne v4, v6, :cond_d

    .line 210
    :cond_8
    const/high16 v6, 0x4000

    div-float v6, v5, v6

    invoke-direct {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->scrollSlides(F)V

    goto :goto_1

    .line 186
    .end local v5           #velocity:F
    :cond_9
    const/4 v4, 0x1

    goto :goto_2

    .line 188
    :cond_a
    cmpl-float v6, v2, v1

    if-lez v6, :cond_6

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 190
    const/4 v4, 0x1

    goto :goto_2

    .line 192
    :cond_b
    const/4 v4, 0x2

    goto :goto_2

    .line 204
    .restart local v5       #velocity:F
    :cond_c
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    sub-float v5, v6, v7

    .line 205
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 206
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    goto :goto_3

    .line 211
    :cond_d
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 212
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->swipeSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto/16 :goto_1

    .line 215
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v4           #scrollMode:I
    .end local v5           #velocity:F
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 216
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v0

    .line 217
    .local v0, deletePressedIndex:I
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    if-eqz v6, :cond_f

    .line 218
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete pressed : index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 220
    if-eq v0, v11, :cond_0

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    if-ne v0, v6, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onDeleteButtonClick(I)V

    goto/16 :goto_0

    .line 227
    :cond_f
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 228
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 230
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getScrollMode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 254
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v7, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setTouchUpPos(FF)V

    goto/16 :goto_1

    .line 232
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->finishSwipe(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto :goto_4

    .line 235
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    if-ne v6, v9, :cond_10

    .line 236
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreScrollMode()V

    .line 237
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 238
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    goto/16 :goto_0

    .line 241
    :cond_10
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onSelectSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto :goto_4

    .line 246
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    goto :goto_4

    .line 249
    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreBoundAni()V

    .line 250
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 251
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollDirection(I)V

    goto :goto_4

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onWindowFocusChanged(Z)V

    .line 124
    if-eqz p1, :cond_0

    .line 128
    :cond_0
    return-void
.end method

.method protected removeAllSubSlide()V
    .locals 5

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 556
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v1, :cond_1

    .line 565
    :cond_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 559
    .local v3, subSlideCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 560
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 561
    .local v2, subSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 559
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActiveMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 708
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    .line 731
    return-void
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    .line 119
    :cond_0
    return-void
.end method

.method public startAni()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 331
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>()V

    .line 332
    .local v0, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setAnimationSetInterpolator(I)V

    .line 333
    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setDuration(I)V

    .line 334
    invoke-virtual {v0, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setRepeatCount(I)V

    .line 335
    invoke-virtual {v0, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setAutoReverse(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 337
    .local v2, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v4

    .line 338
    .local v4, slideCnt:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 339
    invoke-virtual {v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 340
    .local v3, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 342
    invoke-virtual {v3, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setHidden(Z)V

    .line 343
    invoke-virtual {v3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    return-void
.end method

.method public terminateSlide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 636
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 637
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeAllSubSlide()V

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 640
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 645
    :cond_0
    return-void
.end method

.method public updateThumbnailAndIconInBackground()V
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 736
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 737
    .local v0, thumbHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 749
    .end local v0           #thumbHandler:Landroid/os/Handler;
    :cond_0
    return-void
.end method
