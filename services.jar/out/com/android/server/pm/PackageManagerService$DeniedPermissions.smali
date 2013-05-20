.class Lcom/android/server/pm/PackageManagerService$DeniedPermissions;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeniedPermissions"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPermissionCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "packageName"

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2202
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPackageName:Ljava/lang/String;

    .line 2203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    .line 2204
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2207
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPackageName:Ljava/lang/String;

    .line 2208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    .line 2209
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->putDeniedPermission(Ljava/lang/String;)V

    .line 2210
    return-void
.end method


# virtual methods
.method public getDeniedPermissionList()Ljava/lang/String;
    .registers 9

    .prologue
    .line 2217
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2218
    .local v1, buff:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    if-nez v6, :cond_26

    .line 2219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NONE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2228
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 2222
    :cond_26
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 2223
    .local v5, permissions:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2224
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3a
    if-ge v2, v3, :cond_21

    aget-object v4, v0, v2

    .line 2225
    .local v4, perm:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " END \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2224
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public putDeniedPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 2232
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 2233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    .line 2236
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2237
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2238
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    .line 2239
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    .end local v0           #count:I
    :goto_2a
    return-void

    .line 2241
    :cond_2b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DeniedPermissions;->mPermissionCount:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method
