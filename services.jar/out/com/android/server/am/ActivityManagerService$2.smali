.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 57
    .parameter "msg"

    .prologue
    .line 981
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_7c6

    .line 1441
    :cond_7
    :goto_7
    return-void

    .line 983
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 984
    .local v26, data:Ljava/util/HashMap;
    const/16 v24, 0x0

    .line 985
    .local v24, d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 986
    :try_start_17
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 987
    .local v44, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_48

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_48

    .line 988
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    monitor-exit v5

    goto :goto_7

    .line 1001
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_45
    move-exception v4

    :goto_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_17 .. :try_end_47} :catchall_45

    throw v4

    .line 991
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_48
    :try_start_48
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 992
    .local v48, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_94

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_94

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_94

    .line 993
    new-instance v25, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_7d
    .catchall {:try_start_48 .. :try_end_7d} :catchall_45

    .line 995
    .end local v24           #d:Landroid/app/Dialog;
    .local v25, d:Landroid/app/Dialog;
    :try_start_7d
    move-object/from16 v0, v25

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_7c1

    move-object/from16 v24, v25

    .line 1001
    .end local v25           #d:Landroid/app/Dialog;
    .restart local v24       #d:Landroid/app/Dialog;
    :goto_85
    :try_start_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_45

    .line 1002
    if-eqz v24, :cond_8b

    .line 1003
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1005
    :cond_8b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 999
    :cond_94
    const/4 v4, 0x0

    :try_start_95
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_45

    goto :goto_85

    .line 1008
    .end local v24           #d:Landroid/app/Dialog;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_9b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1009
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1010
    :try_start_a8
    const-string v4, "errorpermission"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 1011
    .local v41, permission:Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1012
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_e4

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_e4

    .line 1013
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    monitor-exit v5

    goto/16 :goto_7

    .line 1026
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_e1
    move-exception v4

    monitor-exit v5
    :try_end_e3
    .catchall {:try_start_a8 .. :try_end_e3} :catchall_e1

    throw v4

    .line 1016
    .restart local v41       #permission:Ljava/lang/String;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_e4
    :try_start_e4
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 1017
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_124

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_124

    .line 1018
    new-instance v24, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    move-object/from16 v3, v41

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1019
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1020
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1026
    .end local v24           #d:Landroid/app/Dialog;
    :goto_11a
    monitor-exit v5
    :try_end_11b
    .catchall {:try_start_e4 .. :try_end_11b} :catchall_e1

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1024
    :cond_124
    const/4 v4, 0x0

    :try_start_125
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_e1

    goto :goto_11a

    .line 1031
    .end local v26           #data:Ljava/util/HashMap;
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_12b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1032
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1033
    :try_start_138
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    .line 1034
    .local v35, newIntent:Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;
    :try_end_14c
    .catchall {:try_start_138 .. :try_end_14c} :catchall_16f

    .line 1037
    .local v21, cmPackagename:Ljava/lang/String;
    :try_start_14c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_155
    .catchall {:try_start_14c .. :try_end_155} :catchall_16f
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_155} :catch_172

    move-result-object v22

    .line 1041
    .local v22, cmPermissions:[Ljava/lang/String;
    :goto_156
    :try_start_156
    new-instance v24, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    move-object/from16 v3, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1042
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1044
    monitor-exit v5

    goto/16 :goto_7

    .end local v21           #cmPackagename:Ljava/lang/String;
    .end local v22           #cmPermissions:[Ljava/lang/String;
    .end local v24           #d:Landroid/app/Dialog;
    .end local v35           #newIntent:Landroid/content/Intent;
    :catchall_16f
    move-exception v4

    monitor-exit v5
    :try_end_171
    .catchall {:try_start_156 .. :try_end_171} :catchall_16f

    throw v4

    .line 1038
    .restart local v21       #cmPackagename:Ljava/lang/String;
    .restart local v35       #newIntent:Landroid/content/Intent;
    :catch_172
    move-exception v28

    .line 1039
    .local v28, e:Landroid/os/RemoteException;
    const/16 v22, 0x0

    .restart local v22       #cmPermissions:[Ljava/lang/String;
    goto :goto_156

    .line 1047
    .end local v21           #cmPackagename:Ljava/lang/String;
    .end local v22           #cmPermissions:[Ljava/lang/String;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v35           #newIntent:Landroid/content/Intent;
    :sswitch_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v54, v0

    monitor-enter v54

    .line 1048
    :try_start_17d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1049
    .restart local v26       #data:Ljava/util/HashMap;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1050
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_1b7

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1b7

    .line 1051
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    monitor-exit v54

    goto/16 :goto_7

    .line 1073
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_1b4
    move-exception v4

    monitor-exit v54
    :try_end_1b6
    .catchall {:try_start_17d .. :try_end_1b6} :catchall_1b4

    throw v4

    .line 1055
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1b7
    :try_start_1b7
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_1cb

    .line 1057
    const/high16 v4, 0x5000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1060
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I
    invoke-static/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 1065
    new-instance v24, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1067
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1068
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1073
    .end local v24           #d:Landroid/app/Dialog;
    :goto_212
    monitor-exit v54
    :try_end_213
    .catchall {:try_start_1b7 .. :try_end_213} :catchall_1b4

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1071
    :cond_21c
    :try_start_21c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_226
    .catchall {:try_start_21c .. :try_end_226} :catchall_1b4

    goto :goto_212

    .line 1078
    .end local v7           #intent:Landroid/content/Intent;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :sswitch_227
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/HashMap;

    .line 1079
    .local v27, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1080
    :try_start_234
    const-string v4, "app"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1081
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v44, :cond_24d

    .line 1082
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    monitor-exit v5

    goto/16 :goto_7

    .line 1099
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_24a
    move-exception v4

    monitor-exit v5
    :try_end_24c
    .catchall {:try_start_234 .. :try_end_24c} :catchall_24a

    throw v4

    .line 1085
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_24d
    :try_start_24d
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_270

    .line 1086
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    monitor-exit v5

    goto/16 :goto_7

    .line 1089
    :cond_270
    const-string v4, "result"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 1090
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2b8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_2b8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_2b8

    .line 1091
    new-instance v24, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1092
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1093
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1099
    .end local v24           #d:Landroid/app/Dialog;
    :goto_2ae
    monitor-exit v5
    :try_end_2af
    .catchall {:try_start_24d .. :try_end_2af} :catchall_24a

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1097
    :cond_2b8
    const/4 v4, 0x0

    :try_start_2b9
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2be
    .catchall {:try_start_2b9 .. :try_end_2be} :catchall_24a

    goto :goto_2ae

    .line 1103
    .end local v27           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_2bf
    new-instance v24, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1105
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1109
    .end local v24           #d:Landroid/app/Dialog;
    :sswitch_2e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    .line 1110
    .local v49, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1113
    .end local v49           #resolver:Landroid/content/ContentResolver;
    :sswitch_2f9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1114
    :try_start_2fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1115
    monitor-exit v5

    goto/16 :goto_7

    :catchall_308
    move-exception v4

    monitor-exit v5
    :try_end_30a
    .catchall {:try_start_2fe .. :try_end_30a} :catchall_308

    throw v4

    .line 1118
    :sswitch_30b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1119
    :try_start_310
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1120
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_34b

    .line 1121
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_345

    .line 1122
    new-instance v24, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1125
    .restart local v24       #d:Landroid/app/Dialog;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1126
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1127
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1135
    .end local v24           #d:Landroid/app/Dialog;
    :cond_345
    :goto_345
    monitor-exit v5

    goto/16 :goto_7

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_348
    move-exception v4

    monitor-exit v5
    :try_end_34a
    .catchall {:try_start_310 .. :try_end_34a} :catchall_348

    throw v4

    .line 1130
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_34b
    :try_start_34b
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_345

    .line 1131
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1132
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_35d
    .catchall {:try_start_34b .. :try_end_35d} :catchall_348

    goto :goto_345

    .line 1138
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_35e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_390

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1141
    .local v36, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1145
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1148
    :sswitch_39f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1149
    :try_start_3a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .local v32, i:I
    :goto_3b0
    if-ltz v32, :cond_3f3

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1151
    .local v47, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3c4
    .catchall {:try_start_3a4 .. :try_end_3c4} :catchall_3f0

    if-eqz v4, :cond_3cd

    .line 1153
    :try_start_3c6
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_3cd
    .catchall {:try_start_3c6 .. :try_end_3cd} :catchall_3f0
    .catch Landroid/os/RemoteException; {:try_start_3c6 .. :try_end_3cd} :catch_3d0

    .line 1149
    :cond_3cd
    :goto_3cd
    add-int/lit8 v32, v32, -0x1

    goto :goto_3b0

    .line 1154
    :catch_3d0
    move-exception v29

    .line 1155
    .local v29, ex:Landroid/os/RemoteException;
    :try_start_3d1
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3cd

    .line 1159
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_3f0
    move-exception v4

    monitor-exit v5
    :try_end_3f2
    .catchall {:try_start_3d1 .. :try_end_3f2} :catchall_3f0

    throw v4

    .restart local v32       #i:I
    :cond_3f3
    :try_start_3f3
    monitor-exit v5
    :try_end_3f4
    .catchall {:try_start_3f3 .. :try_end_3f4} :catchall_3f0

    goto/16 :goto_7

    .line 1162
    .end local v32           #i:I
    :sswitch_3f6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1163
    :try_start_3fb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_407
    if-ltz v32, :cond_44a

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1165
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_41b
    .catchall {:try_start_3fb .. :try_end_41b} :catchall_447

    if-eqz v4, :cond_424

    .line 1167
    :try_start_41d
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_424
    .catchall {:try_start_41d .. :try_end_424} :catchall_447
    .catch Landroid/os/RemoteException; {:try_start_41d .. :try_end_424} :catch_427

    .line 1163
    :cond_424
    :goto_424
    add-int/lit8 v32, v32, -0x1

    goto :goto_407

    .line 1168
    :catch_427
    move-exception v29

    .line 1169
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_428
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_424

    .line 1173
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_447
    move-exception v4

    monitor-exit v5
    :try_end_449
    .catchall {:try_start_428 .. :try_end_449} :catchall_447

    throw v4

    .restart local v32       #i:I
    :cond_44a
    :try_start_44a
    monitor-exit v5
    :try_end_44b
    .catchall {:try_start_44a .. :try_end_44b} :catchall_447

    goto/16 :goto_7

    .line 1176
    .end local v32           #i:I
    :sswitch_44d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/net/ProxyProperties;

    .line 1177
    .local v46, proxy:Landroid/net/ProxyProperties;
    const-string v31, ""

    .line 1178
    .local v31, host:Ljava/lang/String;
    const-string v43, ""

    .line 1179
    .local v43, port:Ljava/lang/String;
    const-string v30, ""

    .line 1180
    .local v30, exclList:Ljava/lang/String;
    if-eqz v46, :cond_46d

    .line 1181
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v31

    .line 1182
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    .line 1183
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v30

    .line 1185
    :cond_46d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1186
    :try_start_472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_47e
    if-ltz v32, :cond_4c7

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1188
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_492
    .catchall {:try_start_472 .. :try_end_492} :catchall_4c4

    if-eqz v4, :cond_4a1

    .line 1190
    :try_start_494
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-interface {v4, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a1
    .catchall {:try_start_494 .. :try_end_4a1} :catchall_4c4
    .catch Landroid/os/RemoteException; {:try_start_494 .. :try_end_4a1} :catch_4a4

    .line 1186
    :cond_4a1
    :goto_4a1
    add-int/lit8 v32, v32, -0x1

    goto :goto_47e

    .line 1191
    :catch_4a4
    move-exception v29

    .line 1192
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_4a5
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a1

    .line 1197
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_4c4
    move-exception v4

    monitor-exit v5
    :try_end_4c6
    .catchall {:try_start_4a5 .. :try_end_4c6} :catchall_4c4

    throw v4

    .restart local v32       #i:I
    :cond_4c7
    :try_start_4c7
    monitor-exit v5
    :try_end_4c8
    .catchall {:try_start_4c7 .. :try_end_4c8} :catchall_4c4

    goto/16 :goto_7

    .line 1200
    .end local v30           #exclList:Ljava/lang/String;
    .end local v31           #host:Ljava/lang/String;
    .end local v32           #i:I
    .end local v43           #port:Ljava/lang/String;
    .end local v46           #proxy:Landroid/net/ProxyProperties;
    :sswitch_4ca
    const-string v53, "System UIDs Inconsistent"

    .line 1201
    .local v53, title:Ljava/lang/String;
    const-string v51, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 1203
    .local v51, text:Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1206
    new-instance v24, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v24, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1208
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1209
    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1210
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1211
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1214
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1218
    .end local v24           #d:Landroid/app/AlertDialog;
    .end local v51           #text:Ljava/lang/String;
    .end local v53           #title:Ljava/lang/String;
    :sswitch_543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1224
    :sswitch_55d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_58f

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1227
    .restart local v36       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1231
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_58f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1232
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1233
    :try_start_59c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v19

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1234
    monitor-exit v5

    goto/16 :goto_7

    :catchall_5a8
    move-exception v4

    monitor-exit v5
    :try_end_5aa
    .catchall {:try_start_59c .. :try_end_5aa} :catchall_5a8

    throw v4

    .line 1237
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_5ab
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1238
    :try_start_5b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1239
    monitor-exit v5

    goto/16 :goto_7

    :catchall_5bb
    move-exception v4

    monitor-exit v5
    :try_end_5bd
    .catchall {:try_start_5b0 .. :try_end_5bd} :catchall_5bb

    throw v4

    .line 1242
    :sswitch_5be
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1243
    :try_start_5c3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1244
    .local v10, uid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5e9

    const/4 v11, 0x1

    .line 1245
    .local v11, restart:Z
    :goto_5cf
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1246
    .local v9, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10}, Landroid/os/UserId;->getUserId(I)I

    move-result v15

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZI)Z
    invoke-static/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZI)Z

    .line 1248
    monitor-exit v5

    goto/16 :goto_7

    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    .end local v11           #restart:Z
    :catchall_5e6
    move-exception v4

    monitor-exit v5
    :try_end_5e8
    .catchall {:try_start_5c3 .. :try_end_5e8} :catchall_5e6

    throw v4

    .line 1244
    .restart local v10       #uid:I
    :cond_5e9
    const/4 v11, 0x0

    goto :goto_5cf

    .line 1251
    .end local v10           #uid:I
    :sswitch_5eb
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1254
    :sswitch_5f6
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1255
    .local v33, inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_7

    .line 1259
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 1260
    .local v50, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v45, v0

    .line 1261
    .local v45, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_7

    .line 1266
    :try_start_60c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v23

    .line 1267
    .local v23, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404db

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1269
    .restart local v51       #text:Ljava/lang/String;
    new-instance v37, Landroid/app/Notification;

    invoke-direct/range {v37 .. v37}, Landroid/app/Notification;-><init>()V

    .line 1270
    .local v37, notification:Landroid/app/Notification;
    const v4, 0x108069a

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1271
    const-wide/16 v4, 0x0

    move-object/from16 v0, v37

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1272
    const/4 v4, 0x2

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1273
    move-object/from16 v0, v51

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1274
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1275
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1276
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v50

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-static {v5, v6, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_68f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60c .. :try_end_68f} :catch_6b0

    .line 1283
    const/4 v4, 0x1

    :try_start_690
    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 1284
    .local v40, outId:[I
    const-string v4, "android"

    const v5, 0x10404db

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_6a2
    .catch Ljava/lang/RuntimeException; {:try_start_690 .. :try_end_6a2} :catch_6a4
    .catch Landroid/os/RemoteException; {:try_start_690 .. :try_end_6a2} :catch_7be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_690 .. :try_end_6a2} :catch_6b0

    goto/16 :goto_7

    .line 1286
    .end local v40           #outId:[I
    :catch_6a4
    move-exception v28

    .line 1287
    .local v28, e:Ljava/lang/RuntimeException;
    :try_start_6a5
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a5 .. :try_end_6ae} :catch_6b0

    goto/16 :goto_7

    .line 1291
    .end local v23           #context:Landroid/content/Context;
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v37           #notification:Landroid/app/Notification;
    .end local v51           #text:Ljava/lang/String;
    :catch_6b0
    move-exception v28

    .line 1292
    .local v28, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1296
    .end local v28           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    .end local v45           #process:Lcom/android/server/am/ProcessRecord;
    .end local v50           #root:Lcom/android/server/am/ActivityRecord;
    :sswitch_6bc
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1297
    .restart local v33       #inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_7

    .line 1301
    :try_start_6c2
    const-string v4, "android"

    const v5, 0x10404db

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_6cc
    .catch Ljava/lang/RuntimeException; {:try_start_6c2 .. :try_end_6cc} :catch_6ce
    .catch Landroid/os/RemoteException; {:try_start_6c2 .. :try_end_6cc} :catch_7bb

    goto/16 :goto_7

    .line 1303
    :catch_6ce
    move-exception v28

    .line 1304
    .local v28, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1310
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    :sswitch_6da
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1311
    :try_start_6df
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1312
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1313
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1314
    .restart local v36       #nmsg:Landroid/os/Message;
    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1315
    monitor-exit v5

    goto/16 :goto_7

    .end local v36           #nmsg:Landroid/os/Message;
    :catchall_703
    move-exception v4

    monitor-exit v5
    :try_end_705
    .catchall {:try_start_6df .. :try_end_705} :catchall_703

    throw v4

    .line 1319
    :sswitch_706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V

    goto/16 :goto_7

    .line 1323
    :sswitch_711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1324
    :try_start_716
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ActivityRecord;

    .line 1325
    .local v20, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_754

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_744

    .line 1328
    monitor-exit v5

    goto/16 :goto_7

    .line 1347
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_741
    move-exception v4

    monitor-exit v5
    :try_end_743
    .catchall {:try_start_716 .. :try_end_743} :catchall_741

    throw v4

    .line 1330
    .restart local v20       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_744
    :try_start_744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1333
    :cond_754
    if-eqz v20, :cond_756

    .line 1347
    :cond_756
    monitor-exit v5
    :try_end_757
    .catchall {:try_start_744 .. :try_end_757} :catchall_741

    goto/16 :goto_7

    .line 1351
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    :sswitch_759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1355
    :sswitch_762
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 1356
    .local v42, pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1357
    .restart local v10       #uid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v42

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1361
    .end local v10           #uid:I
    .end local v42           #pid:I
    :sswitch_777
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 1362
    .local v34, isDebuggable:Z
    if-eqz v34, :cond_7

    .line 1365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1366
    :try_start_78c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 1367
    .local v38, now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v4, v38, v12

    if-gez v4, :cond_7a4

    .line 1370
    monitor-exit v5

    goto/16 :goto_7

    .line 1373
    .end local v38           #now:J
    :catchall_7a1
    move-exception v4

    monitor-exit v5
    :try_end_7a3
    .catchall {:try_start_78c .. :try_end_7a3} :catchall_7a1

    throw v4

    .line 1372
    .restart local v38       #now:J
    :cond_7a4
    :try_start_7a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1373
    monitor-exit v5
    :try_end_7ad
    .catchall {:try_start_7a4 .. :try_end_7ad} :catchall_7a1

    .line 1374
    new-instance v52, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    .line 1437
    .local v52, thread:Ljava/lang/Thread;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 1306
    .end local v34           #isDebuggable:Z
    .end local v38           #now:J
    .end local v52           #thread:Ljava/lang/Thread;
    .restart local v33       #inm:Landroid/app/INotificationManager;
    :catch_7bb
    move-exception v4

    goto/16 :goto_7

    .line 1289
    .restart local v23       #context:Landroid/content/Context;
    .restart local v37       #notification:Landroid/app/Notification;
    .restart local v45       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v50       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v51       #text:Ljava/lang/String;
    :catch_7be
    move-exception v4

    goto/16 :goto_7

    .line 1001
    .end local v23           #context:Landroid/content/Context;
    .end local v33           #inm:Landroid/app/INotificationManager;
    .end local v37           #notification:Landroid/app/Notification;
    .end local v45           #process:Lcom/android/server/am/ProcessRecord;
    .end local v50           #root:Lcom/android/server/am/ActivityRecord;
    .end local v51           #text:Ljava/lang/String;
    .restart local v25       #d:Landroid/app/Dialog;
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    :catchall_7c1
    move-exception v4

    move-object/from16 v24, v25

    .end local v25           #d:Landroid/app/Dialog;
    .local v24, d:Landroid/app/Dialog;
    goto/16 :goto_46

    .line 981
    :sswitch_data_7c6
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_176
        0x3 -> :sswitch_2bf
        0x4 -> :sswitch_2e2
        0x5 -> :sswitch_2f9
        0x6 -> :sswitch_30b
        0xc -> :sswitch_35e
        0xd -> :sswitch_39f
        0xe -> :sswitch_4ca
        0xf -> :sswitch_543
        0x14 -> :sswitch_55d
        0x15 -> :sswitch_5ab
        0x16 -> :sswitch_5be
        0x17 -> :sswitch_5eb
        0x18 -> :sswitch_5f6
        0x19 -> :sswitch_6bc
        0x1a -> :sswitch_227
        0x1b -> :sswitch_6da
        0x1c -> :sswitch_3f6
        0x1d -> :sswitch_44d
        0x1e -> :sswitch_711
        0x1f -> :sswitch_759
        0x20 -> :sswitch_762
        0x21 -> :sswitch_777
        0x22 -> :sswitch_9b
        0x23 -> :sswitch_12b
        0x3e7 -> :sswitch_706
    .end sparse-switch
.end method
