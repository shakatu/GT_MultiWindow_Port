.class Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$2;
.super Ljava/lang/Object;
.source "SAParticlesInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->addColorKeyFrameFromInfo(FLcom/sec/android/samsunganimation/basetype/SAColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$2;->this$0:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget v1, p1, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    iget v2, p2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 238
    const/4 v0, -0x1

    goto :goto_0

    .line 240
    :cond_2
    iget v1, p1, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    iget v2, p2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    check-cast p2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$2;->compare(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;)I

    move-result v0

    return v0
.end method
