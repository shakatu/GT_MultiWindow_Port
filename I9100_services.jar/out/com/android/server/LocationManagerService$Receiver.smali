.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mRequiredPermissions:Ljava/lang/String;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 247
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 249
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 250
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 251
    return-void
.end method

.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 240
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 242
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 243
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 244
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 2

    .prologue
    .line 540
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 541
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 543
    :cond_d
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 3

    .prologue
    .line 534
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 535
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 537
    :cond_d
    return-void
.end method

.method private lbsCheck(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/HashSet;
    .registers 13
    .parameter "pm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, procInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v7, "LocationManagerService"

    const-string v8, "Inside lbsCheck function"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v4, mAppNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v7, v7, Lcom/android/server/LocationManagerService;->mLocUserAppsList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 415
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17c

    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 418
    .local v6, pckgName:Ljava/lang/String;
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v7, 0x1000

    :try_start_3a
    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 422
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_14

    .line 424
    const-string v7, "LocationManagerService"

    const-string v8, "requestedPermissions is not null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4a
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_14

    .line 426
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "permission for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_169

    .line 433
    :cond_b1
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "meets location app criteria"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v3, 0x0

    .local v3, j:I
    :goto_d0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_169

    .line 436
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 438
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is a running app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_178

    .line 441
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is a foreground app"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_12c} :catch_172

    .line 444
    :try_start_12c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is added"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_169} :catch_16d

    .line 425
    .end local v3           #j:I
    :cond_169
    :goto_169
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4a

    .line 447
    .restart local v3       #j:I
    :catch_16d
    move-exception v0

    .line 449
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_16e
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_171
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16e .. :try_end_171} :catch_172

    goto :goto_169

    .line 459
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_172
    move-exception v0

    .line 461
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_14

    .line 434
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i:I
    .restart local v3       #j:I
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_178
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d0

    .line 464
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #pckgName:Ljava/lang/String;
    :cond_17c
    return-object v4
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 515
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    .line 516
    monitor-enter p0

    .line 517
    :try_start_e
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_1a

    .line 518
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 521
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 522
    return-void

    .line 515
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 521
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 11
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_21

    .line 376
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_1e

    .line 379
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 383
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 385
    :cond_18
    monitor-exit p0

    .line 406
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    .line 385
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 386
    :catch_1e
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    move v0, v8

    .line 387
    goto :goto_1a

    .line 390
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v3, locationChanged:Landroid/content/Intent;
    const-string v0, "location"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    :try_start_2b
    monitor-enter p0
    :try_end_2c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_2c} :catch_49

    .line 396
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 401
    monitor-exit p0

    goto :goto_19

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_48 .. :try_end_49} :catch_49

    .line 402
    :catch_49
    move-exception v7

    .local v7, e:Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 403
    goto :goto_1a
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 12
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v8, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_29

    .line 471
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_26

    .line 474
    if-eqz p2, :cond_1d

    .line 475
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 479
    :goto_d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 482
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 484
    :cond_1a
    monitor-exit p0

    .line 505
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    .line 477
    :cond_1d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_d

    .line 484
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    :try_start_25
    throw v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_26} :catch_26

    .line 485
    :catch_26
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    move v0, v8

    .line 486
    goto :goto_1c

    .line 489
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_29
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v3, providerIntent:Landroid/content/Intent;
    const-string v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    :try_start_33
    monitor-enter p0
    :try_end_34
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_33 .. :try_end_34} :catch_51

    .line 495
    :try_start_34
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 500
    monitor-exit p0

    goto :goto_1b

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_50 .. :try_end_51} :catch_51

    .line 501
    :catch_51
    move-exception v7

    .local v7, e:Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 502
    goto :goto_1c
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 13
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v8, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_21

    .line 308
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_1e

    .line 311
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 315
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 317
    :cond_18
    monitor-exit p0

    .line 339
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    .line 317
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 318
    :catch_1e
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    move v0, v8

    .line 319
    goto :goto_1a

    .line 322
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v3, statusChanged:Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 324
    const-string v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    :try_start_2e
    monitor-enter p0
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_2f} :catch_4c

    .line 329
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 334
    monitor-exit p0

    goto :goto_19

    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 335
    :catch_4c
    move-exception v7

    .local v7, e:Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 336
    goto :goto_1a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "otherObj"

    .prologue
    .line 255
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_f

    .line 256
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .end local p1
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 259
    :goto_e
    return v0

    .restart local p1
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 295
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0

    .line 302
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPendingIntent()Z
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 526
    monitor-enter p0

    .line 527
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 528
    monitor-exit p0

    .line 529
    return-void

    .line 528
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_4b

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, result:Ljava/lang/String;
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUpdateRecords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0

    .line 275
    .end local v0           #result:Ljava/lang/String;
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_31
.end method
