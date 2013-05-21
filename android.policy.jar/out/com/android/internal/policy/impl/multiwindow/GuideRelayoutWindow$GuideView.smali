.class Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
.super Landroid/view/View;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;,
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final DIR_BOTTOM:I = 0x2

.field private static final DIR_LEFT:I = 0x0

.field private static final DIR_MAX:I = 0x3

.field private static final DIR_RIGHT:I = 0x1

.field static final GESTURE_MAX:I = 0x7

.field static final GESTURE_MOVE:I = 0x1

.field static final GESTURE_NONE:I = 0x0

.field static final GESTURE_RESIZE_BOTTOM:I = 0x6

.field static final GESTURE_RESIZE_LEFT:I = 0x2

.field static final GESTURE_RESIZE_LEFTBOTTOM:I = 0x4

.field static final GESTURE_RESIZE_RIGHT:I = 0x3

.field static final GESTURE_RESIZE_RIGHTBOTTOM:I = 0x5


# instance fields
.field private final AUTO_CLOSE_MILLISEC:I

.field final FADEOUT_DELAY:I

.field final TAG:Ljava/lang/String;

.field private mAutoDismissHandler:Landroid/os/Handler;

.field private mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

.field private mCurrentOrientation:I

.field private mCurrentSide:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mFadeoutAlpha:I

.field private mFadeoutHandler:Landroid/os/Handler;

.field private mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

.field private mFlagAutoClose:Z

.field private mFlagDimming:Z

.field private mFlagDrawResizeDecor:Z

.field private mFlagDrawingRedBorder:Z

.field private mGestureMode:I

.field private mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

.field private mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private mPnt:Landroid/graphics/Paint;

.field private mPosX:I

.field private mPosY:I

.field private mResizeArrowRect:[Landroid/graphics/Rect;

.field private mResizePtrBmp:Landroid/graphics/Bitmap;

.field private mResizeSymbolRect:[Landroid/graphics/Rect;

.field private mRightArrowPtrBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "owner"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 346
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v1, "GuideView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->TAG:Ljava/lang/String;

    .line 302
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 303
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 304
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 306
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    .line 307
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    .line 309
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 310
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 311
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->FADEOUT_DELAY:I

    .line 313
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 317
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 326
    new-array v1, v6, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    .line 327
    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    .line 328
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 329
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 330
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 333
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDimming:Z

    .line 334
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 335
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 336
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    .line 339
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 340
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 341
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 342
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->AUTO_CLOSE_MILLISEC:I

    .line 347
    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 349
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    if-eqz v1, :cond_6e

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/high16 v2, 0x4234

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    :cond_6e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6f
    if-ge v0, v6, :cond_7d

    .line 359
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 361
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    if-ge v0, v5, :cond_8c

    .line 362
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 364
    :cond_8c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 367
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 368
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 371
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return p1
.end method

.method static synthetic access$1820(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v0

    return v0
.end method

.method private calculateDockSide(II)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 783
    const/16 v0, 0x64

    .line 784
    .local v0, MARGIN:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v6, v6, -0x401

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurrentLaunchMode:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1502(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 786
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 789
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_69

    .line 790
    move v2, p1

    .line 791
    .local v2, half:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 798
    .local v1, full_half:I
    :goto_2b
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurrentLaunchMode:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v5

    sparse-switch v5, :sswitch_data_a0

    .line 815
    :goto_34
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    .line 816
    .local v4, windowMode:I
    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 817
    .local v3, options:I
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    if-eqz v5, :cond_62

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v6

    if-eq v5, v6, :cond_58

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v5

    if-nez v5, :cond_62

    :cond_58
    and-int/lit16 v5, v3, 0xff

    if-eqz v5, :cond_62

    .line 820
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v6, -0x1

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 823
    :cond_62
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v5

    .end local v3           #options:I
    .end local v4           #windowMode:I
    :goto_68
    return v5

    .line 794
    .end local v1           #full_half:I
    .end local v2           #half:I
    :cond_69
    move v2, p2

    .line 795
    .restart local v2       #half:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v1, v5, Landroid/graphics/Point;->y:I

    .restart local v1       #full_half:I
    goto :goto_2b

    .line 801
    :sswitch_73
    const/16 v5, 0x64

    if-ge v2, v5, :cond_84

    .line 802
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v6, 0x6

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 806
    :cond_7d
    :goto_7d
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v5

    goto :goto_68

    .line 803
    :cond_84
    add-int/lit8 v5, v1, -0x64

    if-le v2, v5, :cond_7d

    .line 804
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/16 v6, 0x18

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto :goto_7d

    .line 811
    :sswitch_90
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurrentLaunchMode:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v6

    invoke-static {v6, p1, p2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findCurrentWindowZone(III)I

    move-result v6

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto :goto_34

    .line 798
    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_73
        0x4 -> :sswitch_90
        0x8 -> :sswitch_90
        0x10 -> :sswitch_90
        0x20 -> :sswitch_90
    .end sparse-switch
.end method

.method private calculateGesture(II)I
    .registers 16
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 729
    const/16 v7, 0x32

    .line 730
    .local v7, th:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v9, v9, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 731
    .local v0, bh:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v9, v9, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 732
    .local v2, bw:I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v11, v11, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/16 v12, 0x32

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    .local v8, titleBar:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v11

    sub-int v11, v0, v11

    invoke-direct {v3, v9, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 734
    .local v3, leftResize:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v9

    sub-int v9, v2, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v10

    sub-int v10, v0, v10

    invoke-direct {v5, v9, v7, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 735
    .local v5, rightResize:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v4, v9, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 736
    .local v4, leftbottomResize:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v2, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    invoke-direct {v6, v9, v10, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 737
    .local v6, rightbottomResize:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v10

    sub-int v10, v0, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v11

    sub-int v11, v2, v11

    invoke-direct {v1, v9, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 739
    .local v1, bottomResize:Landroid/graphics/Rect;
    const-string v9, "GuideView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateGesture("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v9, v9, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-eqz v9, :cond_c8

    .line 742
    const/4 v9, 0x0

    .line 763
    :goto_c7
    return v9

    .line 745
    :cond_c8
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v9, v9, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-eqz v9, :cond_d0

    .line 746
    const/4 v9, 0x1

    goto :goto_c7

    .line 750
    :cond_d0
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 751
    const/4 v9, 0x4

    goto :goto_c7

    .line 752
    :cond_d8
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_e0

    .line 753
    const/4 v9, 0x5

    goto :goto_c7

    .line 754
    :cond_e0
    invoke-virtual {v8, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 755
    const/4 v9, 0x1

    goto :goto_c7

    .line 756
    :cond_e8
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 757
    const/4 v9, 0x2

    goto :goto_c7

    .line 758
    :cond_f0
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 759
    const/4 v9, 0x3

    goto :goto_c7

    .line 760
    :cond_f8
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_100

    .line 761
    const/4 v9, 0x6

    goto :goto_c7

    .line 763
    :cond_100
    const/4 v9, 0x0

    goto :goto_c7
.end method

.method private doDocking(I)V
    .registers 4
    .parameter "dockSide"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 828
    return-void
.end method

.method private drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 3
    .parameter "canvas"
    .parameter "pnt"

    .prologue
    .line 456
    return-void
.end method

.method private resizeGuideView(II)V
    .registers 12
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 905
    const-string v4, "GuideView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPinupResizePosition("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 908
    .local v1, left:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 909
    .local v3, top:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 910
    .local v2, right:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 912
    .local v0, bottom:I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4f

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v4, v7, :cond_4f

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_5d

    .line 913
    :cond_4f
    add-int v4, v0, p2

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_98

    .line 914
    add-int/2addr v0, p2

    .line 921
    :cond_5d
    :goto_5d
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_66

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v7, :cond_ae

    .line 922
    :cond_66
    add-int v4, v1, p1

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_a3

    .line 923
    add-int/2addr v1, p1

    .line 937
    :cond_75
    :goto_75
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 939
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v4, :cond_89

    .line 940
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustRatio(Landroid/graphics/Rect;)V

    .line 943
    :cond_89
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustSize(Landroid/graphics/Rect;)V

    .line 945
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 946
    return-void

    .line 917
    :cond_98
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int v0, v3, v4

    goto :goto_5d

    .line 926
    :cond_a3
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v4

    goto :goto_75

    .line 929
    :cond_ae
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b7

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_75

    .line 930
    :cond_b7
    add-int v4, v2, p1

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_c6

    .line 931
    add-int/2addr v2, p1

    goto :goto_75

    .line 934
    :cond_c6
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v2, v1, v4

    goto :goto_75
.end method

.method private updateResizeDecorRect()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 459
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_c

    .line 499
    :cond_b
    :goto_b
    return-void

    .line 468
    :cond_c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 471
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-ne v2, v4, :cond_70

    .line 473
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 488
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 490
    .local v1, w:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 493
    .local v0, h:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 494
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_b

    .line 481
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_70
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    goto :goto_24
.end method


# virtual methods
.method public adjustRatio(Landroid/graphics/Rect;)V
    .registers 11
    .parameter "rect"

    .prologue
    .line 832
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 833
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 835
    .local v2, height:I
    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    .line 837
    .local v0, curRatio:D
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4c

    .line 838
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    .line 839
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 844
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 845
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    div-int v2, v4, v5

    .line 846
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 854
    :cond_39
    :goto_39
    return-void

    .line 841
    :cond_3a
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 842
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_25

    .line 848
    :cond_4c
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_39

    .line 849
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v5, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 851
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    div-int v3, v4, v5

    .line 852
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_39
.end method

.method public adjustSize(Landroid/graphics/Rect;)V
    .registers 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 859
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 861
    .local v0, height:I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    packed-switch v4, :pswitch_data_b8

    .line 875
    :goto_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v2, :cond_3f

    .line 876
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v6, :cond_20

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_90

    .line 877
    :cond_20
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 883
    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_3f

    .line 884
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 886
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 890
    :cond_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v2, :cond_68

    .line 891
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 893
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_68

    .line 894
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v6, :cond_a3

    .line 895
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 902
    :cond_68
    :goto_68
    return-void

    .line 864
    :pswitch_69
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_72

    :goto_6f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_72
    move v2, v3

    goto :goto_6f

    .line 867
    :pswitch_74
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_7d

    :goto_7a
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_7d
    move v2, v3

    goto :goto_7a

    .line 871
    :pswitch_7f
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_8e

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_8e

    :goto_8b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_8e
    move v2, v3

    goto :goto_8b

    .line 879
    :cond_90
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v7, :cond_99

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_29

    .line 880
    :cond_99
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_29

    .line 897
    :cond_a3
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v7, :cond_68

    .line 898
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_68

    .line 861
    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_69
        :pswitch_69
        :pswitch_7f
        :pswitch_7f
        :pswitch_74
    .end packed-switch
.end method

.method public moveGuideView(II)V
    .registers 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v6, 0x0

    .line 767
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 768
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->doDocking(I)V

    .line 776
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-eqz v0, :cond_52

    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 779
    :cond_52
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 780
    return-void

    .line 773
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 950
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 951
    const-string v0, "GuideView"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 954
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 376
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_29

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    :cond_29
    :goto_29
    return-void

    .line 401
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_67

    .line 403
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-nez v0, :cond_59

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 411
    :goto_43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-nez v0, :cond_29

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_29

    .line 407
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_43

    .line 416
    :cond_67
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_29
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 33
    .parameter "event"

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getMode()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 504
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent - the mode is not DIALOG_MODE_MOVE_N_RESIZE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v26, 0x0

    .line 711
    :goto_1b
    return v26

    .line 508
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v10, v0

    .line 509
    .local v10, newX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v11, v0

    .line 512
    .local v11, newY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    packed-switch v26, :pswitch_data_602

    .line 711
    :goto_31
    const/16 v26, 0x1

    goto :goto_1b

    .line 514
    :pswitch_34
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 515
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    if-nez v26, :cond_b8

    .line 521
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent(ACTION_DOWN) - Invalid touch area. Close Dialog."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 523
    const/16 v26, 0x0

    goto/16 :goto_1b

    .line 525
    :cond_b8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_dd

    .line 530
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_fc

    .line 535
    const/16 v26, 0xff

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    :cond_fc
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 540
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 543
    :pswitch_108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    sub-int v26, v10, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v22, v26, 0x2

    .line 544
    .local v22, tx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v26, v0

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v23, v26, 0x2

    .line 549
    .local v23, ty:I
    if-nez v22, :cond_12f

    if-nez v23, :cond_12f

    .line 550
    const-string v26, "GuideView"

    const-string v27, "onTouchEvent::ACTION_MOVE [Filtered by offset[2]"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 554
    :cond_12f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_60e

    .line 570
    :goto_138
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 572
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 557
    :pswitch_142
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 558
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->moveGuideView(II)V

    goto :goto_138

    .line 566
    :pswitch_154
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 567
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->resizeGuideView(II)V

    goto :goto_138

    .line 583
    .end local v22           #tx:I
    .end local v23           #ty:I
    :pswitch_166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    sub-int v26, v10, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v22, v26, 0x2

    .line 584
    .restart local v22       #tx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v26, v0

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    mul-int/lit8 v23, v26, 0x2

    .line 586
    .restart local v23       #ty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v26

    if-eqz v26, :cond_1a7

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    goto/16 :goto_31

    .line 591
    :cond_1a7
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 592
    .local v15, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    #calls: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    invoke-static {v0, v15, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindowMode()I

    move-result v25

    .line 600
    .local v25, windowMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v24

    .line 602
    .local v24, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5ca

    .line 603
    const/4 v9, 0x1

    .line 604
    .local v9, needsUpdateWindowInfo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v26

    if-eqz v26, :cond_2f6

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurrentLaunchMode:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurrentLaunchMode:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_49a

    .line 606
    :cond_2d2
    const/4 v9, 0x1

    .line 607
    and-int/lit8 v25, v25, -0x1f

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    or-int v25, v25, v26

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 665
    :cond_2f6
    :goto_2f6
    if-eqz v9, :cond_36b

    .line 666
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 667
    .local v7, lastSize:Landroid/graphics/Rect;
    if-nez v7, :cond_312

    .line 668
    const-string v26, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7           #lastSize:Landroid/graphics/Rect;
    check-cast v7, Landroid/graphics/Rect;

    .line 670
    .restart local v7       #lastSize:Landroid/graphics/Rect;
    :cond_312
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 672
    const-string v26, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 675
    and-int/lit8 v25, v25, -0x1f

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 687
    .end local v7           #lastSize:Landroid/graphics/Rect;
    .end local v9           #needsUpdateWindowInfo:Z
    :cond_36b
    :goto_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 688
    .local v13, p:Landroid/view/WindowManager$LayoutParams;
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 689
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 690
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 691
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingLeft:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingTop:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 700
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 706
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 611
    .end local v13           #p:Landroid/view/WindowManager$LayoutParams;
    .restart local v9       #needsUpdateWindowInfo:Z
    :cond_49a
    const/4 v9, 0x0

    .line 614
    :try_start_49b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    const/16 v27, 0x3e8

    const/16 v28, 0x3

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;
    :try_end_4ab
    .catch Landroid/os/RemoteException; {:try_start_49b .. :try_end_4ab} :catch_4d5

    .line 620
    .local v19, runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4b4
    :goto_4b4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4dd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 622
    .local v14, r:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v12

    .line 623
    .local v12, options:I
    const v26, 0x804000

    and-int v26, v26, v12

    if-eqz v26, :cond_4b4

    .line 625
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b4

    .line 615
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #options:I
    .end local v14           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v16           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_4d5
    move-exception v5

    .line 616
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 617
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 628
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v16       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v19       #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4dd
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 630
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 633
    .local v20, sourceDockSide:I
    const/4 v8, 0x0

    .line 634
    .local v8, mergedSplitZone:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4f4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_555

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 635
    .local v18, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v21, v18

    .line 636
    .local v21, tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_56c

    .line 637
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x1f

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 638
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    or-int v26, v26, v20

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 639
    and-int v26, v8, v20

    if-nez v26, :cond_4f4

    if-eqz v20, :cond_4f4

    .line 641
    or-int v8, v8, v20

    .line 642
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_549
    :goto_549
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4f4

    .line 654
    .end local v18           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21           #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_555
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_2f6

    .line 655
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 657
    .local v4, am:Landroid/app/IActivityManager;
    :try_start_55f
    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateTasksOrder(Ljava/util/List;)V
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_55f .. :try_end_564} :catch_566

    goto/16 :goto_2f6

    .line 658
    :catch_566
    move-exception v5

    .line 659
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2f6

    .line 643
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v18       #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v21       #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_56c
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_549

    .line 644
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x1f

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 645
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v27

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    and-int v26, v26, v8

    if-nez v26, :cond_4f4

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    or-int v8, v8, v26

    .line 649
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_549

    .line 679
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #mergedSplitZone:I
    .end local v9           #needsUpdateWindowInfo:Z
    .end local v16           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v19           #runningTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v20           #sourceDockSide:I
    .end local v21           #tempRT:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5ca
    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v26

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_5d8

    .line 680
    const/16 v26, 0x1

    goto/16 :goto_1b

    .line 682
    :cond_5d8
    const-string v26, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 683
    const-string v26, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto/16 :goto_36b

    .line 512
    nop

    :pswitch_data_602
    .packed-switch 0x0
        :pswitch_34
        :pswitch_166
        :pswitch_108
        :pswitch_166
    .end packed-switch

    .line 554
    :pswitch_data_60e
    .packed-switch 0x1
        :pswitch_142
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_154
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 388
    const-string v0, "GuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged( hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-nez p1, :cond_28

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 393
    :cond_28
    return-void
.end method
