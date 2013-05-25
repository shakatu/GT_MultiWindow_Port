.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mAm:Landroid/app/IActivityManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 88
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 95
    const-string v3, "enterprise_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 97
    iget-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_20

    .line 98
    iget-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 101
    :cond_20
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, permOwner:Landroid/os/IBinder;
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_4e

    move-result-object v1

    .line 110
    :goto_37
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 113
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v2, userFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void

    .line 107
    .end local v2           #userFilter:Landroid/content/IntentFilter;
    :catch_4e
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 11
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 333
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 334
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, p1}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 335
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not own package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_34} :catch_34

    .line 338
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :catch_34
    move-exception v2

    .line 339
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 341
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #pi:Landroid/content/pm/PackageInfo;
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 342
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_78

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 343
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 344
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_65
    if-ge v3, v0, :cond_73

    .line 345
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 347
    :cond_73
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_78
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .parameter "data"
    .parameter "uid"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 304
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 305
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 307
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .parameter "item"
    .parameter "uid"

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 294
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 296
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 297
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 298
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 300
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 8
    .parameter "uri"
    .parameter "uid"

    .prologue
    .line 279
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 290
    :goto_c
    return-void

    .line 282
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    .local v0, ident:J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_21

    .line 288
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 286
    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private final clearActiveOwnersLocked()V
    .registers 5

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 375
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 376
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v3, :cond_e

    .line 383
    :cond_d
    return-void

    .line 379
    :cond_e
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 380
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_d

    .line 381
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 2

    .prologue
    .line 139
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 7
    .parameter "userId"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 144
    :try_start_3
    const-string v1, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got clipboard for user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .line 146
    .local v0, puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_2f

    .line 147
    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    .line 148
    .restart local v0       #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_2f
    monitor-exit v2

    return-object v0

    .line 151
    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .registers 5
    .parameter "item"
    .parameter "pkg"

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 322
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 324
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 325
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 326
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 328
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "pkg"

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 312
    .local v6, ident:J
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_1b

    .line 316
    :goto_12
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    return-void

    .line 316
    :catchall_16
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 314
    :catch_1b
    move-exception v0

    goto :goto_12
.end method

.method private removeClipboard(I)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 156
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 365
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 367
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 368
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 369
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 371
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 354
    .local v0, ident:J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_15

    .line 359
    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return-void

    .line 359
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 357
    :catch_15
    move-exception v2

    goto :goto_c
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 258
    monitor-exit p0

    .line 259
    return-void

    .line 258
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 4
    .parameter "pkg"

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 208
    const/4 v0, 0x0

    monitor-exit p0

    .line 225
    :goto_c
    return-object v0

    .line 224
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_c

    .line 227
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .registers 3

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 233
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :goto_f
    monitor-exit p0

    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 234
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hasClipboardText()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 268
    monitor-enter p0

    .line 269
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 270
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_20

    .line 271
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 272
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    monitor-exit p0

    .line 274
    .end local v1           #text:Ljava/lang/CharSequence;
    :goto_1f
    return v2

    :cond_20
    monitor-exit p0

    goto :goto_1f

    .line 275
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_22
    move-exception v2

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public hasPrimaryClip()Z
    .registers 2

    .prologue
    .line 238
    monitor-enter p0

    .line 251
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 252
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 131
    :catch_5
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .registers 7
    .parameter "clip"

    .prologue
    .line 161
    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_c

    .line 164
    monitor-exit p0

    .line 202
    :goto_b
    return-void

    .line 167
    :cond_c
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-gtz v3, :cond_1f

    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No items"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :catchall_1c
    move-exception v3

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v3

    .line 170
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 171
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    .line 188
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 189
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iput-object p1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 190
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_1c

    move-result v2

    .line 191
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    if-ge v1, v2, :cond_46

    .line 193
    :try_start_38
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v3}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_43} :catch_4d

    .line 191
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 200
    :cond_46
    :try_start_46
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 201
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_1c

    goto :goto_b

    .line 194
    :catch_4d
    move-exception v3

    goto :goto_43
.end method
