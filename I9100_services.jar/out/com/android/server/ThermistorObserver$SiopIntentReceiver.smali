.class final Lcom/android/server/ThermistorObserver$SiopIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SiopIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;-><init>(Lcom/android/server/ThermistorObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermistor Intent Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    monitor-enter v2

    .line 273
    :try_start_21
    const-string v1, "cp_siop_level"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, currentLevelFromCP:I
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-eq v0, v1, :cond_54

    .line 275
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/ThermistorObserver;->changeState(I)V

    .line 276
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    #setter for: Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->access$302(Lcom/android/server/ThermistorObserver;I)I

    .line 277
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SiopIntentReceiver : currentLevelFromCP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_54
    monitor-exit v2

    .line 280
    return-void

    .line 279
    .end local v0           #currentLevelFromCP:I
    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v1
.end method
