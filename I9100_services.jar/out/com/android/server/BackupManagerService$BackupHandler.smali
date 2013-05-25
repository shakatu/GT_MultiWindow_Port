.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 488
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 492
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_484

    .line 740
    :goto_7
    :pswitch_7
    return-void

    .line 496
    :pswitch_8
    const/16 v30, 0x0

    .line 497
    .local v30, transport:Lcom/android/internal/backup/IBackupTransport;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-nez v5, :cond_6d

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v30

    .line 505
    :goto_3a
    if-nez v30, :cond_83

    .line 506
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 508
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 510
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v5, :cond_62

    .line 511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x1

    const/4 v8, -0x3

    #calls: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(ZI)V
    invoke-static {v5, v7, v8}, Lcom/android/server/BackupManagerService;->access$200(Lcom/android/server/BackupManagerService;ZI)V

    .line 514
    :cond_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_80

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 502
    :cond_6d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mEdmTransportName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v30

    goto :goto_3a

    .line 514
    :catchall_80
    move-exception v5

    :try_start_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v5

    .line 520
    :cond_83
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v24, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v20, v0

    .line 522
    .local v20, oldJournal:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 527
    :try_start_97
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-nez v5, :cond_112

    .line 528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_e7

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_b9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 530
    .local v16, b:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b9

    .line 547
    .end local v16           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v18           #i$:Ljava/util/Iterator;
    :catchall_cd
    move-exception v5

    monitor-exit v6
    :try_end_cf
    .catchall {:try_start_97 .. :try_end_cf} :catchall_cd

    throw v5

    .line 532
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_d0
    :try_start_d0
    const-string v5, "BackupManagerService"

    const-string v7, "clearing pending backups"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 547
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_e7
    :goto_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_d0 .. :try_end_e8} :catchall_cd

    .line 554
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_132

    .line 556
    new-instance v22, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 557
    .local v22, pbt:Lcom/android/server/BackupManagerService$PerformBackupTask;
    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    .line 558
    .local v23, pbtMessage:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 540
    .end local v22           #pbt:Lcom/android/server/BackupManagerService$PerformBackupTask;
    .end local v23           #pbtMessage:Landroid/os/Message;
    :cond_112
    :try_start_112
    new-instance v27, Lcom/android/server/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v7}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 541
    .local v27, request:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_131
    .catchall {:try_start_112 .. :try_end_131} :catchall_cd

    goto :goto_e7

    .line 560
    .end local v27           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_132
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 562
    :try_start_140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 563
    monitor-exit v6
    :try_end_148
    .catchall {:try_start_140 .. :try_end_148} :catchall_153

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 563
    :catchall_153
    move-exception v5

    :try_start_154
    monitor-exit v6
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw v5

    .line 572
    .end local v20           #oldJournal:Ljava/io/File;
    .end local v24           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v30           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_156
    :try_start_156
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .line 574
    .local v4, task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_15f
    .catch Ljava/lang/ClassCastException; {:try_start_156 .. :try_end_15f} :catch_161

    goto/16 :goto_7

    .line 575
    .end local v4           #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_161
    move-exception v17

    .line 576
    .local v17, e:Ljava/lang/ClassCastException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid backup task in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 584
    .end local v17           #e:Ljava/lang/ClassCastException;
    :pswitch_180
    :try_start_180
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    .line 585
    .restart local v4       #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->operationComplete()V
    :try_end_189
    .catch Ljava/lang/ClassCastException; {:try_start_180 .. :try_end_189} :catch_18b

    goto/16 :goto_7

    .line 586
    .end local v4           #task:Lcom/android/server/BackupManagerService$BackupRestoreTask;
    :catch_18b
    move-exception v17

    .line 587
    .restart local v17       #e:Ljava/lang/ClassCastException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid completion in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 596
    .end local v17           #e:Ljava/lang/ClassCastException;
    :pswitch_1aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$FullBackupParams;

    .line 597
    .local v21, params:Lcom/android/server/BackupManagerService$FullBackupParams;
    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v21

    iget-boolean v9, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-boolean v12, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    move-object/from16 v0, v21

    iget-boolean v13, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v4 .. v15}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 601
    .local v4, task:Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 607
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .end local v21           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    :pswitch_1ed
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 608
    .local v21, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v4, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v21

    iget v11, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move-object/from16 v0, v21

    iget-boolean v12, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    invoke-direct/range {v4 .. v13}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .line 613
    .local v4, task:Lcom/android/server/BackupManagerService$PerformRestoreTask;
    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 614
    .local v28, restoreMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 622
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformRestoreTask;
    .end local v21           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    .end local v28           #restoreMsg:Landroid/os/Message;
    :pswitch_247
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$FullRestoreParams;

    .line 623
    .local v21, params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 626
    .local v4, task:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 632
    .end local v4           #task:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
    .end local v21           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    :pswitch_276
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$ClearParams;

    .line 633
    .local v21, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_7

    .line 642
    .end local v21           #params:Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 643
    :try_start_29b
    new-instance v25, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 644
    .local v25, queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 645
    monitor-exit v6
    :try_end_2b2
    .catchall {:try_start_29b .. :try_end_2b2} :catchall_2c2

    .line 647
    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v25

    invoke-direct {v5, v6, v0}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_7

    .line 645
    .end local v25           #queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2c2
    move-exception v5

    :try_start_2c3
    monitor-exit v6
    :try_end_2c4
    .catchall {:try_start_2c3 .. :try_end_2c4} :catchall_2c2

    throw v5

    .line 654
    :pswitch_2c5
    const/16 v29, 0x0

    .line 655
    .local v29, sets:[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .line 657
    .local v21, params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_2cf
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v29

    .line 659
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    monitor-enter v6
    :try_end_2dc
    .catchall {:try_start_2cf .. :try_end_2dc} :catchall_378
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2dc} :catch_31d

    .line 660
    :try_start_2dc
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 661
    monitor-exit v6
    :try_end_2e5
    .catchall {:try_start_2dc .. :try_end_2e5} :catchall_31a

    .line 662
    if-nez v29, :cond_2ef

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_2ea
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2ef
    .catchall {:try_start_2ea .. :try_end_2ef} :catchall_378
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2ef} :catch_31d

    .line 666
    :cond_2ef
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_2fe

    .line 668
    :try_start_2f5
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2fe
    .catch Landroid/os/RemoteException; {:try_start_2f5 .. :try_end_2fe} :catch_350
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fe} :catch_359

    .line 677
    :cond_2fe
    :goto_2fe
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 678
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 661
    :catchall_31a
    move-exception v5

    :try_start_31b
    monitor-exit v6
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31a

    :try_start_31c
    throw v5
    :try_end_31d
    .catchall {:try_start_31c .. :try_end_31d} :catchall_378
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_31d} :catch_31d

    .line 663
    :catch_31d
    move-exception v17

    .line 664
    .local v17, e:Ljava/lang/Exception;
    :try_start_31e
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_325
    .catchall {:try_start_31e .. :try_end_325} :catchall_378

    .line 666
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_334

    .line 668
    :try_start_32b
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v29

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_334
    .catch Landroid/os/RemoteException; {:try_start_32b .. :try_end_334} :catch_364
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_334} :catch_36d

    .line 677
    :cond_334
    :goto_334
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 678
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 669
    .end local v17           #e:Ljava/lang/Exception;
    :catch_350
    move-exception v26

    .line 670
    .local v26, re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fe

    .line 671
    .end local v26           #re:Landroid/os/RemoteException;
    :catch_359
    move-exception v17

    .line 672
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2fe

    .line 669
    :catch_364
    move-exception v26

    .line 670
    .restart local v26       #re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_334

    .line 671
    .end local v26           #re:Landroid/os/RemoteException;
    :catch_36d
    move-exception v17

    .line 672
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_334

    .line 666
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_378
    move-exception v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v6, :cond_388

    .line 668
    :try_start_37f
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_388
    .catch Landroid/os/RemoteException; {:try_start_37f .. :try_end_388} :catch_3a3
    .catch Ljava/lang/Exception; {:try_start_37f .. :try_end_388} :catch_3ac

    .line 677
    :cond_388
    :goto_388
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 678
    const/16 v6, 0x8

    const-wide/32 v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 669
    :catch_3a3
    move-exception v26

    .line 670
    .restart local v26       #re:Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_388

    .line 671
    .end local v26           #re:Landroid/os/RemoteException;
    :catch_3ac
    move-exception v17

    .line 672
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_388

    .line 687
    .end local v17           #e:Ljava/lang/Exception;
    .end local v21           #params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v29           #sets:[Landroid/app/backup/RestoreSet;
    :pswitch_3b7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 693
    :pswitch_3c8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    monitor-enter v6

    .line 694
    :try_start_3cd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v5, :cond_417

    .line 699
    const-string v5, "BackupManagerService"

    const-string v7, "Restore session timed out; aborting"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, -0x3

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v5, v7}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V

    .line 705
    new-instance v19, Landroid/content/Intent;

    const-string v5, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    .end local v19           #intent:Landroid/content/Intent;
    :cond_417
    monitor-exit v6
    :try_end_418
    .catchall {:try_start_3cd .. :try_end_418} :catchall_461

    .line 714
    :pswitch_418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6

    .line 715
    :try_start_41f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/BackupManagerService$FullParams;

    .line 716
    .local v21, params:Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v21, :cond_464

    .line 717
    const-string v5, "BackupManagerService"

    const-string v7, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 726
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_452
    .catchall {:try_start_41f .. :try_end_452} :catchall_45e

    if-eqz v5, :cond_45b

    .line 728
    :try_start_454
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v5}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_45b
    .catchall {:try_start_454 .. :try_end_45b} :catchall_45e
    .catch Landroid/os/RemoteException; {:try_start_454 .. :try_end_45b} :catch_481

    .line 736
    :cond_45b
    :goto_45b
    :try_start_45b
    monitor-exit v6

    goto/16 :goto_7

    .end local v21           #params:Lcom/android/server/BackupManagerService$FullParams;
    :catchall_45e
    move-exception v5

    monitor-exit v6
    :try_end_460
    .catchall {:try_start_45b .. :try_end_460} :catchall_45e

    throw v5

    .line 709
    :catchall_461
    move-exception v5

    :try_start_462
    monitor-exit v6
    :try_end_463
    .catchall {:try_start_462 .. :try_end_463} :catchall_461

    throw v5

    .line 734
    .restart local v21       #params:Lcom/android/server/BackupManagerService$FullParams;
    :cond_464
    :try_start_464
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t find params for token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_480
    .catchall {:try_start_464 .. :try_end_480} :catchall_45e

    goto :goto_45b

    .line 729
    :catch_481
    move-exception v5

    goto :goto_45b

    .line 492
    nop

    :pswitch_data_484
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1aa
        :pswitch_1ed
        :pswitch_276
        :pswitch_294
        :pswitch_2c5
        :pswitch_3b7
        :pswitch_3c8
        :pswitch_418
        :pswitch_247
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_156
        :pswitch_180
    .end packed-switch
.end method
