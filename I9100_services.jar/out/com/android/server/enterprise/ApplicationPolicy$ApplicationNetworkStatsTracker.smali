.class Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field private final MOBILE:I

.field private final NONMOBILE:I

.field private connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private currentNetwork:Ljava/lang/String;

.field datausageHandler:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private previousNetwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 698
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 689
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 690
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 691
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    .line 696
    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 699
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    .line 700
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    return-void
.end method

.method private calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, previousMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/4 v6, 0x0

    .line 975
    .local v6, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1004
    .end local p1           #updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_7
    return-object p1

    .line 977
    .restart local p1       #updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_8
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 978
    const/4 p1, 0x0

    goto :goto_7

    .line 979
    :cond_10
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_73

    .line 980
    .end local v6           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v7, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_15
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 981
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 982
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 983
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 984
    .local v8, updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/NetworkStats;

    .line 985
    .local v5, previousNetworkStats:Landroid/app/enterprise/NetworkStats;
    new-instance v4, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v4}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 986
    .local v4, networkStats:Landroid/app/enterprise/NetworkStats;
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 988
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 990
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 992
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 994
    invoke-virtual {v7, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5f} :catch_60

    goto :goto_1d

    .line 1001
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v5           #previousNetworkStats:Landroid/app/enterprise/NetworkStats;
    .end local v8           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :catch_60
    move-exception v0

    move-object v6, v7

    .line 1002
    .end local v7           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v0, e:Ljava/lang/Exception;
    .restart local v6       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :goto_65
    move-object p1, v6

    .line 1004
    goto :goto_7

    .line 996
    .end local v6           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_67
    :try_start_67
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 997
    .restart local v8       #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v7, v2, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_60

    goto :goto_1d

    .end local v2           #key:Ljava/lang/Integer;
    .end local v8           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :cond_71
    move-object v6, v7

    .line 1003
    .end local v7           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v6       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_65

    .line 1001
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_73
    move-exception v0

    goto :goto_62
.end method

.method private calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    .local p1, mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, updatedMinusPrevious:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 910
    .local v9, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 911
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 912
    .local v3, key:Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_61

    .line 913
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/NetworkStats;

    .line 914
    .local v7, networkStatsFromDb:Landroid/app/enterprise/NetworkStats;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/NetworkStats;

    .line 915
    .local v10, updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    new-instance v6, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v6}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 916
    .local v6, networkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 917
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 919
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 921
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 923
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 925
    invoke-virtual {v9, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5b} :catch_5c

    goto :goto_d

    .line 941
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Integer;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v7           #networkStatsFromDb:Landroid/app/enterprise/NetworkStats;
    .end local v10           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :catch_5c
    move-exception v1

    .line 942
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 944
    .end local v1           #e:Ljava/lang/Exception;
    :cond_60
    return-object v9

    .line 928
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/Integer;
    .restart local v4       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_61
    :try_start_61
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 929
    .local v8, previousValue:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 933
    .end local v3           #key:Ljava/lang/Integer;
    .end local v8           #previousValue:Landroid/app/enterprise/NetworkStats;
    :cond_6d
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 935
    .local v5, keySet1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 936
    .restart local v3       #key:Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_75

    .line 937
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/NetworkStats;

    .line 938
    .local v11, updatedValue:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_94} :catch_5c

    goto :goto_75
.end method

.method private getDataUsagesUids()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 828
    const/4 v2, 0x0

    .line 830
    .local v2, uid:[Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "proc/uid_stat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 832
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    .line 837
    .end local v1           #file:Ljava/io/File;
    :cond_12
    :goto_12
    return-object v2

    .line 833
    :catch_13
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 5
    .parameter "state"

    .prologue
    .line 703
    const-string v0, "Unknown"

    .line 705
    .local v0, stateString:Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy$4;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 713
    const-string v0, "Unknown"

    .line 717
    :goto_f
    return-object v0

    .line 707
    :pswitch_10
    const-string v0, "Connected"

    .line 708
    goto :goto_f

    .line 710
    :pswitch_13
    const-string v0, "Disconnected"

    .line 711
    goto :goto_f

    .line 705
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method private isAnyNetworkConnected()Z
    .registers 7

    .prologue
    .line 842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 843
    .local v2, token1:J
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 845
    .local v1, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 846
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 847
    if-eqz v0, :cond_1b

    .line 848
    const/4 v4, 0x1

    .line 849
    :goto_1a
    return v4

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method private final isMobileNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "network"

    .prologue
    .line 721
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private registerNetworkChangeReceiver()V
    .registers 5

    .prologue
    .line 725
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_29

    .line 728
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 730
    .local v1, intentFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 759
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 760
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    .line 765
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_29
    :goto_29
    return-void

    .line 762
    :catch_2a
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method private updateDataUsageMap(I)V
    .registers 14
    .parameter "dataUsageForNetwork"

    .prologue
    const/4 v11, 0x1

    .line 781
    const-string v9, "ApplicationPolicy"

    const-string v10, "updateDataUsageMap"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagesUids()[Ljava/lang/String;

    move-result-object v8

    .line 784
    .local v8, uidList:[Ljava/lang/String;
    if-eqz v8, :cond_5d

    .line 785
    array-length v9, v8

    if-lez v9, :cond_5d

    .line 786
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v9, v8

    if-ge v1, v9, :cond_5d

    .line 787
    aget-object v9, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 788
    .local v7, uid:I
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 789
    .local v5, totalUsageTxPkg:J
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 791
    .local v3, totalUsageRxPkg:J
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 792
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/NetworkStats;

    .line 794
    .local v2, networkStats:Landroid/app/enterprise/NetworkStats;
    if-ne p1, v11, :cond_4c

    .line 795
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 797
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 786
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 800
    :cond_4c
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 802
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_58} :catch_59

    goto :goto_49

    .line 822
    .end local v1           #i:I
    .end local v2           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v3           #totalUsageRxPkg:J
    .end local v5           #totalUsageTxPkg:J
    .end local v7           #uid:I
    .end local v8           #uidList:[Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 825
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5d
    return-void

    .line 806
    .restart local v1       #i:I
    .restart local v3       #totalUsageRxPkg:J
    .restart local v5       #totalUsageTxPkg:J
    .restart local v7       #uid:I
    .restart local v8       #uidList:[Ljava/lang/String;
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v2}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 807
    .restart local v2       #networkStats:Landroid/app/enterprise/NetworkStats;
    iput v7, v2, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 808
    if-ne p1, v11, :cond_75

    .line 809
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 810
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 811
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 813
    :cond_75
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 814
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 815
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_82} :catch_59

    goto :goto_49
.end method


# virtual methods
.method public getAppLevelDataUsage()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v4, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid()Ljava/util/Hashtable;

    move-result-object v0

    .line 863
    .local v0, hashTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_27

    .line 864
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 865
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 866
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 869
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_27
    return-object v4
.end method

.method public getDataUsagePerUid()Ljava/util/Hashtable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 875
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 876
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 881
    :cond_12
    :goto_12
    new-instance v0, Lcom/android/server/enterprise/NetworkDataUsageDb;

    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 882
    .local v0, appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    const/4 v3, 0x0

    .line 884
    .local v3, mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_1c
    invoke-virtual {v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object v3

    .line 885
    if-eqz v3, :cond_41

    .line 886
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 887
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_44

    .line 902
    :goto_2a
    return-object v4

    .line 878
    .end local v0           #appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    .end local v3           #mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2b
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_12

    .line 889
    .restart local v0       #appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    .restart local v3       #mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 891
    .local v2, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v2, :cond_3f

    .line 892
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v4

    goto :goto_2a

    :cond_3f
    move-object v4, v3

    .line 894
    goto :goto_2a

    .line 896
    .end local v2           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_41
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_43} :catch_44

    goto :goto_2a

    .line 898
    :catch_44
    move-exception v1

    .line 899
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 902
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method public updateNetworkUsageDb()V
    .registers 5

    .prologue
    .line 953
    new-instance v1, Lcom/android/server/enterprise/NetworkDataUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 954
    .local v1, networkDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 955
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 956
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 961
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 962
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 964
    .local v0, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_30

    .line 965
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 967
    .end local v0           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_30
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 968
    return-void

    .line 958
    :cond_38
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_1b
.end method
