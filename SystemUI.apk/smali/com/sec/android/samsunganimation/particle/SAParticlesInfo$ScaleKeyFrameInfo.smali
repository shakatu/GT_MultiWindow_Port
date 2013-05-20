.class public Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;
.super Ljava/lang/Object;
.source "SAParticlesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleKeyFrameInfo"
.end annotation


# instance fields
.field public mKeyTime:F

.field public mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field final synthetic this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 26
    iput-object p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mKeyTime:F

    .line 28
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 29
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 30
    return-void
.end method
