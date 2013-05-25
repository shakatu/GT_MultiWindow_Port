.class Lcom/android/server/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3382
    iput-object p1, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 3384
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3410
    :goto_8
    return-void

    .line 3387
    :cond_9
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-gez v0, :cond_19

    .line 3388
    const-string v0, "PowerManagerService"

    const-string v1, "updateAutoPowerOffTime :: mAutoPowerOffTimeoutSetting is not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3393
    :cond_19
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_97

    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-nez v0, :cond_97

    .line 3394
    :cond_33
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$8900(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3395
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;J)J

    .line 3396
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAutoPowerOffTime :: mAlarmManager is canceled. mIsPowered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mAutoPowerOffTimeoutSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 3406
    :try_start_7c
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 3407
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3409
    :cond_91
    monitor-exit v1

    goto/16 :goto_8

    :catchall_94
    move-exception v0

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_94

    throw v0

    .line 3399
    :cond_97
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-lez v0, :cond_75

    .line 3400
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    const v1, 0x36ee80

    iget-object v2, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x3e8

    int-to-long v1, v1

    #setter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;J)J

    .line 3401
    iget-object v0, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8900(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3402
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAutoPowerOffTime :: set the Power Off Time after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method
