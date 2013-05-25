.class Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 30
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v20, Lcom/android/server/am/AppNotRespondingDialog$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, filestr:Ljava/lang/String;
    const-string v20, "eng"

    const-string v21, "ro.build.type"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1db

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 64
    .local v17, time:J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-mm-dd-hh-mm-ss"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, dayTime:Ljava/text/SimpleDateFormat;
    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 66
    .local v19, timestr:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/log/looper-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .end local v4           #dayTime:Ljava/text/SimpleDateFormat;
    .end local v17           #time:J
    .end local v19           #timestr:Ljava/lang/String;
    :goto_5e
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 72
    .local v11, output:Ljava/io/FileOutputStream;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 75
    .local v13, pkg:Ljava/lang/String;
    :try_start_6e
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_222
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_73} :catch_1ee

    .line 76
    .end local v11           #output:Ljava/io/FileOutputStream;
    .local v12, output:Ljava/io/FileOutputStream;
    :try_start_73
    const-string v20, "activity"

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "looper"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v13, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_26f
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8e} :catch_272

    .line 80
    if-eqz v12, :cond_276

    .line 82
    :try_start_90
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_1df

    move-object v11, v12

    .line 89
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    :cond_94
    :goto_94
    const-string v20, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    invoke-static/range {v20 .. v20}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 92
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 95
    .local v14, res:Landroid/content/res/Resources;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 98
    if-eqz p4, :cond_236

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 101
    .local v9, name1:Ljava/lang/CharSequence;
    :goto_c2
    const/4 v10, 0x0

    .line 102
    .local v10, name2:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_243

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_243

    .line 104
    if-eqz v9, :cond_239

    .line 105
    const v15, 0x10404d7

    .line 121
    .local v15, resid:I
    :goto_ea
    if-eqz v10, :cond_257

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :goto_10a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    const/16 v20, -0x1

    const v21, 0x10404db

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 128
    const/16 v20, -0x2

    const v21, 0x10404dd

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 132
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19b

    .line 134
    const/16 v16, 0x0

    .line 135
    .local v16, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v20, "enterprise_policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 137
    .local v6, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v6, :cond_171

    .line 138
    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v16

    .line 140
    :cond_171
    if-eqz v16, :cond_19b

    invoke-virtual/range {v16 .. v16}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v20

    if-eqz v20, :cond_19b

    .line 142
    const/16 v20, -0x3

    const v21, 0x10404dc

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 150
    .end local v6           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v16           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_19b
    const v20, 0x10404d6

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/high16 v21, 0x4000

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->addFlags(I)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Application Not Responding: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    return-void

    .line 68
    .end local v7           #file:Ljava/io/File;
    .end local v9           #name1:Ljava/lang/CharSequence;
    .end local v10           #name2:Ljava/lang/CharSequence;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v13           #pkg:Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v15           #resid:I
    :cond_1db
    const-string v8, "/data/log/looper.txt"

    goto/16 :goto_5e

    .line 83
    .restart local v7       #file:Ljava/io/File;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v13       #pkg:Ljava/lang/String;
    :catch_1df
    move-exception v5

    .line 84
    .local v5, e:Ljava/io/IOException;
    const-string v20, "AppNotRespondingDialog"

    const-string v21, "output.close() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v12

    .line 85
    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_94

    .line 77
    .end local v5           #e:Ljava/io/IOException;
    :catch_1ee
    move-exception v5

    .line 78
    .restart local v5       #e:Ljava/io/IOException;
    :goto_1ef
    :try_start_1ef
    const-string v20, "AppNotRespondingDialog"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can\'t dump looper "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20d
    .catchall {:try_start_1ef .. :try_end_20d} :catchall_222

    .line 80
    if-eqz v11, :cond_94

    .line 82
    :try_start_20f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_212} :catch_214

    goto/16 :goto_94

    .line 83
    :catch_214
    move-exception v5

    .line 84
    const-string v20, "AppNotRespondingDialog"

    const-string v21, "output.close() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_94

    .line 80
    .end local v5           #e:Ljava/io/IOException;
    :catchall_222
    move-exception v20

    :goto_223
    if-eqz v11, :cond_228

    .line 82
    :try_start_225
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_228} :catch_229

    .line 85
    :cond_228
    :goto_228
    throw v20

    .line 83
    :catch_229
    move-exception v5

    .line 84
    .restart local v5       #e:Ljava/io/IOException;
    const-string v21, "AppNotRespondingDialog"

    const-string v22, "output.close() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_228

    .line 98
    .end local v5           #e:Ljava/io/IOException;
    .restart local v14       #res:Landroid/content/res/Resources;
    :cond_236
    const/4 v9, 0x0

    goto/16 :goto_c2

    .line 107
    .restart local v9       #name1:Ljava/lang/CharSequence;
    .restart local v10       #name2:Ljava/lang/CharSequence;
    :cond_239
    move-object v9, v10

    .line 108
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 109
    const v15, 0x10404d9

    .restart local v15       #resid:I
    goto/16 :goto_ea

    .line 112
    .end local v15           #resid:I
    :cond_243
    if-eqz v9, :cond_24e

    .line 113
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 114
    const v15, 0x10404d8

    .restart local v15       #resid:I
    goto/16 :goto_ea

    .line 116
    .end local v15           #resid:I
    :cond_24e
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 117
    const v15, 0x10404da

    .restart local v15       #resid:I
    goto/16 :goto_ea

    .line 121
    :cond_257
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_10a

    .line 80
    .end local v9           #name1:Ljava/lang/CharSequence;
    .end local v10           #name2:Ljava/lang/CharSequence;
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v15           #resid:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    :catchall_26f
    move-exception v20

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto :goto_223

    .line 77
    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    :catch_272
    move-exception v5

    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_1ef

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v12       #output:Ljava/io/FileOutputStream;
    :cond_276
    move-object v11, v12

    .end local v12           #output:Ljava/io/FileOutputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_94
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method
