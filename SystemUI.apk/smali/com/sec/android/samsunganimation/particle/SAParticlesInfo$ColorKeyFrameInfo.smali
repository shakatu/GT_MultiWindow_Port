.class public Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;
.super Ljava/lang/Object;
.source "SAParticlesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorKeyFrameInfo"
.end annotation


# instance fields
.field public mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field public mKeyTime:F

.field final synthetic this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 38
    iput-object p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    .line 40
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 41
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 42
    return-void
.end method
