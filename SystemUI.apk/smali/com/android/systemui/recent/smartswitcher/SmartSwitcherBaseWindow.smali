.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;
.super Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;
.source "SmartSwitcherBaseWindow.java"

# interfaces
.implements Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;


# static fields
.field protected static final ROTATION_0:I = 0x0

.field protected static final ROTATION_180:I = 0x2

.field protected static final ROTATION_270:I = 0x3

.field protected static final ROTATION_90:I = 0x1


# instance fields
.field protected mHeight:I

.field protected mIcons:[Landroid/graphics/Bitmap;

.field protected mImages:[Lcom/sec/android/samsunganimation/basetype/SAImage;

.field protected mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

.field protected mPrevHeight:I

.field protected mPrevRotation:I

.field protected mPrevWidth:I

.field private mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

.field protected mRotation:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 42
    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    .line 87
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mPrevRotation:I

    .line 88
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mWidth:I

    .line 89
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mHeight:I

    .line 90
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mWidth:I

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mPrevWidth:I

    .line 91
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mHeight:I

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mPrevHeight:I

    .line 93
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->setSASlideRequestRender(Lcom/sec/android/samsunganimation/slide/SASlideManager$SASlideRequestRender;)V

    .line 94
    return-void
.end method


# virtual methods
.method public animationSlideNotify()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected buildSubSlide()V
    .locals 2

    .prologue
    .line 63
    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 66
    .local v0, color:[F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->buildSubSlide([F)V

    .line 67
    return-void

    .line 63
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected buildSubSlide([F)V
    .locals 8
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Lcom/sec/android/samsunganimation/slide/SASlide;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mWidth:I

    int-to-float v5, v2

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mHeight:I

    int-to-float v6, v2

    move v2, v1

    move v4, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setOrthogonal(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getNativeSlideHandle()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRootSlideSASlide(I)V

    .line 74
    new-instance v0, Lcom/sec/android/samsunganimation/slide/SASlide;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getNativeSlideHandle()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mWidth:I

    int-to-float v5, v4

    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mHeight:I

    int-to-float v6, v4

    move v4, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setOrthogonal(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method protected getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mMainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    return-object v0
.end method

.method protected getRootSlide()Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRootSlide:Lcom/sec/android/samsunganimation/slide/SASlide;

    return-object v0
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mPrevRotation:I

    .line 59
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public requestSlideRender()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->swapAnimationSAGLSurface()V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->requestRender()V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
