.class public Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;
.super Lcom/sec/android/samsunganimation/particle/SAParticleEffect;
.source "SAKeyFrameParticleEffect.java"


# instance fields
.field protected mGeneratorPositionKeyFrameDuration:I

.field protected mGeneratorPositionKeyFrameInterpolaterType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->initialize()V

    .line 10
    invoke-static {}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->nativeCreateKeyFrameParticleEffect()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    .line 11
    return-void
.end method

.method protected static native nativeAddGeneratorPositionKeyFrame(IFFFF)V
.end method

.method protected static native nativeAddParticles(IFI)V
.end method

.method private static native nativeCreateKeyFrameParticleEffect()I
.end method

.method protected static native nativeSetGeneratorPositionKeyFrameAnimationProperty(IIII)V
.end method


# virtual methods
.method public addGeneratorPositionKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 4
    .parameter "keyTime"
    .parameter "pos"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v1, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->nativeAddGeneratorPositionKeyFrame(IFFFF)V

    .line 52
    return-void
.end method

.method public addParticles(FLcom/sec/android/samsunganimation/particle/SAParticles;)V
    .locals 2
    .parameter "keyTime"
    .parameter "particles"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    invoke-virtual {p2}, Lcom/sec/android/samsunganimation/particle/SAParticles;->getNativeHandle()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->nativeAddParticles(IFI)V

    .line 35
    return-void
.end method

.method public addParticles(Lcom/sec/android/samsunganimation/particle/SAParticles;)V
    .locals 1
    .parameter "particles"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->addParticles(FLcom/sec/android/samsunganimation/particle/SAParticles;)V

    .line 30
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

    .line 15
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    if-eq v0, v1, :cond_0

    .line 17
    iput v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    .line 19
    :cond_0
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    return v0
.end method

.method public setGeneratorPositionKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->mGeneratorPositionKeyFrameDuration:I

    .line 40
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->mGeneratorPositionKeyFrameInterpolaterType:I

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->mGeneratorPositionKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->mGeneratorPositionKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticleEffect;->nativeSetGeneratorPositionKeyFrameAnimationProperty(IIII)V

    .line 47
    return-void
.end method
