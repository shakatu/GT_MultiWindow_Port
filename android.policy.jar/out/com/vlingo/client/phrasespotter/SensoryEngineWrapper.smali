.class public Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;
    .registers 3

    .prologue
    .line 12
    const-class v1, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-nez v0, :cond_1c

    .line 14
    const-string v0, "SensoryEngineWrapper"

    const-string v2, "getInstance() : make new SensoryJNI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->init()V

    .line 17
    new-instance v0, Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-direct {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;-><init>()V

    sput-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 24
    :goto_18
    sget-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    monitor-exit v1

    return-object v0

    .line 21
    :cond_1c
    :try_start_1c
    const-string v0, "SensoryEngineWrapper"

    const-string v2, "getInstance() : get existed SensoryJNI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 12
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method
