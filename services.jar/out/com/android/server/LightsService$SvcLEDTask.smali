.class Lcom/android/server/LightsService$SvcLEDTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SvcLEDTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$SvcLEDTask;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2000(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 401
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] mAlarmManagerForSvcLED is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_f
    return-void

    .line 404
    :cond_10
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v7

    monitor-enter v7

    .line 405
    :try_start_17
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2000(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2100(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 406
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2000(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I
    invoke-static {v4}, Lcom/android/server/LightsService;->access$2200(Lcom/android/server/LightsService;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/LightsService$SvcLEDTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/LightsService;->access$2100(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 409
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] SvcLEDTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit v7

    goto :goto_f

    :catchall_4a
    move-exception v0

    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4a

    throw v0
.end method
