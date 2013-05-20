.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;
.super Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
.source "SmartSwitcherVerticalSlideAnimator.java"

# interfaces
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherContants;
.implements Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;


# static fields
.field private static mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    invoke-direct {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    return-object v0
.end method

.method private initSwipeAni(F)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 139
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 141
    .local v1, displayWidth:I
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 142
    int-to-float v2, v1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    .line 144
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 145
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetY:F

    .line 146
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 147
    return-void
.end method

.method private resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 3
    .parameter "slide"

    .prologue
    .line 734
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-result-object v0

    .line 735
    .local v0, pivot:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 736
    return-void
.end method


# virtual methods
.method public getMaxPos(I)F
    .locals 10
    .parameter "index"

    .prologue
    const/high16 v9, 0x40a0

    const/high16 v8, 0x4040

    const/4 v7, 0x1

    .line 96
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v4

    .line 97
    .local v4, totalCnt:I
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 99
    .local v1, minPos:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 100
    .local v2, slideGap:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 101
    .local v3, slideHeight:F
    const/4 v0, 0x0

    .line 103
    .local v0, maxPos:F
    const/4 v5, 0x4

    if-ge p1, v5, :cond_0

    .line 104
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    int-to-float v6, p1

    mul-float/2addr v6, v2

    sub-float v0, v5, v6

    .line 109
    :goto_0
    if-eq p1, v7, :cond_1

    add-int/lit8 v5, v4, -0x1

    if-ne p1, v5, :cond_1

    .line 126
    .end local v1           #minPos:F
    :goto_1
    return v1

    .line 106
    .restart local v1       #minPos:F
    :cond_0
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    sub-float v0, v5, v6

    goto :goto_0

    .line 113
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 114
    if-ne p1, v7, :cond_4

    .line 115
    const v5, 0x3f4ccccd

    mul-float/2addr v5, v3

    sub-float v1, v0, v5

    goto :goto_1

    .line 116
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 117
    if-ne p1, v7, :cond_4

    .line 118
    mul-float v5, v0, v8

    div-float v1, v5, v9

    goto :goto_1

    .line 121
    :cond_3
    add-int/lit8 v5, v4, -0x2

    if-ne p1, v5, :cond_4

    .line 122
    mul-float v5, v0, v8

    div-float v1, v5, v9

    goto :goto_1

    :cond_4
    move v1, v0

    .line 126
    goto :goto_1
.end method

.method public getMinPos(I)F
    .locals 8
    .parameter "index"

    .prologue
    .line 70
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v5

    .line 71
    .local v5, totalCnt:I
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 72
    .local v0, maxPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 73
    .local v4, topPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 74
    .local v2, slideGap:F
    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    add-float v1, v4, v6

    .line 76
    .local v1, minPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 79
    .local v3, slideHeight:F
    add-int/lit8 v6, v5, -0x4

    add-int/lit8 v6, v6, -0x1

    if-le p1, v6, :cond_0

    .line 80
    sub-int v6, v5, p1

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float v1, v4, v6

    .line 83
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 84
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 85
    const v6, 0x3f4ccccd

    mul-float/2addr v6, v3

    sub-float v1, v0, v6

    .line 91
    .end local v1           #minPos:F
    :cond_1
    :goto_0
    return v1

    .line 87
    .restart local v1       #minPos:F
    :cond_2
    const/high16 v6, 0x4000

    mul-float/2addr v6, v0

    const/high16 v7, 0x40a0

    div-float v1, v6, v7

    goto :goto_0
.end method

.method public getScrollMode()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    return v0
.end method

.method public getSwipeOriginPos()F
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    return v0
.end method

.method public getZPos(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 130
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 6
    .parameter "context"
    .parameter "window"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideVisibleLength:F

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeMaxLength:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 49
    .local v1, footerHeight:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 50
    .local v3, slideTitleHeight:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 52
    .local v2, shadowBorder:F
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    sub-float/2addr v4, v3

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    .line 56
    return-void
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 11
    .parameter "tag"

    .prologue
    .line 740
    const-string v9, "SLIDE_FOLD"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 742
    .local v4, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v5

    .line 744
    .local v5, slideCnt:I
    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    add-int/lit8 v3, v9, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 745
    invoke-virtual {v4, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 746
    .local v0, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    int-to-float v9, v3

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    const/16 v10, 0x32

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 744
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v0           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v3           #i:I
    .end local v4           #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #slideCnt:I
    :cond_0
    const-string v9, "COVER_SLIDING"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 750
    .restart local v4       #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 752
    .local v1, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v7, v9, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 754
    .local v7, x:F
    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 755
    .local v8, y:F
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v6, v9, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 756
    .local v6, w:F
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v9, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 758
    .local v2, h:F
    invoke-virtual {v1, v7, v8, v6, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFF)V

    .line 762
    .end local v1           #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v2           #h:F
    .end local v4           #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v6           #w:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 768
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 774
    return-void
.end method

.method public removeSlideAni(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 645
    const/16 v3, 0x12c

    .line 646
    .local v3, duration:I
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 650
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 652
    .local v2, displayWidth:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 653
    .local v6, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v6, :cond_0

    .line 670
    :goto_0
    return-void

    .line 657
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 658
    .local v0, aniSet:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v9, 0x9

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-direct {v5, v9, v10, v11}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 659
    .local v5, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 661
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 662
    .local v4, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v7, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    neg-int v9, v2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 664
    .local v7, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v4, v7}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 666
    .local v8, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v8}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 667
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 668
    const-string v9, "REMOVE"

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v6, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    goto :goto_0
.end method

.method public restoreBoundAni()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 474
    .local v3, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v7

    .line 476
    .local v7, slideCnt:I
    const v4, 0x3e4ccccd

    .line 477
    .local v4, pivot:F
    const/16 v0, 0xc8

    .line 479
    .local v0, duration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 480
    invoke-virtual {v3, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 481
    .local v6, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_0

    .line 482
    const/high16 v4, 0x3f00

    .line 484
    :cond_0
    const/high16 v9, 0x3f00

    invoke-virtual {v6, v9, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 486
    new-instance v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    iget v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    invoke-direct {v1, v9, v11, v10}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 487
    .local v1, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v8, v11, v11, v11}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 489
    .local v8, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v9, 0x6

    invoke-direct {v5, v9}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 491
    .local v5, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 493
    invoke-virtual {v5, v11, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 494
    const/high16 v9, 0x3f80

    invoke-virtual {v5, v9, v8}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 495
    invoke-virtual {v6, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v1           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v5           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v6           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v8           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    :cond_1
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 499
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 500
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    .line 501
    return-void
.end method

.method public restoreScrollMode()V
    .locals 17

    .prologue
    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 674
    .local v12, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/16 v6, 0xc8

    .line 675
    .local v6, duration:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 679
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 681
    .local v8, displayWidth:I
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v14, v3

    .line 683
    .local v14, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v13, v3

    .line 684
    .local v13, reSizeHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v9, v3

    .line 685
    .local v9, frameBorder:I
    mul-int/lit8 v3, v9, 0x2

    add-int v16, v14, v3

    .line 686
    .local v16, width:I
    mul-int/lit8 v3, v9, 0x2

    add-int v10, v13, v3

    .line 687
    .local v10, height:I
    sub-int v3, v8, v16

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 689
    .local v2, slideX:F
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getVisibleSlideCount()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 690
    sget-object v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    .line 691
    .local v15, sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    invoke-virtual {v12, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 692
    .local v1, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    iget v3, v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    invoke-virtual {v1, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 693
    iget v3, v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 689
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 695
    .end local v1           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v15           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    :cond_0
    return-void
.end method

.method public restoreSwipeAni(I)V
    .locals 14
    .parameter "slideIdx"

    .prologue
    const/high16 v13, 0x3f80

    const/high16 v12, 0x3f00

    const/4 v11, 0x0

    .line 323
    const/16 v3, 0xc8

    .line 324
    .local v3, duration:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 325
    .local v6, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v6, :cond_0

    .line 351
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 330
    .local v0, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v9, 0x9

    iget v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    invoke-direct {v5, v9, v10, v13}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 332
    .local v5, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 334
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 338
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 340
    .local v2, displayWidth:I
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 341
    .local v4, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v7, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    int-to-float v9, v2

    mul-float/2addr v9, v12

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 342
    .local v7, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v4, v7}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 344
    .local v8, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v8}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 345
    const-string v9, "RESTORE_SWIFE"

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 346
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 347
    invoke-virtual {v6, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 348
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 349
    iput v13, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    .line 350
    int-to-float v9, v2

    mul-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    goto :goto_0
.end method

.method protected scrollSlides(F)V
    .locals 24
    .parameter "scroll"

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v7

    .line 178
    .local v7, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getVisibleSlideCount()I

    move-result v19

    .line 179
    .local v19, slideCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 180
    .local v5, displayMatrix:Landroid/util/DisplayMetrics;
    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    .local v8, maxHeight:I
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsScrolling:Z

    .line 182
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 184
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    .line 185
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v6, v0, :cond_8

    .line 186
    invoke-virtual {v7, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v18

    .line 187
    .local v18, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    sget-object v21, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    .line 188
    .local v20, sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMaxPos(I)F

    move-result v9

    .line 189
    .local v9, maxPos:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v10

    .line 191
    .local v10, minPos:F
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v17

    .line 192
    .local v17, region:Lcom/sec/android/samsunganimation/basetype/SARect;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v21, v0

    add-float v11, v21, p1

    .line 193
    .local v11, mySlideY:F
    add-float v14, v11, p1

    .line 195
    .local v14, nextY:F
    cmpl-float v21, v14, v9

    if-lez v21, :cond_3

    .line 196
    move v14, v9

    .line 230
    :cond_0
    :goto_1
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    move/from16 v21, v0

    cmpl-float v21, v21, v14

    if-eqz v21, :cond_1

    .line 231
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    .line 233
    :cond_1
    move-object/from16 v0, v20

    iput v14, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 260
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFF)V

    .line 185
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 197
    :cond_3
    cmpg-float v21, v14, v10

    if-gtz v21, :cond_4

    .line 198
    move v14, v10

    goto :goto_1

    .line 200
    :cond_4
    const/16 v21, 0x0

    cmpl-float v21, p1, v21

    if-lez v21, :cond_6

    .line 201
    const v16, 0x461c4000

    .line 202
    .local v16, prevSlideY:F
    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v15

    .line 203
    .local v15, prevSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v16, v0

    .line 204
    sub-float v4, v16, v11

    .line 206
    .local v4, disBtwSlides:F
    cmpg-float v21, v16, v9

    if-gez v21, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v21, v0

    cmpg-float v21, v4, v21

    if-gtz v21, :cond_5

    .line 208
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    goto/16 :goto_1

    .line 209
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v21, v0

    cmpl-float v21, v4, v21

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v21, v0

    cmpg-float v21, v4, v21

    if-gez v21, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v21, v0

    div-float v21, v4, v21

    mul-float v21, v21, p1

    add-float v14, v11, v21

    goto/16 :goto_1

    .line 213
    .end local v4           #disBtwSlides:F
    .end local v15           #prevSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v16           #prevSlideY:F
    :cond_6
    const/16 v21, 0x0

    cmpg-float v21, p1, v21

    if-gez v21, :cond_0

    add-int/lit8 v21, v19, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_0

    .line 214
    const v13, 0x461c4000

    .line 215
    .local v13, nextSlideY:F
    add-int/lit8 v21, v6, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 216
    .local v12, nextSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 217
    sub-float v4, v11, v13

    .line 219
    .restart local v4       #disBtwSlides:F
    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v21

    cmpl-float v21, v13, v21

    if-lez v21, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v21, v0

    cmpg-float v21, v4, v21

    if-gtz v21, :cond_7

    .line 221
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    goto/16 :goto_1

    .line 222
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v21, v0

    cmpl-float v21, v4, v21

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v21, v0

    cmpg-float v21, v4, v21

    if-gez v21, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v21, v0

    div-float v21, v4, v21

    mul-float v21, v21, p1

    add-float v14, v11, v21

    goto/16 :goto_1

    .line 262
    .end local v4           #disBtwSlides:F
    .end local v9           #maxPos:F
    .end local v10           #minPos:F
    .end local v11           #mySlideY:F
    .end local v12           #nextSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v13           #nextSlideY:F
    .end local v14           #nextY:F
    .end local v17           #region:Lcom/sec/android/samsunganimation/basetype/SARect;
    .end local v18           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v20           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    :cond_8
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 273
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    .line 274
    return-void
.end method

.method public setScrollMode(I)V
    .locals 0
    .parameter "scrollMode"

    .prologue
    .line 269
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 270
    return-void
.end method

.method public setTouchDownPos(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->initSwipeAni(F)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 62
    return-void
.end method

.method public setTouchUpPos(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 65
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 66
    const/high16 v0, -0x3b86

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mPrevNextY:F

    .line 67
    return-void
.end method

.method public slideReArrangeAni(I)V
    .locals 13
    .parameter "removeIdx"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v12

    .line 699
    .local v12, totalCount:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    .line 700
    .local v9, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v9, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v10

    .line 702
    .local v10, removeSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    add-int/lit8 v11, p1, 0x2

    .line 703
    .local v11, topIndex:I
    add-int/lit8 v1, v12, -0x1

    if-le v11, v1, :cond_0

    .line 704
    add-int/lit8 v11, v12, -0x1

    .line 707
    :cond_0
    add-int/lit8 v6, v11, -0x3

    .line 708
    .local v6, bottomIndex:I
    const/4 v1, 0x1

    if-ge v6, v1, :cond_1

    .line 709
    const/4 v6, 0x1

    .line 712
    :cond_1
    const/4 v8, 0x1

    .line 713
    .local v8, index:I
    const-string v1, "FlashBoard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  topIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move v7, v6

    .local v7, i:I
    :goto_0
    if-gt v7, v11, :cond_3

    .line 716
    invoke-virtual {v9, v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 717
    .local v0, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v2, 0x0

    .line 718
    .local v2, y:F
    if-ne v7, v11, :cond_2

    .line 719
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v2

    .line 724
    :goto_1
    const-string v1, "FlashBoard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v4

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 728
    add-int/lit8 v8, v8, 0x1

    .line 715
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p0, v8, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInitPos(II)F

    move-result v2

    goto :goto_1

    .line 731
    .end local v0           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v2           #y:F
    :cond_3
    return-void
.end method

.method public slideSelectAni1(ILandroid/graphics/Bitmap;)V
    .locals 31
    .parameter "slideIdx"
    .parameter "slideImage"

    .prologue
    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v26

    .line 507
    .local v26, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 508
    .local v20, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 512
    .local v14, display:Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 514
    .local v16, displayWidth:I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 516
    .local v15, displayHeight:I
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f00

    mul-float v27, v4, v5

    .line 517
    .local v27, slideX:F
    const/16 v17, 0x64

    .line 518
    .local v17, duration:I
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 519
    .local v25, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 521
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v15, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 524
    .local v24, resized:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 527
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    .local v12, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 531
    .local v23, pnt:Landroid/graphics/Paint;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 534
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v13

    .line 535
    .local v13, currentY:F
    new-instance v9, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v0, v4, v5, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 537
    .local v9, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v21, Lcom/sec/android/samsunganimation/basetype/SARect;

    const/4 v4, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v13, v5, v6}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    .line 538
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

    .line 540
    .local v22, moveto:Lcom/sec/android/samsunganimation/basetype/SARect;
    new-instance v30, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SARect;Lcom/sec/android/samsunganimation/basetype/SARect;)V

    .line 543
    .local v30, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 544
    const-string v4, "SELECT"

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 547
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 548
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 550
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 551
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 552
    .local v3, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 553
    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 554
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v7

    const/16 v8, 0xc8

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 550
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 557
    .end local v3           #upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    add-int/lit8 v19, p1, 0x1

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 558
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v11

    .line 559
    .local v11, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 560
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v4

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 561
    .local v18, fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v28, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    int-to-float v4, v15

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 562
    .local v28, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 563
    .local v10, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v29, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 565
    .local v29, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 566
    invoke-virtual {v11, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 557
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 568
    .end local v10           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v11           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v28           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v29           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 571
    return-void
.end method

.method public slideSelectAni2(I)V
    .locals 30
    .parameter "slideIdx"

    .prologue
    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v21

    .line 575
    .local v21, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v16

    .line 576
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

    .line 580
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 582
    .local v12, displayWidth:I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 584
    .local v11, displayHeight:I
    const/16 v13, 0xc8

    .line 585
    .local v13, duration:I
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 587
    .local v20, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 588
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v8

    .line 589
    .local v8, currentX:F
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v9

    .line 590
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

    .line 591
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

    .line 594
    .local v7, bottomSlidesY:F
    new-instance v4, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 596
    .local v4, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v17, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 597
    .local v17, movefrom:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 599
    .local v18, moveto:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v24, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 602
    .local v24, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 603
    const-string v26, "SELECT"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 606
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 608
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v15, v0, :cond_0

    .line 609
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 610
    .local v25, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 612
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 613
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

    .line 614
    .local v22, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v5, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 615
    .local v5, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 617
    .local v23, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 618
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 608
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 621
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

    .line 622
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 624
    .local v6, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 625
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 626
    .restart local v14       #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 627
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

    .line 628
    .restart local v5       #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 630
    .restart local v23       #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 631
    const-string v26, "SLIDE_FOLD"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 635
    invoke-virtual {v6, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 621
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 637
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

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 639
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 641
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 642
    return-void
.end method

.method public startBoundAni(F)V
    .locals 21
    .parameter "scroll"

    .prologue
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v7

    .line 392
    .local v7, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v15

    .line 393
    .local v15, slideCnt:I
    const/4 v10, 0x0

    .line 394
    .local v10, offsetX:F
    const/4 v11, 0x0

    .line 395
    .local v11, offsetZ:F
    const v12, 0x3e4ccccd

    .line 396
    .local v12, pivot:F
    const/16 v17, 0x0

    .line 397
    .local v17, weight:F
    const/16 v3, 0xc8

    .line 398
    .local v3, duration:I
    const/4 v8, 0x0

    .line 399
    .local v8, nextOffsetX:F
    const/4 v9, 0x0

    .line 400
    .local v9, nextOffsetZ:F
    const/4 v6, 0x0

    .line 402
    .local v6, length:F
    const-string v18, "FlashBoard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "scroll="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x40a0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    const/high16 v6, 0x40a0

    .line 405
    :goto_0
    const/high16 v18, 0x4040

    div-float v17, v6, v18

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 408
    const v12, 0x3e4ccccd

    .line 409
    const/16 v18, 0x0

    cmpl-float v18, p1, v18

    if-lez v18, :cond_1

    .line 410
    const/high16 v18, 0x40a0

    mul-float v10, v18, v17

    .line 411
    const v11, -0x42333333

    .line 416
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 417
    const/4 v8, 0x0

    .line 418
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 419
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 420
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    .line 450
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v15, :cond_8

    .line 451
    invoke-virtual {v7, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v14

    .line 452
    .local v14, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/high16 v18, 0x3f00

    move/from16 v0, v18

    invoke-virtual {v14, v0, v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 454
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 455
    .local v4, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v16, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v9}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 457
    .local v16, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v13, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 459
    .local v13, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v13, v3}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 461
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v4}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 462
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 464
    invoke-virtual {v14, v13}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 404
    .end local v4           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v5           #i:I
    .end local v13           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v14           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v16           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto/16 :goto_0

    .line 413
    :cond_1
    const/high16 v18, -0x3f60

    mul-float v10, v18, v17

    goto/16 :goto_1

    .line 421
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/high16 v19, 0x4150

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v8, v18, v10

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v18, v0

    add-float v9, v18, v11

    goto :goto_2

    .line 425
    :cond_3
    const/high16 v8, 0x4150

    .line 426
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    goto/16 :goto_2

    .line 429
    :cond_4
    const/high16 v12, 0x3f00

    .line 431
    const/16 v18, 0x0

    cmpl-float v18, p1, v18

    if-lez v18, :cond_5

    .line 432
    const/high16 v18, 0x4040

    mul-float v10, v18, v17

    .line 437
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/high16 v19, -0x3f40

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    .line 438
    const/high16 v8, -0x3f40

    .line 439
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    goto/16 :goto_2

    .line 434
    :cond_5
    const/high16 v18, -0x3fc0

    mul-float v10, v18, v17

    goto :goto_4

    .line 440
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v8, v18, v10

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v18, v0

    add-float v9, v18, v11

    goto/16 :goto_2

    .line 444
    :cond_7
    const/4 v8, 0x0

    .line 445
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 446
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 447
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    goto/16 :goto_2

    .line 467
    .restart local v5       #i:I
    :cond_8
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 468
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 470
    return-void
.end method

.method public startBoundAni(IF)V
    .locals 16
    .parameter "scrollAction"
    .parameter "velocity"

    .prologue
    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 356
    .local v4, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v10

    .line 357
    .local v10, slideCnt:I
    const/4 v5, 0x0

    .line 358
    .local v5, offsetX:F
    const/4 v6, 0x0

    .line 359
    .local v6, offsetZ:F
    const v7, 0x3e4ccccd

    .line 360
    .local v7, pivot:F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42c8

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    const/high16 v12, 0x3f80

    .line 361
    .local v12, weight:F
    :goto_0
    const/16 v1, 0xc8

    .line 363
    .local v1, duration:I
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 364
    const/high16 v13, 0x40a0

    mul-float v5, v13, v12

    .line 365
    const v6, -0x42333333

    .line 371
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_2

    .line 372
    invoke-virtual {v4, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    .line 373
    .local v9, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/high16 v13, 0x3f00

    invoke-virtual {v9, v13, v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 375
    new-instance v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v2, v13, v14, v15}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 376
    .local v2, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v11, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/4 v13, 0x0

    invoke-direct {v11, v5, v13, v6}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 378
    .local v11, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v13, 0x6

    invoke-direct {v8, v13}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 380
    .local v8, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v8, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 382
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v2}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 383
    const/high16 v13, 0x3f00

    invoke-virtual {v8, v13, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 384
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13, v2}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 386
    invoke-virtual {v9, v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    .end local v1           #duration:I
    .end local v2           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v3           #i:I
    .end local v8           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v9           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v11           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v12           #weight:F
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3ca3d70a

    mul-float v12, v13, v14

    goto :goto_0

    .line 367
    .restart local v1       #duration:I
    .restart local v12       #weight:F
    :cond_1
    const/high16 v7, 0x3f00

    .line 368
    const/high16 v13, -0x3fc0

    mul-float v5, v13, v12

    goto :goto_1

    .line 388
    .restart local v3       #i:I
    :cond_2
    return-void
.end method

.method protected startCoverAni()V
    .locals 13

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v7

    .line 151
    .local v7, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 152
    .local v2, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/16 v5, 0xfa

    .line 153
    .local v5, duration:I
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 155
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 157
    .local v4, displayHeight:I
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 158
    .local v6, finalY:F
    const v11, 0x3f866666

    mul-float v1, v6, v11

    .line 160
    .local v1, boundY:F
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v12

    invoke-direct {v8, v11, v12}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 161
    .local v8, movefrom:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-direct {v0, v11, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 162
    .local v0, bound:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v9, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-direct {v9, v11, v6}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 164
    .local v9, moveto:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 166
    .local v10, transAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v10, v5}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 168
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 169
    const v11, 0x3f666666

    invoke-virtual {v10, v11, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 170
    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 171
    invoke-virtual {v10, p0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 172
    const-string v11, "COVER_SLIDING"

    invoke-virtual {v10, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setTag(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 174
    return-void
.end method

.method public startSwipeAni(IF)V
    .locals 20
    .parameter "slideIdx"
    .parameter "x"

    .prologue
    .line 277
    const/4 v7, 0x1

    .line 278
    .local v7, duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 282
    .local v4, display:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 284
    .local v5, displayWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 285
    .local v12, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v12, :cond_0

    .line 316
    :goto_0
    return-void

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    move/from16 v17, v0

    sub-float v6, v17, p2

    .line 289
    .local v6, dist:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeMaxLength:F

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 290
    .local v11, ratio:F
    const/high16 v17, 0x3f80

    cmpl-float v17, v11, v17

    if-lez v17, :cond_2

    const/high16 v14, 0x3f80

    .line 291
    .local v14, strenth:F
    :goto_1
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    sub-float v13, v17, v6

    .line 293
    .local v13, slidePos:F
    const/high16 v17, 0x3f80

    sub-float v9, v17, v14

    .line 294
    .local v9, opacity:F
    const/16 v17, 0x0

    cmpg-float v17, v9, v17

    if-gez v17, :cond_3

    .line 295
    const/4 v9, 0x0

    .line 300
    :cond_1
    :goto_2
    new-instance v3, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v7, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 301
    .local v3, aniSetFrom:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v17, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1, v9}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 303
    .local v10, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v3, v10}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 305
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    move/from16 v17, v0

    invoke-virtual {v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 306
    .local v8, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v15, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v13, v0}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 308
    .local v15, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v16, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v8, v15}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 310
    .local v16, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 312
    invoke-virtual {v12, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 314
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    .line 315
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    goto/16 :goto_0

    .end local v3           #aniSetFrom:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v8           #fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v9           #opacity:F
    .end local v10           #opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    .end local v13           #slidePos:F
    .end local v14           #strenth:F
    .end local v15           #toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v16           #transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_2
    move v14, v11

    .line 290
    goto :goto_1

    .line 296
    .restart local v9       #opacity:F
    .restart local v13       #slidePos:F
    .restart local v14       #strenth:F
    :cond_3
    const/high16 v17, 0x3f80

    cmpl-float v17, v9, v17

    if-lez v17, :cond_1

    .line 297
    const/high16 v9, 0x3f80

    goto :goto_2
.end method
