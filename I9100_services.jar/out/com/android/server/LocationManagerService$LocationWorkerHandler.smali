.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2090
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2096
    :try_start_2
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 2097
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/LocationManagerService;->mSendLocationBroadcast:Z

    .line 2100
    :cond_c
    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v9, v6, :cond_6c

    .line 2103
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_63

    .line 2104
    :try_start_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    .line 2105
    .local v3, location:Landroid/location/Location;
    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 2106
    .local v7, provider:Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v6, :cond_4f

    .line 2108
    .local v6, passive:Z
    :goto_23
    if-nez v6, :cond_51

    .line 2110
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_31
    if-ltz v2, :cond_51

    .line 2111
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 2112
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    .line 2113
    invoke-interface {v4, v3}, Lcom/android/server/location/LocationProviderInterface;->updateLocation(Landroid/location/Location;)V

    .line 2110
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .end local v2           #i:I
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v6           #passive:Z
    :cond_4f
    move v6, v8

    .line 2106
    goto :goto_23

    .line 2118
    .restart local v6       #passive:Z
    :cond_51
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z
    invoke-static {v8, v7}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 2119
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    invoke-static {v8, v3, v6}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 2121
    :cond_5e
    monitor-exit v9

    .line 2157
    .end local v3           #location:Landroid/location/Location;
    .end local v6           #passive:Z
    .end local v7           #provider:Ljava/lang/String;
    :cond_5f
    :goto_5f
    return-void

    .line 2121
    :catchall_60
    move-exception v8

    monitor-exit v9
    :try_end_62
    .catchall {:try_start_17 .. :try_end_62} :catchall_60

    :try_start_62
    throw v8
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_63

    .line 2153
    :catch_63
    move-exception v1

    .line 2155
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "LocationManagerService"

    const-string v9, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 2122
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6c
    :try_start_6c
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5f

    .line 2123
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2126
    .local v5, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b5

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.location.service.NetworkLocationProvider"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_b5

    .line 2131
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const-string v9, "com.android.location.service.NetworkLocationProvider"

    iget-object v10, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2134
    .local v0, bestPackage:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 2135
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v8, v8, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v8, v0}, Lcom/android/server/location/LocationProviderProxy;->reconnect(Ljava/lang/String;)V

    .line 2136
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/android/server/LocationManagerService;->access$2202(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 2139
    .end local v0           #bestPackage:Ljava/lang/String;
    :cond_b5
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5f

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.location.service.GeocodeProvider"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_5f

    .line 2144
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const-string v9, "com.android.location.service.GeocodeProvider"

    iget-object v10, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2147
    .restart local v0       #bestPackage:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 2148
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/location/GeocoderProxy;->reconnect(Ljava/lang/String;)V

    .line 2149
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_f7} :catch_63

    goto/16 :goto_5f
.end method
