.class public Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;
.super Ljava/lang/Object;
.source "SAParticleEffectInfo.java"


# instance fields
.field private mParticlesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParticlesListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesList:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public addParticlesFromInfo(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->getClone()Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    .line 20
    return-void
.end method

.method public getParticlesInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticleEffectInfo;->mParticlesList:Ljava/util/List;

    return-object v0
.end method
