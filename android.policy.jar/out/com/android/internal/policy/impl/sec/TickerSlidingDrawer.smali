.class public Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "TickerSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mClosing:Z

.field private mContent:Landroid/view/View;

.field private final mContentFrame:Landroid/graphics/Rect;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mDefaultBottomOffset:I

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mLogoButton:Landroid/widget/ImageView;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private final mTapThreshold:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 127
    new-instance v5, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 148
    const-string v5, "Ticker"

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    .line 210
    sget-object v5, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 213
    .local v4, orientation:I
    if-ne v4, v6, :cond_68

    move v5, v6

    :goto_36
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 214
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    .line 215
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 216
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAllowSingleTap:Z

    .line 217
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimateOnClick:Z

    .line 219
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mDefaultBottomOffset:I

    .line 221
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 222
    .local v3, handleId:I
    if-nez v3, :cond_6a

    .line 223
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_68
    move v5, v7

    .line 213
    goto :goto_36

    .line 227
    .restart local v3       #handleId:I
    :cond_6a
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 228
    .local v1, contentId:I
    if-nez v1, :cond_79

    .line 229
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 233
    :cond_79
    if-ne v3, v1, :cond_83

    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_83
    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleId:I

    .line 239
    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentId:I

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 242
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    .line 243
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumTapVelocity:I

    .line 244
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    .line 245
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    .line 246
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    .line 247
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityUnits:I

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 252
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 531
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    .line 532
    return-void
.end method

.method private animateOpen(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 536
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    .line 537
    return-void
.end method

.method private closeDrawer()V
    .registers 3

    .prologue
    .line 867
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_e

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 871
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 874
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1f

    .line 882
    :cond_1e
    :goto_1e
    return-void

    .line 878
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1e

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_1e
.end method

.method private doAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 728
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_21

    .line 729
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->incrementAnimation()V

    .line 730
    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_27

    .line 731
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 732
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    .line 743
    :cond_21
    :goto_21
    return-void

    .line 730
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_14

    .line 733
    :cond_27
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    .line 734
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    goto :goto_21

    .line 737
    :cond_36
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 738
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_21
.end method

.method private incrementAnimation()V
    .registers 9

    .prologue
    .line 746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 747
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 748
    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 749
    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 750
    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 751
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 752
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 753
    iput-wide v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 754
    return-void
.end method

.method private moveHandle(I)V
    .registers 14
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 614
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 616
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_9c

    .line 617
    if-ne p1, v9, :cond_1b

    .line 618
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 677
    :goto_1a
    return-void

    .line 620
    :cond_1b
    if-ne p1, v8, :cond_38

    .line 621
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto :goto_1a

    .line 625
    :cond_38
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 626
    .local v6, top:I
    sub-int v1, p1, v6

    .line 627
    .local v1, deltaY:I
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_78

    .line 628
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 632
    :cond_46
    :goto_46
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 634
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 635
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 637
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 638
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 640
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 641
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 644
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1a

    .line 629
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_78
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_46

    .line 630
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_46

    .line 647
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_9c
    if-ne p1, v9, :cond_ad

    .line 648
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_1a

    .line 650
    :cond_ad
    if-ne p1, v8, :cond_cb

    .line 651
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_1a

    .line 655
    :cond_cb
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 656
    .local v4, left:I
    sub-int v0, p1, v4

    .line 657
    .local v0, deltaX:I
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_10c

    .line 658
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 662
    :cond_d9
    :goto_d9
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 664
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 665
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 667
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 668
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 670
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 671
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 674
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1a

    .line 659
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_10c
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_d9

    .line 660
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_d9
.end method

.method private openDrawer()V
    .registers 3

    .prologue
    .line 885
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_e

    .line 887
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 889
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_19

    .line 900
    :cond_18
    :goto_18
    return-void

    .line 895
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_18

    .line 898
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_18
.end method

.method private performFling(IFZ)V
    .registers 10
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 540
    int-to-float v2, p1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 541
    iput p2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 543
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_67

    .line 544
    if-nez p3, :cond_28

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_28

    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_57

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    :goto_1d
    add-int/2addr v2, v3

    if-le p1, v2, :cond_5a

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5a

    .line 549
    :cond_28
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 550
    cmpg-float v2, p2, v4

    if-gez v2, :cond_33

    .line 551
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 579
    :cond_33
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 580
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 581
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 582
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->stopTracking()V

    .line 586
    return-void

    .line 544
    .end local v0           #now:J
    :cond_57
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_1d

    .line 555
    :cond_5a
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 556
    cmpl-float v2, p2, v4

    if-lez v2, :cond_33

    .line 557
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_33

    .line 561
    :cond_67
    if-nez p3, :cond_95

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_84

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_90

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v2

    :goto_78
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_95

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_95

    .line 565
    :cond_84
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 566
    cmpg-float v2, p2, v4

    if-gez v2, :cond_33

    .line 567
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_33

    .line 561
    :cond_90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_78

    .line 572
    :cond_95
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 573
    cmpl-float v2, p2, v4

    if-lez v2, :cond_33

    .line 574
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_33
.end method

.method private prepareContent()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 680
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_8

    .line 711
    :goto_7
    return-void

    .line 686
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 687
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 688
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_5a

    .line 689
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    .line 690
    .local v0, childHeight:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 691
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 693
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 707
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_4a
    :goto_4a
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 708
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 710
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 696
    :cond_5a
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 697
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 698
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 700
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_4a
.end method

.method private prepareTracking(I)V
    .registers 10
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 589
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 590
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 591
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_49

    move v2, v4

    .line 592
    .local v2, opening:Z
    :goto_11
    if-eqz v2, :cond_53

    .line 593
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 594
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 595
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_2a
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 597
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 598
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 599
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 601
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 602
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 603
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 611
    .end local v0           #now:J
    :goto_48
    return-void

    .end local v2           #opening:Z
    :cond_49
    move v2, v3

    .line 591
    goto :goto_11

    .line 595
    .restart local v2       #opening:Z
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_2a

    .line 605
    :cond_53
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_5e

    .line 606
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 607
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_48
.end method

.method private stopTracking()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 715
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_11

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 721
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 725
    :cond_1d
    return-void
.end method


# virtual methods
.method public animateClose()V
    .registers 3

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 831
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 832
    .local v0, scrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 833
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 835
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_14
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose(I)V

    .line 837
    if-eqz v0, :cond_1c

    .line 838
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 840
    :cond_1c
    return-void

    .line 835
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_14
.end method

.method public animateOpen()V
    .registers 3

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 854
    .local v0, scrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 855
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 857
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_14
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen(I)V

    .line 859
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 861
    if-eqz v0, :cond_21

    .line 862
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 864
    :cond_21
    return-void

    .line 857
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_14
.end method

.method public animateToggle()V
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_8

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen()V

    .line 790
    :goto_7
    return-void

    .line 788
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    goto :goto_7
.end method

.method public close()V
    .registers 1

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 818
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 307
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 308
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 310
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 312
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_56

    .line 313
    :cond_15
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 315
    if-eqz v4, :cond_28

    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 330
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_27
    :goto_27
    return-void

    .line 318
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_28
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_27

    .line 321
    :cond_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    if-eqz v4, :cond_4d

    move v6, v5

    :goto_37
    if-eqz v4, :cond_41

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_41
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_27

    .line 322
    :cond_4d
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_37

    .line 327
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_56
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_27

    .line 328
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_27
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultBottomOffset()I
    .registers 2

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mDefaultBottomOffset:I

    return v0
.end method

.method public getHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getMinTickerHeights()I
    .registers 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Math.abs(mBottomOffset)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isMoving()Z
    .registers 2

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    .line 968
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 256
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_14

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_33

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const v0, 0x1020314

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    .line 273
    const v0, 0x102030f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    .line 274
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    .line 373
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    if-eqz v12, :cond_6

    .line 374
    const/4 v12, 0x0

    .line 443
    :goto_5
    return v12

    .line 377
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 379
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 380
    .local v10, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 382
    .local v11, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 384
    .local v7, rawX:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 385
    .local v4, handleFrame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 387
    .local v2, contentFrame:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 388
    .local v3, handle:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 390
    .local v1, content:Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 391
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_3f

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_3f

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_3f

    .line 394
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mClosing:Z

    .line 395
    const/4 v12, 0x1

    goto :goto_5

    .line 397
    :cond_3f
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mClosing:Z

    .line 400
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 401
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v12, :cond_53

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_53

    .line 402
    const/4 v12, 0x0

    goto :goto_5

    .line 406
    :cond_53
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 407
    .local v8, refreshFrame:Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_6d

    float-to-int v12, v7

    float-to-int v13, v11

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_6d

    .line 409
    const/4 v12, 0x0

    goto :goto_5

    .line 413
    :cond_6d
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 414
    .local v6, logoFrame:Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_88

    float-to-int v12, v7

    float-to-int v13, v11

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 416
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 419
    :cond_88
    if-nez v0, :cond_b3

    .line 420
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 422
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/view/View;->setPressed(Z)V

    .line 424
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 427
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v12, :cond_9d

    .line 428
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 431
    :cond_9d
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v12, :cond_b6

    .line 432
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v9

    .line 433
    .local v9, top:I
    float-to-int v12, v11

    sub-int/2addr v12, v9

    iput v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    .line 434
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 440
    .end local v9           #top:I
    :goto_ae
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 443
    :cond_b3
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 436
    :cond_b6
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 437
    .local v5, left:I
    float-to-int v12, v10

    sub-int/2addr v12, v5

    iput v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    .line 438
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    goto :goto_ae
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 334
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_5

    .line 369
    :goto_4
    return-void

    .line 338
    :cond_5
    sub-int v7, p4, p2

    .line 339
    .local v7, width:I
    sub-int v6, p5, p3

    .line 341
    .local v6, height:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 343
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 344
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 349
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 351
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_51

    .line 352
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 353
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_4a

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 355
    .local v2, childTop:I
    :goto_23
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 366
    :goto_36
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 367
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_4

    .line 353
    .end local v2           #childTop:I
    :cond_4a
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_23

    .line 358
    .end local v1           #childLeft:I
    :cond_51
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_6f

    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 359
    .restart local v1       #childLeft:I
    :goto_57
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 361
    .restart local v2       #childTop:I
    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_36

    .line 358
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_6f
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_57
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 279
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 281
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 282
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 284
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_16

    if-nez v2, :cond_1e

    .line 285
    :cond_16
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 289
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 291
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_42

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 293
    .local v1, height:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 301
    .end local v1           #height:I
    :goto_3e
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setMeasuredDimension(II)V

    .line 302
    return-void

    .line 296
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 297
    .local v4, width:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_3e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    .line 448
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_6

    .line 449
    const/4 v9, 0x1

    .line 526
    :goto_5
    return v9

    .line 452
    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_16

    .line 453
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 455
    .local v0, action:I
    packed-switch v0, :pswitch_data_128

    .line 526
    .end local v0           #action:I
    :cond_16
    :goto_16
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_24

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_24

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_124

    :cond_24
    const/4 v9, 0x1

    goto :goto_5

    .line 457
    .restart local v0       #action:I
    :pswitch_26
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2e
    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_16

    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2e

    .line 461
    :pswitch_3b
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 462
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 464
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 465
    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 468
    .local v7, xVelocity:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 469
    .local v6, vertical:Z
    if-eqz v6, :cond_bf

    .line 470
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_bd

    const/4 v2, 0x1

    .line 471
    .local v2, negative:Z
    :goto_54
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_5a

    .line 472
    neg-float v7, v7

    .line 474
    :cond_5a
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_64

    .line 475
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 487
    :cond_64
    :goto_64
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 488
    .local v4, velocity:F
    if-eqz v2, :cond_6e

    .line 489
    neg-float v4, v4

    .line 492
    :cond_6e
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 493
    .local v3, top:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 495
    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11a

    .line 496
    if-eqz v6, :cond_d8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_92

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_aa

    :cond_92
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_fb

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_fb

    .line 503
    :cond_aa
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_10e

    .line 504
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->playSoundEffect(I)V

    .line 506
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_105

    .line 507
    if-eqz v6, :cond_103

    .end local v3           #top:I
    :goto_b8
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose(I)V

    goto/16 :goto_16

    .line 470
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_bd
    const/4 v2, 0x0

    goto :goto_54

    .line 478
    :cond_bf
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_d6

    const/4 v2, 0x1

    .line 479
    .restart local v2       #negative:Z
    :goto_c5
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_cb

    .line 480
    neg-float v8, v8

    .line 482
    :cond_cb
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_64

    .line 483
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_64

    .line 478
    .end local v2           #negative:Z
    :cond_d6
    const/4 v2, 0x0

    goto :goto_c5

    .line 496
    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d8
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e3

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_aa

    :cond_e3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_fb

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_aa

    .line 516
    :cond_fb
    if-eqz v6, :cond_118

    .end local v3           #top:I
    :goto_fd
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3       #top:I
    :cond_103
    move v3, v1

    .line 507
    goto :goto_b8

    .line 509
    :cond_105
    if-eqz v6, :cond_10c

    .end local v3           #top:I
    :goto_107
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_16

    .restart local v3       #top:I
    :cond_10c
    move v3, v1

    goto :goto_107

    .line 512
    :cond_10e
    if-eqz v6, :cond_116

    .end local v3           #top:I
    :goto_110
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3       #top:I
    :cond_116
    move v3, v1

    goto :goto_110

    :cond_118
    move v3, v1

    .line 516
    goto :goto_fd

    .line 519
    :cond_11a
    if-eqz v6, :cond_122

    .end local v3           #top:I
    :goto_11c
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3       #top:I
    :cond_122
    move v3, v1

    goto :goto_11c

    .line 526
    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_124
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 455
    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_26
        :pswitch_3b
    .end packed-switch
.end method

.method public open()V
    .registers 2

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 804
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 805
    return-void
.end method

.method public setBottomOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 1020
    iput p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    .line 1021
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;)V
    .registers 2
    .parameter "onDrawerCloseListener"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    .line 918
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;)V
    .registers 2
    .parameter "onDrawerOpenListener"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    .line 909
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;)V
    .registers 2
    .parameter "onDrawerScrollListener"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 930
    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 1017
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_e

    .line 767
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    .line 771
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 773
    return-void

    .line 769
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    goto :goto_7
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    .line 959
    return-void
.end method
