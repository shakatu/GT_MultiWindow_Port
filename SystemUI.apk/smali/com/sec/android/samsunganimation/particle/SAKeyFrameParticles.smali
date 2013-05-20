.class public Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;
.super Lcom/sec/android/samsunganimation/particle/SAParticles;
.source "SAKeyFrameParticles.java"


# instance fields
.field protected mKeyTime:F

.field private mNativeHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SamsungAnimation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/particle/SAParticles;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->mNativeHandle:I

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->initialize()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->mKeyTime:F

    .line 11
    invoke-static {}, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->nativeCreateKeyFrameParticles()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->mNativeHandle:I

    .line 12
    return-void
.end method

.method private static native nativeCreateKeyFrameParticles()I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 16
    iget v0, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->mNativeHandle:I

    if-eq v0, v1, :cond_0

    .line 18
    iput v1, p0, Lcom/sec/android/samsunganimation/particle/SAKeyFrameParticles;->mNativeHandle:I

    .line 20
    :cond_0
    return-void
.end method
