.class public Lcom/android/server/enterprise/DmAppInfo;
.super Ljava/lang/Object;
.source "DmAppInfo.java"


# static fields
.field public static final APP_CONTROL_STATE_DISABLED:I = 0x1

.field public static final APP_CONTROL_STATE_INSTALLATION_DISABLED:I = 0x2

.field public static final APP_CONTROL_STATE_UNINSTALLATION_DISABLED:I = 0x4

.field public static final APP_ENTERPRISE_FLAG:I = 0x8

.field public static final APP_INSTALL_SOURCE_MDM:I = 0x16

.field private static final CONTROL_STATE:Ljava/lang/String; = "controlstate"

.field private static final CONTROL_STATE_DISABLED_CAUSE:Ljava/lang/String; = "control_state_disable_cause"

.field private static final CONTROL_STATE_DISABLED_CAUSE_METADATA:Ljava/lang/String; = "control_state_disable_cause_metadata"

.field public static final CONTROL_STATE_DISABLED_CAUSE_PERMISSION_BLACKLIST:Ljava/lang/String; = "permission_blacklist"

.field public static final CONTROL_STATE_DISABLED_CAUSE_SIGNATURE_BLACKLIST:Ljava/lang/String; = "signature_blacklist"

.field private static final ID:Ljava/lang/String; = "_id"

.field private static final INSTALL_COUNT:Ljava/lang/String; = "installcount"

.field private static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field private static final TABLE_NAME:Ljava/lang/String; = "DmAppInfo"

.field private static final TAG:Ljava/lang/String; = "DmAppInfo"

.field private static final UNINSTALL_COUNT:Ljava/lang/String; = "uninstallcount"


# instance fields
.field private mAppControlState:I

.field public mAppDisabled:I

.field public mAppInstallCount:I

.field public mAppInstallationDisabled:I

.field public mAppPkg:Ljava/lang/String;

.field public mAppUninstallCount:I

.field public mAppUninstallationDisabled:I

.field private mContext:Landroid/content/Context;

.field public mControlStateDisableCause:Ljava/lang/String;

.field public mControlStateDisableCauseMetadata:Ljava/lang/String;

.field public mId:I

.field public mIsEnterpriseApp:I

.field public mIsInstallSourceMDM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16
    .parameter "ctx"
    .parameter "appPkg"
    .parameter "appInstallCount"
    .parameter "appUninstallCount"
    .parameter "appDisabled"
    .parameter "appInstallationDisabled"
    .parameter "appUninstallationDisabled"
    .parameter "appControlStateDisableCause"
    .parameter "appControlStateDisableCauseMetadata"
    .parameter "isEnterpriseApp"
    .parameter "isInstallSourceMDM"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    .line 77
    iput-object v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 79
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 81
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 83
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 85
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 87
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 89
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    .line 91
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I

    .line 94
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 96
    iput-object v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    .line 97
    iput-object v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/android/server/enterprise/DmAppInfo;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 138
    iput p3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 139
    iput p4, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 140
    iput p5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 141
    iput p6, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 142
    iput p7, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 143
    invoke-direct {p0}, Lcom/android/server/enterprise/DmAppInfo;->getAppControlState()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 145
    if-nez p8, :cond_49

    const-string p8, ""

    .line 146
    :goto_37
    if-nez p9, :cond_4e

    const-string p9, ""

    .line 147
    :goto_3b
    iput-object p8, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    .line 148
    iput-object p9, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 150
    if-eqz p10, :cond_53

    move v0, v1

    :goto_42
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    .line 151
    if-eqz p11, :cond_55

    :goto_46
    iput v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I

    .line 152
    return-void

    .line 145
    :cond_49
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    goto :goto_37

    .line 146
    :cond_4e
    invoke-virtual {p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    goto :goto_3b

    :cond_53
    move v0, v2

    .line 150
    goto :goto_42

    :cond_55
    move v1, v2

    .line 151
    goto :goto_46
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 367
    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, installcount integer, uninstallcount integer, controlstate integer, control_state_disable_cause text, control_state_disable_cause_metadata text);"

    .line 369
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table DmAppInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 373
    .end local v1           #s:Ljava/lang/String;
    :goto_18
    return-void

    .line 370
    :catch_19
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public static deleteDmAppInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .parameter "ctx"
    .parameter "pkg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, success:Z
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_11

    :cond_f
    move v4, v3

    .line 311
    .end local v3           #success:Z
    .local v4, success:I
    :goto_10
    return v4

    .line 293
    .end local v4           #success:I
    .restart local v3       #success:Z
    :cond_11
    const/4 v0, 0x0

    .line 295
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_12
    invoke-static {p0}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_41

    .line 297
    const-string v7, "DmAppInfo"

    const-string v8, "pkgname=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 300
    .local v2, rowCount:I
    const-string v7, "DmAppInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteDmAppInfo deleted row count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3e} :catch_4a

    .line 301
    if-lez v2, :cond_48

    move v3, v5

    .line 307
    .end local v2           #rowCount:I
    :cond_41
    :goto_41
    if-eqz v0, :cond_46

    .line 308
    :goto_43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_46
    move v4, v3

    .line 311
    .restart local v4       #success:I
    goto :goto_10

    .end local v4           #success:I
    .restart local v2       #rowCount:I
    :cond_48
    move v3, v6

    .line 301
    goto :goto_41

    .line 303
    .end local v2           #rowCount:I
    :catch_4a
    move-exception v1

    .line 304
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 305
    :try_start_4c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_52

    .line 307
    if-eqz v0, :cond_46

    goto :goto_43

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_52
    move-exception v5

    if-eqz v0, :cond_58

    .line 308
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 307
    :cond_58
    throw v5
.end method

.method private declared-synchronized getAppControlState()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 105
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    if-ne v1, v0, :cond_f

    .line 106
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 107
    :cond_f
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    if-ne v1, v0, :cond_19

    .line 108
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 109
    :cond_19
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    if-ne v1, v0, :cond_23

    .line 110
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 111
    :cond_23
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    if-ne v1, v0, :cond_2d

    .line 112
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 113
    :cond_2d
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I

    if-ne v1, v0, :cond_37

    .line 114
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    or-int/lit8 v0, v0, 0x16

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 115
    :cond_37
    iget v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return v0

    .line 104
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .parameter "ctx"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/DmAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_6

    .line 319
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 321
    :cond_6
    const/4 v15, 0x0

    .line 322
    .local v15, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 323
    .local v13, cr:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v14, dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :try_start_d
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 326
    if-eqz v15, :cond_bd

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM DmAppInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WHERE pkgname = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 328
    const-string v3, "DmAppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationsList found row counts : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " For Pkg : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_80
    :goto_80
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 332
    new-instance v1, Lcom/android/server/enterprise/DmAppInfo;

    .end local v1           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 334
    .restart local v1       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/DmAppInfo;->getAppInfoFromCursor(Landroid/database/Cursor;)V

    .line 335
    iget-object v2, v1, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    if-eqz v2, :cond_80

    .line 336
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_d .. :try_end_a0} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a0} :catch_a1

    goto :goto_80

    .line 339
    .end local v1           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :catch_a1
    move-exception v16

    .line 340
    .local v16, e:Ljava/lang/Exception;
    :try_start_a2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b6

    .line 342
    if-eqz v13, :cond_aa

    .line 343
    .end local v16           #e:Ljava/lang/Exception;
    :goto_a7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_aa
    if-eqz v15, :cond_af

    .line 346
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 348
    :cond_af
    return-object v14

    .line 327
    :cond_b0
    :try_start_b0
    const-string v2, ""

    goto :goto_3b

    .line 328
    :cond_b3
    const-string v2, ""
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_a1

    goto :goto_74

    .line 342
    :catchall_b6
    move-exception v2

    if-eqz v13, :cond_bc

    .line 343
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_bc
    throw v2

    :cond_bd
    if-eqz v13, :cond_aa

    goto :goto_a7
.end method

.method private static getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .parameter "ctx"

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 355
    .local v1, dmappmgrDBPath:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    .line 359
    :goto_9
    if-eqz v0, :cond_16

    const-string v3, "DmAppInfo"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/DmAppInfo;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 360
    invoke-static {v0}, Lcom/android/server/enterprise/DmAppInfo;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    :cond_16
    return-object v0

    .line 356
    :catch_17
    move-exception v2

    .line 357
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .parameter "db"
    .parameter "table"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, exists:Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 379
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 380
    const/4 v1, 0x1

    .line 386
    :cond_2c
    :goto_2c
    return v1

    .line 381
    :catch_2d
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method private declared-synchronized setAppControlState(I)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 119
    monitor-enter p0

    if-gez p1, :cond_7

    .line 128
    :goto_5
    monitor-exit p0

    return-void

    .line 121
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    .line 123
    iget v2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_3f

    move v2, v0

    :goto_10
    iput v2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 124
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_41

    move v2, v0

    :goto_1a
    iput v2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 125
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v3, v3, 0x4

    if-ne v2, v3, :cond_43

    move v2, v0

    :goto_24
    iput v2, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 126
    const/16 v2, 0x8

    iget v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v3, v3, 0x8

    if-ne v2, v3, :cond_45

    move v2, v0

    :goto_2f
    iput v2, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    .line 127
    const/16 v2, 0x16

    iget v3, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppControlState:I

    and-int/lit8 v3, v3, 0x16

    if-ne v2, v3, :cond_47

    :goto_39
    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3c

    goto :goto_5

    .line 119
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move v2, v1

    .line 123
    goto :goto_10

    :cond_41
    move v2, v1

    .line 124
    goto :goto_1a

    :cond_43
    move v2, v1

    .line 125
    goto :goto_24

    :cond_45
    move v2, v1

    .line 126
    goto :goto_2f

    :cond_47
    move v0, v1

    .line 127
    goto :goto_39
.end method


# virtual methods
.method fillAppInfoToContentValues(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 165
    const-string v0, "pkgname"

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "installcount"

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v0, "uninstallcount"

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "controlstate"

    invoke-direct {p0}, Lcom/android/server/enterprise/DmAppInfo;->getAppControlState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "control_state_disable_cause"

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "control_state_disable_cause_metadata"

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method getAppInfoFromCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 155
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    .line 156
    const-string v0, "pkgname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    .line 157
    const-string v0, "installcount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 158
    const-string v0, "uninstallcount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    .line 159
    const-string v0, "controlstate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DmAppInfo;->setAppControlState(I)V

    .line 160
    const-string v0, "control_state_disable_cause"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    .line 161
    const-string v0, "control_state_disable_cause_metadata"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsEnterpriseApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsInstallSourceMDM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAppManagerDB(IIIIILjava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 25
    .parameter "install"
    .parameter "resetCounter"
    .parameter "appDisabled"
    .parameter "appInstallationDisabled"
    .parameter "appUninstallationDisabled"
    .parameter "appControlStateDisableCause"
    .parameter "appControlStateDisableCauseMetadata"
    .parameter "isEnterpriseApp"
    .parameter "isInstallSourceMDM"

    .prologue
    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, success:Z
    const/4 v4, 0x0

    .line 187
    .local v4, isExistingPkg:Z
    const/4 v2, 0x0

    .line 188
    .local v2, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 190
    .local v1, cr:Landroid/database/Cursor;
    const-string v10, "DmAppInfo"

    const-string v11, "updateAppManagerDB () enter : "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1f

    :cond_1d
    move v6, v5

    .line 280
    .end local v5           #success:Z
    .local v6, success:I
    :goto_1e
    return v6

    .line 195
    .end local v6           #success:I
    .restart local v5       #success:Z
    :cond_1f
    :try_start_1f
    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/DmAppInfo;->getDmAppMgrDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_15f

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM DmAppInfo WHERE pkgname = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 198
    const-string v10, "DmAppInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAppManagerDB found row count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_16c

    const/4 v4, 0x1

    .line 201
    :goto_76
    if-eqz v4, :cond_7e

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/DmAppInfo;->getAppInfoFromCursor(Landroid/database/Cursor;)V

    .line 206
    :cond_7e
    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v10, v0, :cond_88

    .line 207
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 209
    :cond_88
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v10, v0, :cond_16f

    .line 210
    iget v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    .line 214
    :cond_93
    :goto_93
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v10, v0, :cond_180

    .line 215
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    .line 219
    :cond_9b
    :goto_9b
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v10, v0, :cond_18e

    .line 220
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    .line 224
    :cond_a3
    :goto_a3
    const/4 v10, 0x1

    move/from16 v0, p5

    if-ne v10, v0, :cond_195

    .line 225
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    .line 230
    :cond_ab
    :goto_ab
    if-eqz v4, :cond_19f

    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v10, v0, :cond_19f

    if-eqz p8, :cond_19f

    .line 231
    if-eqz p8, :cond_19c

    const/4 v10, 0x1

    :goto_b7
    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    .line 236
    :cond_b9
    :goto_b9
    const/4 v10, 0x1

    move/from16 v0, p1

    if-eq v10, v0, :cond_c0

    if-nez p1, :cond_c5

    .line 237
    :cond_c0
    if-eqz p9, :cond_1aa

    const/4 v10, 0x1

    :goto_c3
    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsInstallSourceMDM:I

    .line 240
    :cond_c5
    if-nez p6, :cond_1ad

    const-string p6, ""

    .line 241
    :goto_c9
    if-nez p7, :cond_1b3

    const-string p7, ""

    .line 242
    :goto_cd
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    if-ne v10, v11, :cond_1b9

    .line 243
    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_111

    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_111

    .line 244
    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_111

    iget-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_111

    .line 245
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 248
    :cond_111
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 255
    :cond_119
    :goto_119
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v9, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/DmAppInfo;->fillAppInfoToContentValues(Landroid/content/ContentValues;)V

    .line 258
    const-wide/16 v7, 0x0

    .line 259
    .local v7, value:J
    if-nez v4, :cond_1ca

    .line 260
    const-string v10, "DmAppInfo"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 261
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v7

    if-eqz v10, :cond_1c7

    const/4 v5, 0x1

    .line 262
    :goto_133
    const-string v10, "DmAppInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAppManagerDB inserted row Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/enterprise/DmAppInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catchall {:try_start_1f .. :try_end_15f} :catchall_187
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_15f} :catch_179

    .line 274
    .end local v7           #value:J
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_15f
    :goto_15f
    if-eqz v1, :cond_164

    .line 275
    :goto_161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_164
    if-eqz v2, :cond_169

    .line 278
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_169
    move v6, v5

    .line 280
    .restart local v6       #success:I
    goto/16 :goto_1e

    .line 199
    .end local v6           #success:I
    :cond_16c
    const/4 v4, 0x0

    goto/16 :goto_76

    .line 211
    :cond_16f
    if-nez p1, :cond_93

    .line 212
    :try_start_171
    iget v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_187
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_177} :catch_179

    goto/16 :goto_93

    .line 271
    :catch_179
    move-exception v3

    .line 272
    .local v3, e:Ljava/lang/Exception;
    :try_start_17a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_187

    .line 274
    if-eqz v1, :cond_164

    goto :goto_161

    .line 216
    .end local v3           #e:Ljava/lang/Exception;
    :cond_180
    if-nez p3, :cond_9b

    .line 217
    const/4 v10, 0x0

    :try_start_183
    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I
    :try_end_185
    .catchall {:try_start_183 .. :try_end_185} :catchall_187
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_185} :catch_179

    goto/16 :goto_9b

    .line 274
    :catchall_187
    move-exception v10

    if-eqz v1, :cond_18d

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_18d
    throw v10

    .line 221
    :cond_18e
    if-nez p4, :cond_a3

    .line 222
    const/4 v10, 0x0

    :try_start_191
    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    goto/16 :goto_a3

    .line 226
    :cond_195
    if-nez p5, :cond_ab

    .line 227
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    goto/16 :goto_ab

    .line 231
    :cond_19c
    const/4 v10, 0x0

    goto/16 :goto_b7

    .line 232
    :cond_19f
    if-nez v4, :cond_b9

    .line 233
    if-eqz p8, :cond_1a8

    const/4 v10, 0x1

    :goto_1a4
    iput v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mIsEnterpriseApp:I

    goto/16 :goto_b9

    :cond_1a8
    const/4 v10, 0x0

    goto :goto_1a4

    .line 237
    :cond_1aa
    const/4 v10, 0x0

    goto/16 :goto_c3

    .line 240
    :cond_1ad
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    goto/16 :goto_c9

    .line 241
    :cond_1b3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p7

    goto/16 :goto_cd

    .line 250
    :cond_1b9
    iget v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    if-nez v10, :cond_119

    .line 251
    const-string v10, ""

    iput-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCause:Ljava/lang/String;

    .line 252
    const-string v10, ""

    iput-object v10, p0, Lcom/android/server/enterprise/DmAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    goto/16 :goto_119

    .line 261
    .restart local v7       #value:J
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_1c7
    const/4 v5, 0x0

    goto/16 :goto_133

    .line 264
    :cond_1ca
    const-string v10, "DmAppInfo"

    const-string v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/server/enterprise/DmAppInfo;->mId:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v10, v9, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    int-to-long v7, v10

    .line 267
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v7

    if-gez v10, :cond_214

    const/4 v5, 0x1

    .line 268
    :goto_1e6
    const-string v10, "DmAppInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAppManagerDB updated row count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/enterprise/DmAppInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_212
    .catchall {:try_start_191 .. :try_end_212} :catchall_187
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_212} :catch_179

    goto/16 :goto_15f

    .line 267
    :cond_214
    const/4 v5, 0x0

    goto :goto_1e6
.end method
