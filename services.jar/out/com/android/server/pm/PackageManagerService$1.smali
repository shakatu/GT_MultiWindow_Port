.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->prefetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 495
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 498
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 499
    .local v12, mStartTime:J
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 500
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;-><init>()V

    sput-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    .line 501
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, files:[Ljava/lang/String;
    const-string v2, "debug.separate_processes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 507
    .local v20, separateProcesses:Ljava/lang/String;
    if-eqz v20, :cond_eb

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_eb

    .line 508
    const-string v2, "*"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 509
    const/16 v14, 0x8

    .line 510
    .local v14, nDefParseFlags:I
    const/16 v16, 0x0

    .line 511
    .local v16, nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_43
    move-object/from16 v6, v16

    .line 523
    .local v6, nSeparateProcessesInner:[Ljava/lang/String;
    or-int/lit8 v7, v14, 0x41

    .line 524
    .local v7, parseFlags:I
    new-instance v21, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 558
    .local v21, t1:Ljava/lang/Thread;
    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 559
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 560
    new-instance v22, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$1$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$1$2;-><init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 594
    .local v22, t2:Ljava/lang/Thread;
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 595
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 596
    new-instance v23, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$1$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$1$3;-><init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 630
    .local v23, t3:Ljava/lang/Thread;
    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 631
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 633
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 634
    .local v15, nFrameDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 635
    .local v10, framedirfiles:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_9f
    array-length v2, v10

    if-ge v11, v2, :cond_13c

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    if-nez v2, :cond_13c

    .line 636
    new-instance v9, Ljava/io/File;

    aget-object v2, v10, v11

    invoke-direct {v9, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 638
    .local v9, file:Ljava/io/File;
    aget-object v2, v10, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 635
    :cond_b5
    :goto_b5
    add-int/lit8 v11, v11, 0x1

    goto :goto_9f

    .line 513
    .end local v6           #nSeparateProcessesInner:[Ljava/lang/String;
    .end local v7           #parseFlags:I
    .end local v9           #file:Ljava/io/File;
    .end local v10           #framedirfiles:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #nDefParseFlags:I
    .end local v15           #nFrameDir:Ljava/io/File;
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v21           #t1:Ljava/lang/Thread;
    .end local v22           #t2:Ljava/lang/Thread;
    .end local v23           #t3:Ljava/lang/Thread;
    :cond_b8
    const/4 v14, 0x0

    .line 514
    .restart local v14       #nDefParseFlags:I
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 515
    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Running with debug.separate_processes: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_dd} :catch_df

    goto/16 :goto_43

    .line 696
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #dir:Ljava/io/File;
    .end local v12           #mStartTime:J
    .end local v14           #nDefParseFlags:I
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v20           #separateProcesses:Ljava/lang/String;
    :catch_df
    move-exception v8

    .line 697
    .local v8, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    .line 698
    const-string v2, "BootTime"

    const-string v3, "Exiting Thread"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v8           #e:Ljava/lang/Exception;
    :goto_ea
    return-void

    .line 519
    .restart local v4       #files:[Ljava/lang/String;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v12       #mStartTime:J
    .restart local v20       #separateProcesses:Ljava/lang/String;
    :cond_eb
    const/4 v14, 0x0

    .line 520
    .restart local v14       #nDefParseFlags:I
    const/16 v16, 0x0

    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    goto/16 :goto_43

    .line 642
    .restart local v6       #nSeparateProcessesInner:[Ljava/lang/String;
    .restart local v7       #parseFlags:I
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #framedirfiles:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #nFrameDir:Ljava/io/File;
    .restart local v21       #t1:Ljava/lang/Thread;
    .restart local v22       #t2:Ljava/lang/Thread;
    .restart local v23       #t3:Ljava/lang/Thread;
    :cond_f0
    :try_start_f0
    aget-object v2, v10, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 644
    aget-object v2, v10, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 646
    aget-object v2, v10, v11

    const-string v3, "OrangeSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 648
    aget-object v2, v4, v11

    const-string v3, "SecSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 652
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 653
    .local v19, scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 654
    .local v18, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 657
    .local v17, pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b5

    .line 660
    .end local v9           #file:Ljava/io/File;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_13c
    array-length v2, v4

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v11, v2, 0x3

    :goto_141
    array-length v2, v4

    if-ge v11, v2, :cond_1a5

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    if-nez v2, :cond_1a5

    .line 661
    new-instance v9, Ljava/io/File;

    aget-object v2, v4, v11

    invoke-direct {v9, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 663
    .restart local v9       #file:Ljava/io/File;
    aget-object v2, v4, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15a

    .line 660
    :cond_157
    :goto_157
    add-int/lit8 v11, v11, 0x1

    goto :goto_141

    .line 667
    :cond_15a
    aget-object v2, v4, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 669
    aget-object v2, v4, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 671
    aget-object v2, v4, v11

    const-string v3, "OrangeSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 673
    aget-object v2, v4, v11

    const-string v3, "SecSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 677
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 678
    .restart local v19       #scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v18       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 680
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 682
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_157

    .line 686
    .end local v9           #file:Ljava/io/File;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_1a5
    :goto_1a5
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b9

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_1ac} :catch_df

    if-nez v2, :cond_1b9

    .line 689
    const-wide/16 v2, 0xa

    :try_start_1b0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b3
    .catch Ljava/lang/InterruptedException; {:try_start_1b0 .. :try_end_1b3} :catch_1b4
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b3} :catch_df

    goto :goto_1a5

    .line 690
    :catch_1b4
    move-exception v8

    .line 691
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_1b5
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1a5

    .line 694
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_1b9
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 695
    const-string v2, "BootTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Prefetch Time Taken:"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v12

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1e1} :catch_df

    goto/16 :goto_ea
.end method
