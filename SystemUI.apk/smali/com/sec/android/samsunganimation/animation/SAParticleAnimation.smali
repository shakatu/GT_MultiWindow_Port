.class public Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;
.super Lcom/sec/android/samsunganimation/animation/SAAnimation;
.source "SAParticleAnimation.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/animation/SAAnimation;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;->initializeSAParticleAnimation()V

    .line 37
    return-void
.end method

.method private static native nativeCreateSAParticleAnimation()I
.end method

.method private static native nativeSetKeyFrameParticleEffect(II)V
.end method

.method private static native nativeSetParticleEffect(II)V
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;->deleteNativeAnimationHandle()V

    .line 71
    return-void
.end method

.method public initializeSAParticleAnimation()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;->nativeCreateSAParticleAnimation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimation;->mNativeAnimation:I

    .line 45
    return-void
.end method

.method public setParticleEffect(Lcom/sec/android/samsunganimation/particle/SAParticleEffect;)V
    .locals 2
    .parameter "particleEffect"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 51
    iget v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimation;->mNativeAnimation:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;->nativeSetParticleEffect(II)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 55
    iget v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimation;->mNativeAnimation:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/animation/SAParticleAnimation;->nativeSetKeyFrameParticleEffect(II)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "SamsungAnimation"

    const-string v1, "ParticleEffectInfo\'s type not supported !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
