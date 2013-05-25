.class Lcom/android/server/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .registers 13
    .parameter "doit"
    .parameter "wallpaper"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, changed:Z
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3b

    .line 350
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 352
    .local v0, change:I
    if-eq v0, v8, :cond_17

    if-ne v0, v7, :cond_3b

    .line 354
    :cond_17
    const/4 v1, 0x1

    .line 355
    if-eqz p1, :cond_3b

    .line 356
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper uninstalled, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 362
    .end local v0           #change:I
    :cond_3b
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4f

    .line 363
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 365
    .restart local v0       #change:I
    if-eq v0, v8, :cond_4d

    if-ne v0, v7, :cond_4f

    .line 367
    :cond_4d
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 370
    .end local v0           #change:I
    :cond_4f
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_6d

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 373
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_6d} :catch_8c

    .line 381
    :cond_6d
    :goto_6d
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_8b

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 384
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_8b} :catch_af

    .line 390
    :cond_8b
    :goto_8b
    return v1

    .line 375
    :catch_8c
    move-exception v2

    .line 376
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper component gone, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    goto :goto_6d

    .line 386
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_af
    move-exception v2

    .line 387
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_8b
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 11
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 329
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 330
    .local v3, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0, p4, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v2

    .line 331
    .local v2, res:Z
    or-int/2addr v0, v2

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 333
    .end local v2           #res:Z
    .end local v3           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_23
    monitor-exit v5

    return v0

    .line 334
    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v4
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 301
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 302
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 300
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 306
    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    goto :goto_2a

    .line 308
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v2

    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 309
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 10
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_58

    .line 280
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 281
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_55

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 283
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 284
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 285
    .local v0, comp:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 287
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v5, :cond_55

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6, v2}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 289
    const-string v3, "WallpaperService"

    const-string v5, "Wallpaper no longer available; reverting to default"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 279
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 294
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_58
    monitor-exit v4

    .line 295
    return-void

    .line 294
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 314
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 315
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 316
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 314
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 321
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_30
    monitor-exit v3

    .line 322
    return-void

    .line 321
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public onSomePackagesChanged()V
    .registers 5

    .prologue
    .line 339
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 341
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 342
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 344
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_21
    monitor-exit v3

    .line 345
    return-void

    .line 344
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_23

    throw v2
.end method
