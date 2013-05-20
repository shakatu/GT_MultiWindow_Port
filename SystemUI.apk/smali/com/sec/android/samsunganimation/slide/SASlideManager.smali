.class public final enum Lcom/sec/android/samsunganimation/slide/SASlideManager;
.super Ljava/lang/Enum;
.source "SASlideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideImplicitAnimationListener;,
        Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;,
        Lcom/sec/android/samsunganimation/slide/SASlideManager$SlidePriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/samsunganimation/slide/SASlideManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_ANIMATION:I = 0x2

.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/samsunganimation/slide/SASlideManager; = null

.field public static final IMPLICIT_ANIMATION_TYPE_ADD:I = 0x3

.field public static final IMPLICT_ANIMATION_TYPE_ACTIVITY_CHANGE:I = 0x6

.field public static final IMPLICT_ANIMATION_TYPE_MOVETO_TOP:I = 0x4

.field public static final IMPLICT_ANIMATION_TYPE_OPACITY:I = 0x8

.field public static final IMPLICT_ANIMATION_TYPE_RITH_TO_LEFT:I = 0x9

.field public static final IMPLICT_ANIMATION_TYPE_ROTATION:I = 0x7

.field public static final IMPLICT_ANIMATION_TYPE_SET_REGION:I = 0x5

.field public static final enum INSTANCE:Lcom/sec/android/samsunganimation/slide/SASlideManager; = null

.field private static final MSG_IMPLICIT_ANIMATION_END:I = 0x1

.field private static final MSG_IMPLICIT_ANIMATION_REPEAT:I = 0x2

.field private static final MSG_IMPLICIT_ANIMATION_START:I = 0x3

.field private static final MSG_REQUEST_RENDER:I = 0x1

.field public static final NO_ANIMATION:I = 0x0

.field public static final SOME_ANIMATION:I = 0x1

.field private static mImplicitHandler:Landroid/os/Handler;

.field private static mImplicitListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideImplicitAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mListenerCounter:I

.field private static mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;


# instance fields
.field final defaultRepeatCount:I

.field private mAnimationDisable:Z

.field private mAnimationSetting:I

.field private mAutoReverse:Z

.field private mDuration:I

.field private mInterpolatorType:I

.field private mMarkInvalidate:Z

.field private mOffset:I

.field private mPauseImplicitAnimation:Z

.field private mRepeatCount:I

.field private mRequestRenderHandler:Landroid/os/Handler;

.field private mRequestRendering:Z

.field private mTransaction:Z

.field private mUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->INSTANCE:Lcom/sec/android/samsunganimation/slide/SASlideManager;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/samsunganimation/slide/SASlideManager;

    sget-object v1, Lcom/sec/android/samsunganimation/slide/SASlideManager;->INSTANCE:Lcom/sec/android/samsunganimation/slide/SASlideManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->ENUM$VALUES:[Lcom/sec/android/samsunganimation/slide/SASlideManager;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;

    .line 74
    sput v2, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mListenerCounter:I

    .line 77
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitListenerMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitListenerMap:Ljava/util/HashMap;

    .line 390
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/slide/SASlideManager$1;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitHandler:Landroid/os/Handler;

    .line 533
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mUpdating:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mMarkInvalidate:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationSetting:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRenderHandler:Landroid/os/Handler;

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mPauseImplicitAnimation:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mTransaction:Z

    .line 53
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    .line 54
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    .line 55
    iput v2, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    .line 56
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationDisable:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRendering:Z

    .line 73
    iput v2, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->defaultRepeatCount:I

    .line 88
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRenderHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/sec/android/samsunganimation/slide/SASlideManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager$2;-><init>(Lcom/sec/android/samsunganimation/slide/SASlideManager;)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRenderHandler:Landroid/os/Handler;

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic access$2()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/samsunganimation/slide/SASlideManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mMarkInvalidate:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sec/android/samsunganimation/slide/SASlideManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mUpdating:Z

    return-void
.end method

.method static synthetic access$5()Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;

    return-object v0
.end method

.method private static getImplicitHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->INSTANCE:Lcom/sec/android/samsunganimation/slide/SASlideManager;

    return-object v0
.end method

.method private static native nativeCheckPageStatus(I)I
.end method

.method private static native nativeEnableGlobalAnimation(I)V
.end method

.method private static native nativeGetFPS()F
.end method

.method private static native nativeIsAnimatingSASlideManager()I
.end method

.method private static native nativeIsEnableGlobalAnimation()I
.end method

.method public static onSASlideImplicitAnimationEnd(I)V
    .locals 2
    .parameter "listenerID"

    .prologue
    .line 434
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 436
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 437
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method

.method public static onSASlideImplicitAnimationRepeat(I)V
    .locals 2
    .parameter "listenerID"

    .prologue
    .line 445
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 447
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 448
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 449
    return-void
.end method

.method public static onSASlideImplicitAnimationStart(I)V
    .locals 2
    .parameter "listenerID"

    .prologue
    .line 456
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 458
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 459
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getImplicitHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/samsunganimation/slide/SASlideManager;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/samsunganimation/slide/SASlideManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->ENUM$VALUES:[Lcom/sec/android/samsunganimation/slide/SASlideManager;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/samsunganimation/slide/SASlideManager;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public animaitonRenderNotify()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;

    invoke-interface {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;->animationSlideNotify()V

    .line 385
    :cond_0
    return-void
.end method

.method public checkPageStatusForEBook(Lcom/sec/android/samsunganimation/slide/SASlide;)I
    .locals 1
    .parameter "slide"

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getNativeSlideHandle()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->nativeCheckPageStatus(I)I

    move-result v0

    return v0
.end method

.method public checkinAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mTransaction:Z

    .line 192
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    .line 193
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    .line 195
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    .line 196
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    .line 197
    iput-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationDisable:Z

    .line 198
    return-void
.end method

.method public checkoutAnimation()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mTransaction:Z

    .line 187
    return-void
.end method

.method public enableGlobalAnimation(Z)V
    .locals 1
    .parameter "enableAnimation"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->nativeEnableGlobalAnimation(I)V

    .line 495
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationDisable()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationDisable:Z

    return v0
.end method

.method public getAnimationSettingValue()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationSetting:I

    return v0
.end method

.method public getAutoReverse()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    return v0
.end method

.method public getCheckoutAnimation()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mTransaction:Z

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    return v0
.end method

.method public getFPS()F
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->nativeGetFPS()F

    move-result v0

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    return v0
.end method

.method public getRequestRendering()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRendering:Z

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->nativeIsAnimatingSASlideManager()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnableGlobalAnimation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->nativeIsEnableGlobalAnimation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPausedImplicitAnimation()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mPauseImplicitAnimation:Z

    return v0
.end method

.method public requestExplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;Lcom/sec/android/samsunganimation/animation/SAAnimation;)V
    .locals 1
    .parameter "slide"
    .parameter "animation"

    .prologue
    .line 176
    invoke-virtual {p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setExplicitAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isPausedImplicitAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestRender()V

    .line 180
    :cond_0
    return-void
.end method

.method public requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V
    .locals 8
    .parameter "slide"
    .parameter "type"
    .parameter "duration"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getCheckoutAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getAnimationDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isPausedImplicitAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestRender()V

    .line 168
    :cond_0
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    if-nez v0, :cond_3

    .line 156
    iget v2, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    iget v5, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    if-eqz v0, :cond_2

    :goto_1
    move-object v0, p1

    move v1, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImplicitAnimation(IIIIII)V

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .line 159
    :cond_3
    iget v2, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    iget v3, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    iget v5, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    if-eqz v0, :cond_4

    :goto_2
    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImplicitAnimation(IIIIII)V

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_2

    :cond_5
    move-object v0, p1

    move v1, p2

    move v2, v7

    move v3, p3

    move v4, v6

    move v5, v7

    move v6, v7

    .line 163
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImplicitAnimation(IIIIII)V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    iget-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mUpdating:Z

    if-nez v1, :cond_0

    .line 308
    iput-boolean v2, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mUpdating:Z

    .line 309
    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRenderHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 311
    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setAnimationDisable(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationDisable:Z

    .line 301
    return-void
.end method

.method public setAnimationSettingValue(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 353
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAnimationSetting:I

    .line 354
    return-void
.end method

.method public setAutoReverse(Z)V
    .locals 0
    .parameter "autoReverse"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mAutoReverse:Z

    .line 293
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 268
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mDuration:I

    .line 269
    return-void
.end method

.method public setImplicitListener(Lcom/sec/android/samsunganimation/slide/SASlide;Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideImplicitAnimationListener;)V
    .locals 4
    .parameter "slide"
    .parameter "listener"

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, proxy:I
    invoke-static {}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getImplicitAnimationProxy()I

    move-result v1

    .line 471
    if-eqz v1, :cond_0

    .line 472
    sget v2, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mListenerCounter:I

    add-int/lit8 v0, v2, 0x1

    sput v0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mListenerCounter:I

    .line 473
    .local v0, listenerID:I
    sget-object v2, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mImplicitListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p1, v1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setProxy(II)V

    .line 476
    .end local v0           #listenerID:I
    :cond_0
    return-void
.end method

.method public setInterpolatorType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 261
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mInterpolatorType:I

    .line 262
    return-void
.end method

.method public setMarkInvalidate(Z)V
    .locals 0
    .parameter "markInvalidate"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mMarkInvalidate:Z

    .line 322
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 284
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mOffset:I

    .line 285
    return-void
.end method

.method public setPauseImplicitAnimation(Z)V
    .locals 0
    .parameter "pause"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mPauseImplicitAnimation:Z

    .line 138
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 276
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRepeatCount:I

    .line 277
    return-void
.end method

.method public setRequestRendering(Z)V
    .locals 0
    .parameter "requestRendering"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mRequestRendering:Z

    .line 338
    return-void
.end method

.method public setSASlideRequestRender(Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;)V
    .locals 0
    .parameter "requestRender"

    .prologue
    .line 376
    sput-object p1, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mSASlideRequestRender:Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;

    .line 377
    return-void
.end method

.method public setUpdating(Z)V
    .locals 0
    .parameter "updating"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlideManager;->mUpdating:Z

    .line 330
    return-void
.end method
