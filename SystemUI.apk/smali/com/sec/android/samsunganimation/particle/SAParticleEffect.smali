.class public Lcom/sec/android/samsunganimation/particle/SAParticleEffect;
.super Ljava/lang/Object;
.source "SAParticleEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsunganimation/particle/SAParticleEffect$ParticleEffectType;
    }
.end annotation


# instance fields
.field protected mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field protected mColorKeyFrameDuration:I

.field protected mColorKeyFrameInterpolaterType:I

.field protected mDuration:I

.field protected mNativeHandle:I

.field protected mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mPositionKeyFrameDuration:I

.field protected mPositionKeyFrameInterpolaterType:I

.field protected mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field protected mScaleKeyFrameDuration:I

.field protected mScaleKeyFrameInterpolaterType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->initialize()V

    .line 24
    invoke-static {}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeCreateParticleEffect()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    .line 25
    return-void
.end method

.method protected static native nativeAddColorKeyFrame(IFFFFF)V
.end method

.method protected static native nativeAddParticles(II)V
.end method

.method protected static native nativeAddPositionKeyFrame(IFFFF)V
.end method

.method protected static native nativeAddScaleKeyFrame(IFFFF)V
.end method

.method private static native nativeCreateParticleEffect()I
.end method

.method protected static native nativeSetColor(IFFFF)V
.end method

.method protected static native nativeSetColorKeyFrameAnimationProperty(IIII)V
.end method

.method protected static native nativeSetDuration(II)V
.end method

.method protected static native nativeSetPosition(IFFF)V
.end method

.method protected static native nativeSetPositionKeyFrameAnimationProperty(IIII)V
.end method

.method protected static native nativeSetScale(IFFF)V
.end method

.method protected static native nativeSetScaleKeyFrameAnimationProperty(IIII)V
.end method


# virtual methods
.method public addColorKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 6
    .parameter "keyTime"
    .parameter "color"

    .prologue
    .line 158
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget v4, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeAddColorKeyFrame(IFFFFF)V

    .line 159
    return-void
.end method

.method public addParticles(Lcom/sec/android/samsunganimation/particle/SAParticles;)V
    .locals 2
    .parameter "particles"

    .prologue
    .line 169
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticles;->getNativeHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeAddParticles(II)V

    .line 170
    return-void
.end method

.method public addPositionKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 4
    .parameter "keyTime"
    .parameter "position"

    .prologue
    .line 163
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v1, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeAddPositionKeyFrame(IFFFF)V

    .line 164
    return-void
.end method

.method public addScaleKeyFrame(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 4
    .parameter "keyTime"
    .parameter "scale"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v1, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget v2, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget v3, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeAddScaleKeyFrame(IFFFF)V

    .line 154
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

    .line 41
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    if-eq v0, v1, :cond_0

    .line 43
    iput v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    .line 45
    :cond_0
    return-void
.end method

.method public getNativeHandle()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected initialize()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    .line 30
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 31
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 32
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 34
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v3, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 35
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v4, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v4, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v4, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 36
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v4, v3, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v4, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v4, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v4, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 37
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 109
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 110
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 111
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput p4, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 113
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetColor(IFFFF)V

    .line 114
    return-void
.end method

.method public setColor(Lcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 4
    .parameter "color"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 99
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 100
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 101
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 103
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v3, v3, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->setColor(FFFF)V

    .line 104
    return-void
.end method

.method public setColorKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 129
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColorKeyFrameDuration:I

    .line 130
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColorKeyFrameInterpolaterType:I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColorKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mColorKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetColorKeyFrameAnimationProperty(IIII)V

    .line 137
    return-void
.end method

.method public setDuration(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 54
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mDuration:I

    .line 56
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mDuration:I

    invoke-static {v0, v1}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetDuration(II)V

    .line 57
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 71
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 72
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 74
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetPosition(IFFF)V

    .line 75
    return-void
.end method

.method public setPosition(Lcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 62
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 63
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 65
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->setPosition(FFF)V

    .line 66
    return-void
.end method

.method public setPositionKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 141
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPositionKeyFrameDuration:I

    .line 142
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPositionKeyFrameInterpolaterType:I

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPositionKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mPositionKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetPositionKeyFrameAnimationProperty(IIII)V

    .line 149
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 89
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 90
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput p3, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 92
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetScale(IFFF)V

    .line 93
    return-void
.end method

.method public setScale(Lcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 80
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 81
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, p1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 83
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->setScale(FFF)V

    .line 84
    return-void
.end method

.method public setScaleKeyFrameAnimationProperty(IIZ)V
    .locals 4
    .parameter "duration"
    .parameter "interpolatorType"
    .parameter "keyValueReset"

    .prologue
    .line 118
    iput p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScaleKeyFrameDuration:I

    .line 119
    iput p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScaleKeyFrameInterpolaterType:I

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, reset:I
    if-eqz p3, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_0
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mNativeHandle:I

    iget v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScaleKeyFrameDuration:I

    iget v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->mScaleKeyFrameInterpolaterType:I

    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/samsunganimation/particle/SAParticleEffect;->nativeSetScaleKeyFrameAnimationProperty(IIII)V

    .line 126
    return-void
.end method
