.class public Lcom/sec/android/samsunganimation/slide/SASlide;
.super Ljava/lang/Object;
.source "SASlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsunganimation/slide/SASlide$BlendType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$ImageFormat;,
        Lcom/sec/android/samsunganimation/slide/SASlide$ImageScaleType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$LightType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$RTEffectType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$SlideDeformDirection;,
        Lcom/sec/android/samsunganimation/slide/SASlide$SlideDeformType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$SlideSwipeType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$SlideType;,
        Lcom/sec/android/samsunganimation/slide/SASlide$SlideZOrderType;
    }
.end annotation


# static fields
.field public static final IMPLICIT_ANIMATION_OFF_DURATION:I

.field private static final SLIDE_BACKGROUND_SETTING:[F

.field public static mIsSuccessCreateSlide:Z

.field private static rotationDuration:I


# instance fields
.field private defaultColor:[F

.field private mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

.field private mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

.field protected mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

.field private mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field private mBlendType:I

.field private mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field private mBorderWidth:F

.field private mCapture:Z

.field private mClipSubSlide:Z

.field private mCornerRadius:F

.field private mDeformDirection:I

.field private mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mDeformType:I

.field private mEnableAntiAliasing:Z

.field private mHidden:Z

.field private mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

.field protected mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

.field protected mImageScaleType:I

.field private mIsBGColorChanged:Z

.field protected mLightAngle:F

.field protected mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field protected mLightOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

.field protected mLightOpacity:F

.field protected mLightPower:F

.field protected mLightRadius:F

.field protected mLightType:I

.field protected mListSlide:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/samsunganimation/slide/SASlide;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeSlide:I

.field private mOpacity:F

.field private mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

.field private mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

.field private mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

.field private mPriority:I

.field private mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mRTEffectType:I

.field private mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

.field private mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field private mShadowOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

.field private mShadowOpacity:F

.field private mShadowRadius:F

.field private mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mSwipeType:I

.field protected mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

.field private mZOrderType:I

.field private mZPosition:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/sec/android/samsunganimation/slide/SASlide;->rotationDuration:I

    .line 237
    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 1943
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/samsunganimation/slide/SASlide;->SLIDE_BACKGROUND_SETTING:[F

    .line 2543
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void

    .line 1943
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "SASlide"

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    .line 235
    iput v10, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 1942
    iput-boolean v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsBGColorChanged:Z

    .line 243
    iget-object v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->initialize(FFFF[F)V

    .line 244
    iget-object v8, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    const/4 v9, 0x0

    move v2, v6

    move v3, v6

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 245
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    if-eq v0, v10, :cond_0

    .line 246
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 248
    :cond_0
    return-void

    .line 234
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 11
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "SASlide"

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    .line 235
    iput v10, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 1942
    iput-boolean v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsBGColorChanged:Z

    .line 256
    iget-object v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->initialize(FFFF[F)V

    .line 257
    iget-object v8, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    const/4 v9, 0x0

    move v2, p1

    move v3, v6

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 258
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    if-eq v0, v10, :cond_0

    .line 259
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 261
    :cond_0
    return-void

    .line 234
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIFFFF[F)V
    .locals 8
    .parameter "type"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "SASlide"

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsBGColorChanged:Z

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 289
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->initialize(FFFF[F)V

    .line 290
    const/4 v7, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 291
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 292
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 294
    :cond_0
    return-void

    .line 234
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIFFFF[FLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "type"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"
    .parameter "bitmap"

    .prologue
    const/4 v6, -0x1

    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "SASlide"

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    .line 235
    iput v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsBGColorChanged:Z

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->initialize(FFFF[F)V

    .line 310
    invoke-static/range {p1 .. p8}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 311
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    if-eq v0, v6, :cond_0

    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 314
    :cond_0
    return-void

    .line 234
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 11
    .parameter "type"
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "SASlide"

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    .line 235
    iput v10, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 1942
    iput-boolean v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsBGColorChanged:Z

    .line 270
    iget-object v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->initialize(FFFF[F)V

    .line 271
    iget-object v8, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->defaultColor:[F

    move v2, p1

    move v3, v6

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 272
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    if-eq v0, v10, :cond_0

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/samsunganimation/slide/SASlide;->mIsSuccessCreateSlide:Z

    .line 275
    :cond_0
    return-void

    .line 234
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initialize(FFFF[F)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SARect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    .line 327
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SARect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    .line 328
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SARect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    .line 329
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SARect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    .line 330
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-direct {v0, v8, v8}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    .line 331
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    .line 332
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0, v5, v5, v5}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 334
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0, v5, v5, v5}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 335
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0, v5, v5, v5}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 336
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0, v5, v5, v5}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 338
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0, v6, v6, v6}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 339
    iput v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZPosition:F

    .line 340
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->updateGeometryByRegion()V

    .line 342
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p5, v7

    aget v2, p5, v9

    const/4 v3, 0x2

    aget v3, p5, v3

    const/4 v4, 0x3

    aget v4, p5, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 343
    iput v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderWidth:F

    .line 344
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0, v8, v8, v8, v6}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 347
    iput-boolean v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mClipSubSlide:Z

    .line 348
    iput v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mCornerRadius:F

    .line 349
    iput-boolean v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mHidden:Z

    .line 350
    iput v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mOpacity:F

    .line 352
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    const v1, 0x3f19999a

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 353
    iput v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowRadius:F

    .line 354
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-direct {v0, v5, v5}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    .line 356
    iput v9, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZOrderType:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 360
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    .line 361
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTEffectType:I

    .line 362
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPriority:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 366
    iput-boolean v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mEnableAntiAliasing:Z

    .line 369
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformDirection:I

    .line 370
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformType:I

    .line 371
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeType:I

    .line 373
    iput v9, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleType:I

    .line 374
    iput v7, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightType:I

    .line 375
    iput v5, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightAngle:F

    .line 376
    iput v8, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightRadius:F

    .line 377
    iput v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightOpacity:F

    .line 378
    iput v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightPower:F

    .line 379
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-direct {v0, v8, v8}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    .line 380
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0, v6, v6, v6, v6}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 382
    return-void
.end method

.method private static native nativeAddParticleEffectSASlide(II)V
.end method

.method private static native nativeAddSlideIndexSASlide(III)V
.end method

.method private static native nativeAddSlideSASlide(II)V
.end method

.method private static native nativeDestroySASlide(I)V
.end method

.method private static native nativeDisplaySlideTreesSASlide(I)V
.end method

.method private static native nativeInitBackgroundColorSASlide(IFFFF)V
.end method

.method private static native nativeInitOpacitySASlide(IF)V
.end method

.method private static native nativeInitRegionSASlide(IFFFF)V
.end method

.method private static native nativeInitRotationSASlide(IFFFF)V
.end method

.method private static native nativeInitScaleSASlide(IFFFF)V
.end method

.method private static native nativeInitZPositionSASlide(IF)V
.end method

.method private static native nativeInitializeSASlide(IIFFFF[FLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeIsSlideAnimating(I)I
.end method

.method private static native nativeLoad3dModelFileSASlide(ILjava/lang/String;)I
.end method

.method private static native nativeRemoveAllSlidesSASlide(I)V
.end method

.method private static native nativeRemoveSceneNodeSASlide(I)I
.end method

.method private static native nativeRemoveSlideAtSASlide(II)V
.end method

.method private static native nativeRemoveSlideSASlide(II)V
.end method

.method private static native nativeRemoveSlidesSASlide(III)V
.end method

.method private static native nativeRunExplicitAnimationSASlide(II)V
.end method

.method private static native nativeRunImplicitAnimationSASlide(I[[I)V
.end method

.method private static native nativeSetAntiAliasing(IZ)V
.end method

.method private static native nativeSetBackFaceImageClearSASlide(II)V
.end method

.method private static native nativeSetBackFaceImageFlipSASlide(II)V
.end method

.method private static native nativeSetBackFaceImageSASlide(II)V
.end method

.method private static native nativeSetBackFaceTextureRegionSASlide(IFFFF)V
.end method

.method private static native nativeSetBackgroundColorSASlide(IFFFF)V
.end method

.method protected static native nativeSetBitmapSASlide(ILandroid/graphics/Bitmap;)V
.end method

.method private static native nativeSetBlendTypeSASlide(II)V
.end method

.method private static native nativeSetBorderColorSASlide(IFFFF)V
.end method

.method private static native nativeSetBorderWidthSASlide(IF)V
.end method

.method private static native nativeSetBoundsSASlide(IFFFF)V
.end method

.method private static native nativeSetCaptureSASlide(IZ)V
.end method

.method private static native nativeSetClipSubSlidesSASlide(IZ)V
.end method

.method private static native nativeSetCornerRadiusSASlide(IF)V
.end method

.method private static native nativeSetCustomRTESASlide(IZ)V
.end method

.method private static native nativeSetDeformDirectionSASlide(II)V
.end method

.method private static native nativeSetDeformRatioSASlide(IFFF)V
.end method

.method private static native nativeSetDeformTypeSASlide(II)V
.end method

.method private static native nativeSetExplicitAnimationSASlide(II)V
.end method

.method private static native nativeSetHiddenSASlide(IZ)V
.end method

.method private static native nativeSetHoldOpacitySASlide(IZ)V
.end method

.method private static native nativeSetHoldScaleSASlide(IZ)V
.end method

.method private static native nativeSetImageSASlide(II)V
.end method

.method private static native nativeSetImplicitAnimationSASlide(IIIIIII)V
.end method

.method private static native nativeSetLightAngleSASlide(IF)V
.end method

.method private static native nativeSetLightColorSASlide(IFFFF)V
.end method

.method private static native nativeSetLightOffsetSASlide(IFF)V
.end method

.method private static native nativeSetLightOpacitySASlide(IF)V
.end method

.method private static native nativeSetLightPowerSASlide(IF)V
.end method

.method private static native nativeSetLightRadiusSASlide(IF)V
.end method

.method private static native nativeSetLightTypeSASlide(II)V
.end method

.method private static native nativeSetModelPositionSASlide(IFFF)V
.end method

.method private static native nativeSetModelRotationSASlide(IFFF)V
.end method

.method private static native nativeSetModelScaleSASlide(IFFF)V
.end method

.method private static native nativeSetOpacitySASlide(IF)V
.end method

.method private static native nativeSetOrthogonalSASlide(IZ)V
.end method

.method private static native nativeSetPivotPointSASlide(IFF)V
.end method

.method private static native nativeSetPositionSASlide(IFF)V
.end method

.method private static native nativeSetProxySASlide(III)V
.end method

.method private static native nativeSetRTERatioSASlide(IFFF)V
.end method

.method private static native nativeSetRTEffectTypeSASlide(II)V
.end method

.method private static native nativeSetRegionSASlide(IFFFF)V
.end method

.method public static native nativeSetRootSlideSASlide(I)V
.end method

.method private static native nativeSetRotationFromSASlide(IFFFFFFFF)V
.end method

.method private static native nativeSetRotationSASlide(IFFFF)V
.end method

.method private static native nativeSetScaleSASlide(IFFF)V
.end method

.method private static native nativeSetScaleToFitTypeSASlide(II)V
.end method

.method private static native nativeSetShadowColorSASlide(IFFFF)V
.end method

.method private static native nativeSetShadowOffsetSASlide(IFF)V
.end method

.method private static native nativeSetShadowOpacitySASlide(IF)V
.end method

.method private static native nativeSetShadowRadiusSASlide(IF)V
.end method

.method private static native nativeSetSwipeRatioSASlide(IFFF)V
.end method

.method private static native nativeSetSwipeTypeSASlide(II)V
.end method

.method private static native nativeSetTextureRegionSASlide(IFFFF)V
.end method

.method private static native nativeSetTextureScaleToFitRegionSASlide(IFFFF)V
.end method

.method private static native nativeSetZOrderTypeSASlide(II)V
.end method

.method private static native nativeSetZPositionSASlide(IF)V
.end method

.method private static native nativeStartAnimationSASlide(II)V
.end method

.method private static native nativeStopAnimationSASlide(I)V
.end method

.method private setBackgroundSetting()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2489
    const/4 v2, 0x4

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 2491
    .local v0, SLIDE_BACKGROUND_SETTING:[F
    move-object v1, v0

    .line 2493
    .local v1, bgColor:[F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v3, v1, v7

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 2494
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v3, v1, v4

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 2495
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v3, v1, v5

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 2496
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v3, v1, v6

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 2498
    iget v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    aget v3, v1, v7

    aget v4, v1, v4

    aget v5, v1, v5

    aget v6, v1, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackgroundColorSASlide(IFFFF)V

    .line 2499
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, p0, v3, v7}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 2500
    return-void

    .line 2489
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private updateGeometryByBoundsOrPosition()V
    .locals 4

    .prologue
    .line 2472
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    mul-float v0, v2, v3

    .line 2473
    .local v0, dx:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    mul-float v1, v2, v3

    .line 2475
    .local v1, dy:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    sub-float/2addr v3, v0

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2476
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    sub-float/2addr v3, v1

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 2477
    return-void
.end method

.method private updateGeometryByPivotPoint()V
    .locals 4

    .prologue
    .line 2480
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    mul-float v0, v2, v3

    .line 2481
    .local v0, dx:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    mul-float v1, v2, v3

    .line 2483
    .local v1, dy:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2484
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    add-float/2addr v3, v1

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 2485
    return-void
.end method

.method private updateGeometryByRegion()V
    .locals 4

    .prologue
    .line 2464
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    mul-float v0, v2, v3

    .line 2465
    .local v0, dx:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    mul-float v1, v2, v3

    .line 2467
    .local v1, dy:F
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2468
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    add-float/2addr v3, v1

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 2469
    return-void
.end method


# virtual methods
.method public addParticleEffect(Lcom/sec/android/samsunganimation/particle/SAParticleEffect;)V
    .locals 2
    .parameter "particleEffect"

    .prologue
    .line 2519
    if-eqz p1, :cond_0

    .line 2520
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2521
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeAddParticleEffectSASlide(II)V

    .line 2531
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 2533
    :cond_0
    return-void

    .line 2523
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2525
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeAddParticleEffectSASlide(II)V

    goto :goto_0

    .line 2528
    :cond_2
    const-string v0, "SamsungAnimation"

    const-string v1, "ParticleEffectInfo\'s type not supported !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 6
    .parameter "childSlide"

    .prologue
    .line 1845
    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1848
    :cond_1
    if-eqz p1, :cond_0

    .line 1851
    const/4 v1, 0x0

    .line 1852
    .local v1, findIndex:I
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v0

    .line 1853
    .local v0, childPriority:I
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 1855
    .local v3, slideCount:I
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    .line 1863
    :cond_2
    if-ne v1, v3, :cond_4

    .line 1864
    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget v5, p1, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeAddSlideSASlide(II)V

    .line 1865
    iget-object v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    invoke-virtual {p1, p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setParent(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 1867
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0

    .line 1856
    :cond_3
    iget-object v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 1858
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 1855
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1868
    .end local v2           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_4
    if-ge v1, v3, :cond_0

    .line 1870
    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget v5, p1, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v4, v5, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeAddSlideIndexSASlide(III)V

    .line 1871
    iget-object v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1872
    invoke-virtual {p1, p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setParent(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0
.end method

.method public addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;I)V
    .locals 6
    .parameter "childSlide"
    .parameter "index"

    .prologue
    .line 1807
    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1837
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    if-eqz p1, :cond_0

    .line 1813
    const/4 v1, 0x0

    .line 1814
    .local v1, findIndex:I
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v0

    .line 1815
    .local v0, childPriority:I
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 1817
    .local v3, slideCount:I
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    .line 1820
    if-ge p2, v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 1821
    move v1, p2

    .line 1833
    :cond_2
    iget v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget v5, p1, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v4, v5, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeAddSlideIndexSASlide(III)V

    .line 1834
    iget-object v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1835
    invoke-virtual {p1, p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setParent(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 1836
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0

    .line 1823
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1824
    invoke-virtual {p0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 1826
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 1823
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public detachSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 2
    .parameter "detachSlide"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1939
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget v1, p1, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeRemoveSlideSASlide(II)V

    .line 1940
    return-void
.end method

.method public displayTrees()V
    .locals 1

    .prologue
    .line 2120
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeDisplaySlideTreesSASlide(I)V

    .line 2121
    return-void
.end method

.method public dumpTrees(IZ)I
    .locals 7
    .parameter "depth"
    .parameter "visibleOnly"

    .prologue
    .line 2132
    if-eqz p2, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mHidden:Z

    if-eqz v4, :cond_1

    .line 2133
    const/4 v3, 0x0

    .line 2159
    :cond_0
    :goto_0
    return v3

    .line 2136
    :cond_1
    const/4 v3, 0x0

    .line 2138
    .local v3, total:I
    const-string v1, ""

    .line 2139
    .local v1, depthStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, p1, :cond_3

    .line 2143
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v0

    .line 2144
    .local v0, count:I
    add-int/2addr v3, v0

    .line 2146
    if-nez p1, :cond_2

    .line 2147
    const-string v4, "#####"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "slide count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_2
    const-string v4, "#####"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v0, :cond_4

    .line 2155
    if-nez p1, :cond_0

    .line 2156
    const-string v4, "#####"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "total slide count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    .end local v0           #count:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2152
    .restart local v0       #count:I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->dumpTrees(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2151
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 397
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    if-eq v0, v1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackFaceImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V

    .line 404
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeDestroySASlide(I)V

    .line 405
    iput v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    .line 407
    :cond_2
    return-void
.end method

.method public findUltimateRoot()Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 2

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 2426
    .local v0, root:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v0, :cond_0

    .line 2431
    .end local p0
    :goto_0
    return-object p0

    .line 2427
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    if-nez v1, :cond_2

    move-object p0, v0

    goto :goto_0

    .line 2429
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 2428
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 2431
    goto :goto_0
.end method

.method public getBackFaceImage()Lcom/sec/android/samsunganimation/basetype/SAImage;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    return-object v0
.end method

.method public getBackbgoundColor()Lcom/sec/android/samsunganimation/basetype/SAColor;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    return-object v0
.end method

.method public getBorderColor()Lcom/sec/android/samsunganimation/basetype/SAColor;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderWidth:F

    return v0
.end method

.method public getClipSubSlides()Z
    .locals 1

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mClipSubSlide:Z

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 1698
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mCornerRadius:F

    return v0
.end method

.method public getDeformRatio()Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    return-object v0
.end method

.method public getDeformType()I
    .locals 1

    .prologue
    .line 1770
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformType:I

    return v0
.end method

.method public getGlobalRegion()Lcom/sec/android/samsunganimation/basetype/SARect;
    .locals 5

    .prologue
    .line 2440
    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 2441
    .local v1, root:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v0

    .line 2460
    :goto_0
    return-object v0

    .line 2442
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SARect;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>()V

    .line 2443
    .local v0, region:Lcom/sec/android/samsunganimation/basetype/SARect;
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2444
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 2445
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 2446
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 2448
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2449
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v4, v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2450
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v4, v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    goto :goto_0

    .line 2455
    :cond_1
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v4, v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 2456
    iget-object v2, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v4, v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 2457
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 2454
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mHidden:Z

    return v0
.end method

.method public getImage()Lcom/sec/android/samsunganimation/basetype/SAImage;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    return-object v0
.end method

.method public getImageScaleType()I
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeSlideHandle()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 1716
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mOpacity:F

    return v0
.end method

.method public getParent()Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

    return-object v0
.end method

.method public getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    return-object v0
.end method

.method public getPosition()Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPriority:I

    return v0
.end method

.method public getRTERatio()Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    return-object v0
.end method

.method public getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    return-object v0
.end method

.method public getRotation()Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    return-object v0
.end method

.method public getRotationDuration()I
    .locals 1

    .prologue
    .line 2270
    sget v0, Lcom/sec/android/samsunganimation/slide/SASlide;->rotationDuration:I

    return v0
.end method

.method public getScale()Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    return-object v0
.end method

.method public getShadowColor()Lcom/sec/android/samsunganimation/basetype/SAColor;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    return-object v0
.end method

.method public getShadowOffect()Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    return-object v0
.end method

.method public getShadowOpacity()F
    .locals 1

    .prologue
    .line 1734
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowOpacity:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 1743
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowRadius:F

    return v0
.end method

.method public getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;
    .locals 1
    .parameter "index"

    .prologue
    .line 1904
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1905
    :cond_0
    const/4 v0, 0x0

    .line 1907
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsunganimation/slide/SASlide;

    goto :goto_0
.end method

.method public getSubSlideCount()I
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubSlideIndex(Lcom/sec/android/samsunganimation/slide/SASlide;)I
    .locals 1
    .parameter "slide"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSwipeRatio()Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    return-object v0
.end method

.method public getSwipeType()I
    .locals 1

    .prologue
    .line 1779
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeType:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    return v0
.end method

.method public getZOrderType()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZOrderType:I

    return v0
.end method

.method public getZPosition()F
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZPosition:F

    return v0
.end method

.method public initBackgroundColor([F)V
    .locals 5
    .parameter "bgColor"

    .prologue
    .line 469
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitBackgroundColorSASlide(IFFFF)V

    .line 470
    return-void
.end method

.method public initOpacity(F)V
    .locals 1
    .parameter "opacity"

    .prologue
    .line 460
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitOpacitySASlide(IF)V

    .line 461
    return-void
.end method

.method public initRegion(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 427
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitRegionSASlide(IFFFF)V

    .line 428
    return-void
.end method

.method public initRotation(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 439
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitRotationSASlide(IFFFF)V

    .line 440
    return-void
.end method

.method public initScale(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 451
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitScaleSASlide(IFFFF)V

    .line 452
    return-void
.end method

.method public initZPosition(F)V
    .locals 1
    .parameter "zPosition"

    .prologue
    .line 478
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeInitZPositionSASlide(IF)V

    .line 479
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    .line 321
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isPausedImplicitAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestRender()V

    .line 391
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 2183
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeIsSlideAnimating(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSetAnimation()Z
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    if-nez v0, :cond_0

    .line 2193
    const/4 v0, 0x0

    .line 2195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeSceneNode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2299
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeRemoveSceneNodeSASlide(I)I

    .line 2300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setCapture(Z)V

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 2302
    return-void
.end method

.method public removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 2
    .parameter "removeSlide"

    .prologue
    .line 1883
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1895
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mListSlide:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1890
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget v1, p1, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeRemoveSlideSASlide(II)V

    .line 1893
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setParent(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 1894
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    .line 2205
    return-void
.end method

.method public setAntiAliasing(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1534
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mEnableAntiAliasing:Z

    .line 1535
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetAntiAliasing(IZ)V

    .line 1536
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1537
    return-void
.end method

.method public setBackFaceImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1974
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1989
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-nez v0, :cond_1

    .line 1978
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAImage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 1981
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_2

    .line 1982
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 1984
    :cond_2
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1986
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceImageSASlide(II)V

    .line 1988
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0
.end method

.method public setBackFaceImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 2067
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_0

    .line 2068
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 2070
    :cond_0
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 2072
    if-eqz p1, :cond_1

    .line 2073
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceImageSASlide(II)V

    .line 2076
    :goto_0
    return-void

    .line 2075
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceImageSASlide(II)V

    goto :goto_0
.end method

.method public setBackFaceImageClear(Z)V
    .locals 3
    .parameter "isClear"

    .prologue
    .line 2011
    iget v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2017
    :goto_0
    return-void

    .line 2014
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2016
    .local v0, flag:I
    :goto_1
    iget v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceImageClearSASlide(II)V

    goto :goto_0

    .line 2014
    .end local v0           #flag:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBackFaceImageFlip(Z)V
    .locals 3
    .parameter "isFlip"

    .prologue
    .line 1997
    iget v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 2000
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2002
    .local v0, flag:I
    :goto_1
    iget v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceImageFlipSASlide(II)V

    goto :goto_0

    .line 2000
    .end local v0           #flag:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBackFaceTextureRegion(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 823
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackFaceTextureRegion(FFFFI)V

    .line 824
    return-void
.end method

.method public setBackFaceTextureRegion(FFFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 1346
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 1347
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 1348
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 1349
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackFaceTextureRegionSASlide(IFFFF)V

    .line 1350
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1, p5}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1351
    return-void
.end method

.method public setBackgroundColor(Lcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 617
    const/4 v1, 0x4

    new-array v0, v1, [F

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 618
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundColor([FI)V

    .line 619
    return-void
.end method

.method public setBackgroundColor(Lcom/sec/android/samsunganimation/basetype/SAColor;I)V
    .locals 3
    .parameter "color"
    .parameter "duration"

    .prologue
    .line 628
    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 629
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundColor([FI)V

    .line 630
    return-void
.end method

.method public setBackgroundColor([F)V
    .locals 1
    .parameter "bgColor"

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundColor([FI)V

    .line 609
    return-void
.end method

.method public setBackgroundColor([FI)V
    .locals 6
    .parameter "bgColor"
    .parameter "duration"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1003
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v2

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 1004
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v3

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 1005
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v4

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 1006
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBgColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v5

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 1016
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    aget v1, p1, v2

    aget v2, p1, v3

    aget v3, p1, v4

    aget v4, p1, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBackgroundColorSASlide(IFFFF)V

    .line 1018
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1019
    return-void
.end method

.method public setBlendType(I)V
    .locals 1
    .parameter "blendType"

    .prologue
    .line 1510
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    .line 1511
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBlendTypeSASlide(II)V

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1513
    return-void
.end method

.method public setBorderColor(Lcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 674
    const/4 v1, 0x4

    new-array v0, v1, [F

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 675
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBorderColor([FI)V

    .line 676
    return-void
.end method

.method public setBorderColor(Lcom/sec/android/samsunganimation/basetype/SAColor;I)V
    .locals 3
    .parameter "color"
    .parameter "duration"

    .prologue
    .line 685
    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 686
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBorderColor([FI)V

    .line 687
    return-void
.end method

.method public setBorderColor([F)V
    .locals 1
    .parameter "borderColor"

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBorderColor([FI)V

    .line 666
    return-void
.end method

.method public setBorderColor([FI)V
    .locals 6
    .parameter "borderColor"
    .parameter "duration"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1070
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v2

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 1071
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v3

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 1072
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v4

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 1073
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v5

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 1075
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    aget v1, p1, v2

    aget v2, p1, v3

    aget v3, p1, v4

    aget v4, p1, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBorderColorSASlide(IFFFF)V

    .line 1077
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1078
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1
    .parameter "borderWidth"

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBorderWidth(FI)V

    .line 657
    return-void
.end method

.method public setBorderWidth(FI)V
    .locals 2
    .parameter "borderWidth"
    .parameter "duration"

    .prologue
    .line 1056
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBorderWidth:F

    .line 1058
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetBorderWidthSASlide(IF)V

    .line 1060
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1061
    return-void
.end method

.method public setCapture(Z)V
    .locals 2
    .parameter "capture"

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mCapture:Z

    .line 589
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mCapture:Z

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetCaptureSASlide(IZ)V

    .line 590
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 591
    return-void
.end method

.method public setClipSubSlides(Z)V
    .locals 1
    .parameter "clipSubSlides"

    .prologue
    .line 1387
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mClipSubSlide:Z

    .line 1389
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetClipSubSlidesSASlide(IZ)V

    .line 1390
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1391
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .parameter "cornerRadius"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setCornerRadius(FI)V

    .line 648
    return-void
.end method

.method public setCornerRadius(FI)V
    .locals 2
    .parameter "cornerRadius"
    .parameter "duration"

    .prologue
    .line 1042
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mCornerRadius:F

    .line 1044
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetCornerRadiusSASlide(IF)V

    .line 1046
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1047
    return-void
.end method

.method public setCustomRTE(Z)V
    .locals 1
    .parameter "customRTE"

    .prologue
    .line 1409
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetCustomRTESASlide(IZ)V

    .line 1410
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1411
    return-void
.end method

.method public setDeformDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1198
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformDirection:I

    .line 1199
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetDeformDirectionSASlide(II)V

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1201
    return-void
.end method

.method public setDeformRatio(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setDeformRatio(FFFI)V

    .line 547
    return-void
.end method

.method public setDeformRatio(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 934
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 935
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 937
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetDeformRatioSASlide(IFFF)V

    .line 939
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 940
    return-void
.end method

.method public setDeformType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1176
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mDeformType:I

    .line 1177
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetDeformTypeSASlide(II)V

    .line 1178
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1179
    return-void
.end method

.method protected setExplicitAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2416
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getNativeAnimationHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetExplicitAnimationSASlide(II)V

    .line 2417
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 1375
    iput-boolean p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mHidden:Z

    .line 1377
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetHiddenSASlide(IZ)V

    .line 1378
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1379
    return-void
.end method

.method public setHoldOpacity(Z)V
    .locals 1
    .parameter "holdOpacity"

    .prologue
    .line 1490
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetHoldOpacitySASlide(IZ)V

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1492
    return-void
.end method

.method public setHoldScale(Z)V
    .locals 1
    .parameter "holdScale"

    .prologue
    .line 1500
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetHoldScaleSASlide(IZ)V

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1502
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 1951
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1966
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-nez v0, :cond_1

    .line 1955
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAImage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 1958
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_2

    .line 1959
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 1961
    :cond_2
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1963
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;Lcom/sec/android/samsunganimation/basetype/SAImage$AlphaType;)V
    .locals 2
    .parameter "bitmap"
    .parameter "alphaType"

    .prologue
    .line 2027
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2042
    :goto_0
    return-void

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-nez v0, :cond_1

    .line 2031
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAImage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 2034
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_2

    .line 2035
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 2037
    :cond_2
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/samsunganimation/basetype/SAImage;->setBitmap(Landroid/graphics/Bitmap;Lcom/sec/android/samsunganimation/basetype/SAImage$AlphaType;)V

    .line 2039
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    .line 2041
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    goto :goto_0
.end method

.method public setImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 2050
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_0

    .line 2051
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 2053
    :cond_0
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 2055
    if-eqz p1, :cond_1

    .line 2056
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    .line 2059
    :goto_0
    return-void

    .line 2058
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    goto :goto_0
.end method

.method public setImage(Lcom/sec/android/samsunganimation/basetype/SAImage;Lcom/sec/android/samsunganimation/basetype/SAImage$AlphaType;)V
    .locals 2
    .parameter "image"
    .parameter "alphaType"

    .prologue
    .line 2085
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBlendType:I

    if-nez v0, :cond_0

    .line 2086
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundSetting()V

    .line 2088
    :cond_0
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 2090
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v0, p2}, Lcom/sec/android/samsunganimation/basetype/SAImage;->setAlphaType(Lcom/sec/android/samsunganimation/basetype/SAImage$AlphaType;)V

    .line 2092
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-eqz v0, :cond_1

    .line 2093
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    .line 2096
    :goto_0
    return-void

    .line 2095
    :cond_1
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImageSASlide(II)V

    goto :goto_0
.end method

.method public setImageScaleType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1312
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleType:I

    .line 1313
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetScaleToFitTypeSASlide(II)V

    .line 1314
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1315
    return-void
.end method

.method protected setImplicitAnimation(IIIIII)V
    .locals 8
    .parameter "type"
    .parameter "interpolatorType"
    .parameter "duration"
    .parameter "repeatCount"
    .parameter "offset"
    .parameter "mAutoReverse"

    .prologue
    const/4 v2, 0x0

    .line 2387
    const/4 v3, 0x0

    .line 2388
    .local v3, implcitDuration:I
    const/4 v7, 0x0

    .line 2390
    .local v7, interpolator:I
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 2391
    invoke-virtual {p0, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRotationDuration(I)V

    .line 2394
    :cond_0
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isPausedImplicitAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2395
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRotationDuration()I

    move-result v3

    .line 2398
    if-nez v3, :cond_1

    .line 2399
    move v3, p3

    .line 2402
    :cond_1
    const/16 v7, 0x13

    .line 2408
    :goto_0
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getAnimationSettingValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 2409
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImplicitAnimationSASlide(IIIIIII)V

    .line 2413
    .end local v3           #implcitDuration:I
    :goto_1
    return-void

    .line 2404
    .restart local v3       #implcitDuration:I
    :cond_2
    move v3, p3

    .line 2405
    move v7, p2

    goto :goto_0

    .line 2411
    :cond_3
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    move v1, p1

    move v2, v7

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetImplicitAnimationSASlide(IIIIIII)V

    goto :goto_1
.end method

.method public setLightAngle(F)V
    .locals 1
    .parameter "lightAngle"

    .prologue
    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightAngle(FI)V

    .line 791
    return-void
.end method

.method public setLightAngle(FI)V
    .locals 2
    .parameter "lightAngle"
    .parameter "duration"

    .prologue
    .line 1267
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightAngle:F

    .line 1268
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightAngleSASlide(IF)V

    .line 1269
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1270
    const/16 v1, 0x16

    .line 1269
    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1271
    return-void
.end method

.method public setLightColor([F)V
    .locals 1
    .parameter "lightColor"

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightColor([FI)V

    .line 754
    return-void
.end method

.method public setLightColor([FI)V
    .locals 6
    .parameter "lightColor"
    .parameter "duration"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v2

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 1211
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v3

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 1212
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v4

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 1213
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v5

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 1214
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    aget v1, p1, v2

    aget v2, p1, v3

    aget v3, p1, v4

    aget v4, p1, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightColorSASlide(IFFFF)V

    .line 1215
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1216
    const/16 v1, 0x14

    .line 1215
    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1217
    return-void
.end method

.method public setLightOffset(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightOffset(FFI)V

    .line 764
    return-void
.end method

.method public setLightOffset(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 1228
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 1229
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightOffsetSASlide(IFF)V

    .line 1230
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1231
    const/16 v1, 0x17

    .line 1230
    invoke-virtual {v0, p0, v1, p3}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1232
    return-void
.end method

.method public setLightOpacity(F)V
    .locals 1
    .parameter "lightOpacity"

    .prologue
    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightOpacity(FI)V

    .line 773
    return-void
.end method

.method public setLightOpacity(FI)V
    .locals 2
    .parameter "lightOpacity"
    .parameter "duration"

    .prologue
    .line 1241
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightOpacity:F

    .line 1242
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightOpacitySASlide(IF)V

    .line 1243
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1244
    const/16 v1, 0x15

    .line 1243
    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1245
    return-void
.end method

.method public setLightPower(F)V
    .locals 1
    .parameter "lightPower"

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightPower(FI)V

    .line 782
    return-void
.end method

.method public setLightPower(FI)V
    .locals 2
    .parameter "lightPower"
    .parameter "duration"

    .prologue
    .line 1254
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightPower:F

    .line 1255
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightPowerSASlide(IF)V

    .line 1256
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1257
    const/16 v1, 0x18

    .line 1256
    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1258
    return-void
.end method

.method public setLightRadius(F)V
    .locals 1
    .parameter "lightRadius"

    .prologue
    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightRadius(FI)V

    .line 800
    return-void
.end method

.method public setLightRadius(FI)V
    .locals 2
    .parameter "lightRadius"
    .parameter "duration"

    .prologue
    .line 1280
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightRadius:F

    .line 1281
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightRadiusSASlide(IF)V

    .line 1282
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    .line 1283
    const/16 v1, 0x13

    .line 1282
    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1284
    return-void
.end method

.method public setLightType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1292
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mLightType:I

    .line 1293
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetLightTypeSASlide(II)V

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1295
    return-void
.end method

.method public setModelPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setModelPosition(FFFI)V

    .line 2314
    return-void
.end method

.method public setModelPosition(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2326
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetModelPositionSASlide(IFFF)V

    .line 2328
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 2329
    return-void
.end method

.method public setModelRotation(FFF)V
    .locals 1
    .parameter "degreeX"
    .parameter "degreeY"
    .parameter "degreeZ"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setModelRotation(FFFI)V

    .line 2341
    return-void
.end method

.method public setModelRotation(FFFI)V
    .locals 2
    .parameter "degreeX"
    .parameter "degreeY"
    .parameter "degreeZ"
    .parameter "duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2353
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetModelRotationSASlide(IFFF)V

    .line 2355
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 2356
    return-void
.end method

.method public setModelScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setModelScale(FFFI)V

    .line 2368
    return-void
.end method

.method public setModelScale(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2380
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetModelScaleSASlide(IFFF)V

    .line 2382
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 2383
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mName:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setOpacity(F)V
    .locals 1
    .parameter "opacity"

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setOpacity(FI)V

    .line 639
    return-void
.end method

.method public setOpacity(FI)V
    .locals 2
    .parameter "opacity"
    .parameter "duration"

    .prologue
    .line 1028
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mOpacity:F

    .line 1030
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetOpacitySASlide(IF)V

    .line 1032
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1033
    return-void
.end method

.method public setOrthogonal(Z)V
    .locals 1
    .parameter "orthogonal"

    .prologue
    .line 1399
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetOrthogonalSASlide(IZ)V

    .line 1400
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1401
    return-void
.end method

.method public setParent(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mParent:Lcom/sec/android/samsunganimation/slide/SASlide;

    .line 1473
    return-void
.end method

.method public setPivotPoint(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FFI)V

    .line 515
    return-void
.end method

.method public setPivotPoint(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 883
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPivotPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 884
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->updateGeometryByPivotPoint()V

    .line 886
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetPivotPointSASlide(IFF)V

    .line 888
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, p3}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 889
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FFI)V

    .line 505
    return-void
.end method

.method public setPosition(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 866
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 867
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->updateGeometryByBoundsOrPosition()V

    .line 869
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetPositionSASlide(IFF)V

    .line 871
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, p3}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 872
    return-void
.end method

.method public setPriority(I)V
    .locals 8
    .parameter "priority"

    .prologue
    .line 1420
    iget v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPriority:I

    if-ne v6, p1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPriority:I

    .line 1425
    const/4 v2, 0x0

    .line 1426
    .local v2, findIndex:I
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getParent()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 1428
    .local v4, parent:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v4, :cond_0

    .line 1431
    invoke-virtual {v4, p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideIndex(Lcom/sec/android/samsunganimation/slide/SASlide;)I

    move-result v1

    .line 1432
    .local v1, curIndex:I
    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v5

    .line 1434
    .local v5, slideCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v5, :cond_5

    .line 1449
    :cond_2
    if-eq v2, v1, :cond_0

    .line 1453
    invoke-virtual {v4, p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 1456
    iget-object v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-eqz v6, :cond_3

    .line 1457
    iget-object v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {p0, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V

    .line 1459
    :cond_3
    iget-object v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    if-eqz v6, :cond_4

    .line 1460
    iget-object v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mBackFaceImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {p0, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackFaceImage(Lcom/sec/android/samsunganimation/basetype/SAImage;)V

    .line 1463
    :cond_4
    invoke-virtual {v4, p0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;I)V

    goto :goto_0

    .line 1435
    :cond_5
    invoke-virtual {v4, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 1437
    .local v0, childSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-ne v0, p0, :cond_6

    .line 1434
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1443
    :cond_6
    iget v6, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mPriority:I

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPriority()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1446
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setProxy(II)V
    .locals 1
    .parameter "proxy"
    .parameter "listenerID"

    .prologue
    .line 2509
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetProxySASlide(III)V

    .line 2510
    return-void
.end method

.method public setRTERatio(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRTERatio(FFFI)V

    .line 569
    return-void
.end method

.method public setRTERatio(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 970
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 971
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTERatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 973
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRTERatioSASlide(IFFF)V

    .line 975
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 976
    return-void
.end method

.method public setRTEffectType(I)V
    .locals 1
    .parameter "effectType"

    .prologue
    .line 1522
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRTEffectType:I

    .line 1523
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRTEffectTypeSASlide(II)V

    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1525
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 490
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 491
    return-void
.end method

.method public setRegion(FFFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 847
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 848
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 849
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 850
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->updateGeometryByRegion()V

    .line 852
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRegionSASlide(IFFFF)V

    .line 854
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p5}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 855
    return-void
.end method

.method public setRotation(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 535
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRotation(FFFFI)V

    .line 536
    return-void
.end method

.method public setRotation(FFFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "duration"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 916
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 917
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRotation:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 919
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRotationSASlide(IFFFF)V

    .line 921
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p5}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 922
    return-void
.end method

.method public setRotationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 2261
    sput p1, Lcom/sec/android/samsunganimation/slide/SASlide;->rotationDuration:I

    .line 2262
    return-void
.end method

.method public setRotationFrom(FFFFFFFFI)V
    .locals 10
    .parameter "fx"
    .parameter "fy"
    .parameter "fz"
    .parameter "fw"
    .parameter "tx"
    .parameter "ty"
    .parameter "tz"
    .parameter "tw"
    .parameter "duration"

    .prologue
    .line 1153
    iget v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetRotationFromSASlide(IFFFFFFFF)V

    .line 1155
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v1

    const/16 v2, 0x1a

    move/from16 v0, p9

    invoke-virtual {v1, p0, v2, v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1156
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setScale(FFFI)V

    .line 580
    return-void
.end method

.method public setScale(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 988
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 989
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 991
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetScaleSASlide(IFFF)V

    .line 993
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 994
    return-void
.end method

.method public setScaleToFitRegion(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 833
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setScaleToFitRegion(FFFFI)V

    .line 834
    return-void
.end method

.method public setScaleToFitRegion(FFFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 1362
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 1363
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 1364
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mImageScaleToFitRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 1365
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetTextureScaleToFitRegionSASlide(IFFFF)V

    .line 1366
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, p5}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1367
    return-void
.end method

.method public setSceneNode(Lcom/sec/android/samsunganimation/scene/SASceneNode;)Z
    .locals 5
    .parameter "sceneNode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2281
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/scene/SASceneNode;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/scene/SASceneNode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return v1

    .line 2284
    :cond_1
    iget v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/scene/SASceneNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeLoad3dModelFileSASlide(ILjava/lang/String;)I

    move-result v0

    .line 2286
    .local v0, result:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2289
    invoke-virtual {p0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setCapture(Z)V

    move v1, v2

    .line 2291
    goto :goto_0
.end method

.method public setShadowColor(Lcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 713
    const/4 v1, 0x4

    new-array v0, v1, [F

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 714
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowColor([FI)V

    .line 715
    return-void
.end method

.method public setShadowColor(Lcom/sec/android/samsunganimation/basetype/SAColor;I)V
    .locals 3
    .parameter "color"
    .parameter "duration"

    .prologue
    .line 724
    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    aput v2, v0, v1

    .line 725
    .local v0, bgColor:[F
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowColor([FI)V

    .line 726
    return-void
.end method

.method public setShadowColor([F)V
    .locals 1
    .parameter "shadowColor"

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowColor([FI)V

    .line 705
    return-void
.end method

.method public setShadowColor([FI)V
    .locals 6
    .parameter "shadowColor"
    .parameter "duration"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1101
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v2

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 1102
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v3

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 1103
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v4

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 1104
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    aget v1, p1, v5

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 1106
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    aget v1, p1, v2

    aget v2, p1, v3

    aget v3, p1, v4

    aget v4, p1, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetShadowColorSASlide(IFFFF)V

    .line 1108
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1109
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowOffset(FFI)V

    .line 745
    return-void
.end method

.method public setShadowOffset(FFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 1132
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowOffset:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 1134
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetShadowOffsetSASlide(IFF)V

    .line 1136
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1, p3}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1137
    return-void
.end method

.method public setShadowOpacity(F)V
    .locals 1
    .parameter "shadowOpacity"

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowOpacity(FI)V

    .line 735
    return-void
.end method

.method public setShadowOpacity(FI)V
    .locals 2
    .parameter "shadowOpacity"
    .parameter "duration"

    .prologue
    .line 1118
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetShadowOpacitySASlide(IF)V

    .line 1120
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1121
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .parameter "shadowRadius"

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setShadowRadius(FI)V

    .line 696
    return-void
.end method

.method public setShadowRadius(FI)V
    .locals 2
    .parameter "shadowRadius"
    .parameter "duration"

    .prologue
    .line 1087
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mShadowRadius:F

    .line 1089
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetShadowRadiusSASlide(IF)V

    .line 1091
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1092
    return-void
.end method

.method public setSwipeRatio(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setSwipeRatio(FFFI)V

    .line 558
    return-void
.end method

.method public setSwipeRatio(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "duration"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 952
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 953
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeRatio:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 955
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetSwipeRatioSASlide(IFFF)V

    .line 957
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, p0, v1, p4}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 958
    return-void
.end method

.method public setSwipeType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1187
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mSwipeType:I

    .line 1188
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetSwipeTypeSASlide(II)V

    .line 1189
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1190
    return-void
.end method

.method public setTextureRegion(FFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 811
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setTextureRegion(FFFFI)V

    .line 812
    return-void
.end method

.method public setTextureRegion(FFFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 1328
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 1329
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 1330
    iget-object v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mTextureRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 1331
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetTextureRegionSASlide(IFFFF)V

    .line 1332
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, p5}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 1333
    return-void
.end method

.method public setZOrderType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1164
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZOrderType:I

    .line 1166
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetZOrderTypeSASlide(II)V

    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/slide/SASlide;->invalidate()V

    .line 1168
    return-void
.end method

.method public setZPosition(F)V
    .locals 1
    .parameter "zPosition"

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 524
    return-void
.end method

.method public setZPosition(FI)V
    .locals 2
    .parameter "zPosition"
    .parameter "duration"

    .prologue
    .line 898
    iput p1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mZPosition:F

    .line 900
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeSetZPositionSASlide(IF)V

    .line 902
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, p2}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestImplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;II)V

    .line 903
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 2211
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    if-eqz v2, :cond_2

    .line 2212
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getLightType()I

    move-result v0

    .line 2213
    .local v0, lightType:I
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getScaleType()I

    move-result v1

    .line 2215
    .local v1, scaleType:I
    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {p0, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightType(I)V

    .line 2217
    :cond_0
    if-nez v1, :cond_1

    .line 2218
    invoke-virtual {p0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImageScaleType(I)V

    .line 2220
    :cond_1
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->registerListener()V

    .line 2221
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestExplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 2222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    .line 2224
    .end local v0           #lightType:I
    .end local v1           #scaleType:I
    :cond_2
    return-void
.end method

.method public startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2232
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getLightType()I

    move-result v0

    .line 2233
    .local v0, lightType:I
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->getScaleType()I

    move-result v1

    .line 2235
    .local v1, scaleType:I
    if-eqz v0, :cond_0

    .line 2236
    invoke-virtual {p0, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->setLightType(I)V

    .line 2237
    :cond_0
    if-nez v1, :cond_1

    .line 2238
    invoke-virtual {p0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImageScaleType(I)V

    .line 2240
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/animation/SAAnimation;->registerListener()V

    .line 2241
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestExplicitAnimation(Lcom/sec/android/samsunganimation/slide/SASlide;Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 2242
    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    if-eqz v2, :cond_2

    .line 2243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mAnimation:Lcom/sec/android/samsunganimation/animation/SAAnimation;

    .line 2245
    :cond_2
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 2251
    iget v0, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-static {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->nativeStopAnimationSASlide(I)V

    .line 2252
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->requestRender()V

    .line 2253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2167
    const-string v0, ""

    .line 2168
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mNativeSlide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    iget-boolean v1, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mHidden:Z

    if-eqz v1, :cond_0

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/samsunganimation/slide/SASlide;->mRegion:Lcom/sec/android/samsunganimation/basetype/SARect;

    iget-object v2, v2, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2174
    return-object v0
.end method
