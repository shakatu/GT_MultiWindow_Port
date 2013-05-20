.class public Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;
.super Ljava/lang/Object;
.source "SAParticlesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;,
        Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ParticleBlendType;,
        Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;
    }
.end annotation


# instance fields
.field public mBlendType:I

.field public mColorKeyFrameDuration:I

.field private mColorKeyFrameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mColorKeyFrameInfoListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

.field public mColorKeyFrameInterpolaterType:I

.field public mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field public mDefaultDuration:I

.field public mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mDefaultMass:F

.field public mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field private mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

.field public mParticleCount:I

.field public mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

.field public mRandomDuration:I

.field public mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mRandomMass:F

.field public mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

.field public mScaleKeyFrameDuration:I

.field private mScaleKeyFrameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleKeyFrameInfoListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

.field public mScaleKeyFrameInterpolaterType:I

.field private mTextureFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mParticleCount:I

    .line 48
    iput-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mTextureFileName:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultDuration:I

    .line 50
    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomDuration:I

    .line 52
    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mBlendType:I

    .line 54
    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameDuration:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInterpolaterType:I

    .line 58
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 59
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 60
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 61
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAColor;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAColor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    .line 62
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 63
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 64
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 65
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 66
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 67
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    .line 70
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 71
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 72
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 73
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 74
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 75
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 76
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 77
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 78
    iput v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultMass:F

    .line 79
    iput v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomMass:F

    .line 80
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v2, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 81
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iput v1, v0, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 82
    iput-object v3, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public addColorKeyFrameFromInfo(FLcom/sec/android/samsunganimation/basetype/SAColor;)V
    .locals 6
    .parameter "keyTime"
    .parameter "color"

    .prologue
    .line 215
    new-instance v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    invoke-direct {v3, p0}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;-><init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V

    .line 216
    .local v3, info:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;
    iput p1, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    .line 217
    iget-object v4, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 218
    iget-object v4, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 219
    iget-object v4, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 220
    iget-object v4, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$2;

    invoke-direct {v1, p0}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$2;-><init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V

    .line 249
    .local v1, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;>;"
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    return-void

    .line 222
    .end local v1           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;>;"
    :cond_0
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    .line 223
    .local v0, colorInfo:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;
    iget v4, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;->mKeyTime:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addScaleKeyFrameFromInfo(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V
    .locals 6
    .parameter "keyTime"
    .parameter "scale"

    .prologue
    .line 177
    new-instance v2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

    invoke-direct {v2, p0}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;-><init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V

    .line 178
    .local v2, info:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;
    iput p1, v2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mKeyTime:F

    .line 179
    iget-object v4, v2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 180
    iget-object v4, v2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 181
    iget-object v4, v2, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mScale:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v5, p2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v5, v4, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 182
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$1;-><init>(Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;)V

    .line 210
    .local v0, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;>;"
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    return-void

    .line 183
    .end local v0           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;>;"
    :cond_0
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

    .line 184
    .local v3, scaleInfo:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;
    iget v4, v3, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;->mKeyTime:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClone()Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;-><init>()V

    .line 92
    .local v0, newParticle:Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mParticleCount:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mParticleCount:I

    .line 93
    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mTextureFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mTextureFileName:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultDuration:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultDuration:I

    .line 95
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomDuration:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomDuration:I

    .line 97
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameDuration:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameDuration:I

    .line 98
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInterpolaterType:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInterpolaterType:I

    .line 99
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameDuration:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameDuration:I

    .line 100
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInterpolaterType:I

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInterpolaterType:I

    .line 102
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 103
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 104
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 105
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 106
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 107
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomPosition:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 108
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 109
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 110
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 111
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 112
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mR:F

    .line 113
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mG:F

    .line 114
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mB:F

    .line 115
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomColor:Lcom/sec/android/samsunganimation/basetype/SAColor;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAColor;->mA:F

    .line 116
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 117
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 118
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 119
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 120
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 121
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomGravity:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 122
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 123
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 124
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 125
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 126
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 127
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomForce:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 128
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultMass:F

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultMass:F

    .line 129
    iget v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomMass:F

    iput v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomMass:F

    .line 130
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 131
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 132
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mDefaultParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 133
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mX:F

    .line 134
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mY:F

    .line 135
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mRandomParticleSize:Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v2, v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    iput v2, v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;->mZ:F

    .line 136
    iget-object v1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    iput-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 138
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

    .line 139
    iput-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;

    .line 142
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    .line 143
    iput-object v1, v0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoListObject:[Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;

    .line 146
    return-object v0
.end method

.method public getColorKeyFrameInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ColorKeyFrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mColorKeyFrameInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getImage()Lcom/sec/android/samsunganimation/basetype/SAImage;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    return-object v0
.end method

.method public getScaleKeyFrameInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/samsunganimation/particle/SAParticlesInfo$ScaleKeyFrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mScaleKeyFrameInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTextureFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mTextureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setTexture(Ljava/lang/String;Lcom/sec/android/samsunganimation/basetype/SAImage;)V
    .locals 0
    .parameter "textureFileName"
    .parameter "image"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mTextureFileName:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/sec/android/samsunganimation/particle/SAParticlesInfo;->mImage:Lcom/sec/android/samsunganimation/basetype/SAImage;

    .line 153
    return-void
.end method
