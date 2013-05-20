.class public Lcom/sec/android/samsunganimation/particle/SAParticles;
.super Ljava/lang/Object;
.source "SAParticles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsunganimation/particle/SAParticles$ParticleBlendType;
    }
.end annotation


# instance fields
.field protected mBlendType:I

.field protected mColorKeyFrameDuration:I

.field protected mColorKeyFrameInterpolaterType:I

.field protected mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

.field protected mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field protected mMaxDuration:I

.field protected mMaxMass:F

.field protected mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mNativeHandle:I

.field protected mParticleCount:I

.field protected mPositionKeyFrameDuration:I

.field protected mPositionKeyFrameInterpolaterType:I

.field protected mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field protected mRandomDuration:I

.field protected mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mRandomMass:F

.field protected mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mScaleKeyFrameDuration:I

.field protected mScaleKeyFrameInterpolaterType:I

.field protected mTextureFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    .line 21
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/particle/SAParticles;->initialize()V

    .line 23
    invoke-static {}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeCreateParticles()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    .line 24
    return-void
.end method

.method protected static native nativeAddColorKeyFrame(IFFFFF)V
.end method

.method protected static native nativeAddPositionKeyFrame(IFFFF)V
.end method

.method protected static native nativeAddScaleKeyFrame(IFFFF)V
.end method

.method private static native nativeCreateParticles()I
.end method

.method protected static native nativeSetColorKeyFrameAnimationProperty(IIII)V
.end method

.method protected static native nativeSetDefaultForce(IFFF)V
.end method

.method protected static native nativeSetDefaultGravity(IFFF)V
.end method

.method protected static native nativeSetDefaultPosition(IFFF)V
.end method

.method protected static native nativeSetMaxColor(IFFFF)V
.end method

.method protected static native nativeSetMaxDuration(II)V
.end method

.method protected static native nativeSetMaxMass(IF)V
.end method

.method protected static native nativeSetMaxSize(IFFF)V
.end method

.method protected static native nativeSetParticleCount(II)V
.end method

.method protected static native nativeSetPositionKeyFrameAnimationProperty(IIII)V
.end method

.method protected static native nativeSetRandomColor(IFFFF)V
.end method

.method protected static native nativeSetRandomDuration(II)V
.end method

.method protected static native nativeSetRandomForce(IFFF)V
.end method

.method protected static native nativeSetRandomGravity(IFFF)V
.end method

.method protected static native nativeSetRandomMass(IF)V
.end method

.method protected static native nativeSetRandomPosition(IFFF)V
.end method

.method protected static native nativeSetRandomSize(IFFF)V
.end method

.method protected static native nativeSetScaleKeyFrameAnimationProperty(IIII)V
.end method

.method protected static native nativeSetTextureFile(ILjava/lang/String;I)V
.end method


# virtual methods
.method public addColorKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 6
    .parameter "keyTime"
    .parameter "color"

    .prologue
    .line 322
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget v4, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeAddColorKeyFrame(IFFFFF)V

    .line 323
    return-void
.end method

.method public addPositionKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 4
    .parameter "keyTime"
    .parameter "position"

    .prologue
    .line 327
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v1, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeAddPositionKeyFrame(IFFFF)V

    .line 328
    return-void
.end method

.method public addScaleKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 4
    .parameter "keyTime"
    .parameter "scale"

    .prologue
    .line 317
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v1, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeAddScaleKeyFrame(IFFFF)V

    .line 318
    return-void
.end method

.method public copy(Lcom/sec/android/samsunganimation/particle/SAParticles;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 89
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mParticleCount:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mParticleCount:I

    .line 90
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mTextureFileName:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mTextureFileName:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxDuration:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxDuration:I

    .line 92
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomDuration:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomDuration:I

    .line 94
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    .line 95
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    .line 96
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    .line 97
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    .line 98
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    .line 99
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    .line 101
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 102
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 103
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 104
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 105
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 106
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 107
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 108
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 109
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 110
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 111
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 112
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 113
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 114
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 115
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 116
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 117
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 118
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 119
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 120
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 121
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 122
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 123
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 124
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 125
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 126
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 127
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxMass:F

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxMass:F

    .line 128
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomMass:F

    iput v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomMass:F

    .line 129
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 130
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 131
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 132
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 133
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 134
    iget-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 135
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    iput-object v0, p1, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 137
    iput v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    .line 138
    iput v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    .line 139
    iput v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    .line 140
    iput v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    .line 141
    iput v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    .line 142
    iput v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    .line 143
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 79
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    if-eq v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 82
    iput v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    .line 84
    :cond_0
    return-void
.end method

.method public getNativeHandle()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    return v0
.end method

.method protected initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mParticleCount:I

    .line 29
    iput-object v8, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mTextureFileName:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxDuration:I

    .line 31
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomDuration:I

    .line 33
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mBlendType:I

    .line 35
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    .line 36
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    .line 37
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    .line 38
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    .line 39
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    .line 40
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    .line 43
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 44
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 45
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 46
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 47
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 48
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 49
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 50
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 51
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 52
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 55
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 56
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 57
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v7, v3, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v7, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v7, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v7, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 58
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v5, v3, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 59
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 60
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 61
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 62
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 63
    iput v7, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxMass:F

    .line 64
    iput v5, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomMass:F

    .line 65
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v7, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v7, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v7, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 66
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v5, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 67
    iput-object v8, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 69
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    .line 70
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    .line 71
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    .line 72
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    .line 73
    iput v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    .line 74
    iput v6, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    .line 75
    return-void
.end method

.method public setColorKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 293
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    .line 294
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mColorKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetColorKeyFrameAnimationProperty(IIII)V

    .line 301
    return-void
.end method

.method public setDefaultForce(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 251
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 252
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 254
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetDefaultForce(IFFF)V

    .line 255
    return-void
.end method

.method public setDefaultGravity(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 233
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 234
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 236
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetDefaultGravity(IFFF)V

    .line 237
    return-void
.end method

.method public setDefaultPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 195
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 196
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 198
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetDefaultPosition(IFFF)V

    .line 199
    return-void
.end method

.method public setMaxColor(FFFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 213
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 214
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 215
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 217
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetMaxColor(IFFFF)V

    .line 218
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 162
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxDuration:I

    .line 164
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetMaxDuration(II)V

    .line 165
    return-void
.end method

.method public setMaxMass(F)V
    .locals 1
    .parameter "mass"

    .prologue
    .line 268
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxMass:F

    .line 270
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetMaxMass(IF)V

    .line 271
    return-void
.end method

.method public setMaxSize(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 177
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 178
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mMaxParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 180
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetMaxSize(IFFF)V

    .line 181
    return-void
.end method

.method public setParticleCount(I)V
    .locals 2
    .parameter "particleCount"

    .prologue
    .line 155
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mParticleCount:I

    .line 157
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mParticleCount:I

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetParticleCount(II)V

    .line 158
    return-void
.end method

.method public setPositionKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 305
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    .line 306
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mPositionKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetPositionKeyFrameAnimationProperty(IIII)V

    .line 313
    return-void
.end method

.method public setRandomColor(FFFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 223
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 224
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 225
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 227
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomColor(IFFFF)V

    .line 228
    return-void
.end method

.method public setRandomDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 169
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomDuration:I

    .line 171
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomDuration(II)V

    .line 172
    return-void
.end method

.method public setRandomForce(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 260
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 261
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 263
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomForce(IFFF)V

    .line 264
    return-void
.end method

.method public setRandomGravity(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 242
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 243
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 245
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomGravity(IFFF)V

    .line 246
    return-void
.end method

.method public setRandomMass(F)V
    .locals 1
    .parameter "mass"

    .prologue
    .line 275
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomMass:F

    .line 277
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomMass(IF)V

    .line 278
    return-void
.end method

.method public setRandomPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 204
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 205
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 207
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomPosition(IFFF)V

    .line 208
    return-void
.end method

.method public setRandomSize(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 186
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 187
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 189
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetRandomSize(IFFF)V

    .line 190
    return-void
.end method

.method public setScaleKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 282
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    .line 283
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mScaleKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetScaleKeyFrameAnimationProperty(IIII)V

    .line 290
    return-void
.end method

.method public setTextureFile(Ljava/lang/String;Lcom/sec/android/samsunganimation/basetype/SAImage;)V
    .locals 3
    .parameter "textureFileName"
    .parameter "image"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mTextureFileName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 150
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mNativeHandle:I

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mTextureFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticles;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/basetype/SAImage;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/samsunganimation/particle/SAParticles;->nativeSetTextureFile(ILjava/lang/String;I)V

    .line 151
    return-void
.end method
