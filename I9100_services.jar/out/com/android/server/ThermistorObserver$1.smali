.class Lcom/android/server/ThermistorObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x14

    const/4 v5, -0x1

    .line 593
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    monitor-enter v2

    .line 594
    :try_start_6
    const-string v1, "level"

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, currentBatteryLevel:I
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBR : currentBatteryLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mLatestBatteryLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-ne v0, v5, :cond_49

    .line 598
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mBatteryBR : ERROR : getting Battery Level is fail "

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit v2

    .line 633
    :goto_48
    return-void

    .line 602
    :cond_49
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsLaunchedLimitCharging:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1400(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 603
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mBatteryBR : ERROR : mIsLaunchedLimitCharging : false"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v2

    goto :goto_48

    .line 632
    .end local v0           #currentBatteryLevel:I
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5c

    throw v1

    .line 607
    .restart local v0       #currentBatteryLevel:I
    :cond_5f
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-ne v1, v5, :cond_7f

    .line 608
    if-le v0, v6, :cond_78

    .line 609
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v3

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v3

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V

    .line 631
    :cond_78
    :goto_78
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #setter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->access$1302(Lcom/android/server/ThermistorObserver;I)I

    .line 632
    monitor-exit v2

    goto :goto_48

    .line 613
    :cond_7f
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-eq v0, v1, :cond_78

    .line 614
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLatestBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-le v0, v1, :cond_ab

    .line 615
    const/16 v1, 0x19

    if-le v0, v1, :cond_78

    .line 616
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1700(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 617
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v3

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$1000(Lcom/android/server/ThermistorObserver$SIOPLevel;)I

    move-result v3

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V

    goto :goto_78

    .line 622
    :cond_ab
    if-gt v0, v6, :cond_78

    .line 623
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIsChargingCurrentLimited:Z
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1700(Lcom/android/server/ThermistorObserver;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_78

    .line 624
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v3, 0x0

    #calls: Lcom/android/server/ThermistorObserver;->limitChargingCurrent(I)V
    invoke-static {v1, v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;I)V
    :try_end_bc
    .catchall {:try_start_5f .. :try_end_bc} :catchall_5c

    goto :goto_78
.end method
