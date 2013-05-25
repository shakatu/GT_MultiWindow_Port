.class Lcom/android/server/ThermistorObserver$SIOPLevel;
.super Ljava/lang/Object;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIOPLevel"
.end annotation


# instance fields
.field private DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field private LcdFPS:I

.field private aclOn:Z

.field private cpuMaxCore:I

.field private displayBrightness:I

.field private flashLedDisable:Z

.field private limitChargingCurrent:I

.field private lockFrequency:I

.field private name:Ljava/lang/String;

.field private realOPFreq:I

.field private temperatureThreshold:I

.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V
    .registers 14
    .parameter
    .parameter "_name"
    .parameter "_temperature"
    .parameter "_frequency"
    .parameter "_cpuMaxCore"
    .parameter "_limitChargingCurrent"
    .parameter "_brightness"
    .parameter "_LcdFPS"
    .parameter "_flashLedDisable"
    .parameter "_aclOn"

    .prologue
    const/4 v1, -0x1

    .line 87
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    .line 88
    iput-object p2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I

    .line 90
    iput p4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    .line 91
    iput p5, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    .line 92
    iput p6, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    .line 93
    iput p7, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    .line 94
    iput p8, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    .line 95
    iput-boolean p9, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    .line 96
    iput-boolean p10, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z

    .line 98
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    if-ne v0, v1, :cond_9e

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    .line 105
    :goto_21
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIOPLevel : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lockFrequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  cpuMaxCore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  limitChargingCurrent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  displayBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  LcdFPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  flashLedDisable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ACL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 102
    :cond_9e
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->newProperDVFSLock(I)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    goto/16 :goto_21
.end method

.method static synthetic access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->aclOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    return v0
.end method

.method private newProperDVFSLock(I)Landroid/os/PowerManager$DVFSLock;
    .registers 10
    .parameter "freq"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, foundDVFSLock:Landroid/os/PowerManager$DVFSLock;
    iget-object v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 114
    .local v3, supportedFreq:[I
    if-eqz v3, :cond_3a

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, i:I
    const/4 v2, 0x0

    :goto_f
    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 117
    aget v4, v3, v2

    if-gt v4, p1, :cond_32

    .line 121
    :cond_16
    array-length v4, v3

    if-ne v2, v4, :cond_1c

    .line 122
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .line 125
    :cond_1c
    aget v4, v3, v2

    iput v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    .line 128
    :try_start_20
    iget-object v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;

    move-result-object v4

    const/4 v5, 0x2

    aget v6, v3, v2

    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_35

    move-result-object v1

    .line 138
    .end local v2           #i:I
    :goto_31
    return-object v1

    .line 116
    .restart local v2       #i:I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 129
    :catch_35
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :cond_3a
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "newProperDVFSLock : getSupportedFrequency : null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_31
.end method
