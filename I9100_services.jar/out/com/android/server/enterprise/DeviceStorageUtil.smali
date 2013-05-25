.class public Lcom/android/server/enterprise/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->ERROR:I

    .line 749
    iput v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->SIZE_INVALID:I

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z
    .registers 14
    .parameter "path"
    .parameter "fFilter"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 196
    const/4 v6, 0x1

    .line 197
    .local v6, ret:Z
    if-eqz p1, :cond_7

    if-nez p2, :cond_a

    .line 198
    :cond_7
    const/4 v6, 0x0

    :cond_8
    move v8, v6

    .line 231
    :cond_9
    :goto_9
    return v8

    .line 200
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 201
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_49

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 203
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 204
    .local v1, childList:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_23
    if-ge v4, v5, :cond_35

    aget-object v3, v0, v4

    .line 205
    .local v3, f:Ljava/io/File;
    if-eqz v6, :cond_33

    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/DeviceStorageUtil;->deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v10

    if-eqz v10, :cond_33

    move v6, v8

    .line 204
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_33
    move v6, v9

    .line 205
    goto :goto_30

    .line 207
    .end local v3           #f:Ljava/io/File;
    :cond_35
    const/4 v7, 0x0

    .line 209
    .local v7, success:Z
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_40

    move-result v7

    .line 214
    :goto_3a
    if-eqz v6, :cond_3e

    if-nez v7, :cond_9

    :cond_3e
    move v8, v9

    goto :goto_9

    .line 210
    :catch_40
    move-exception v2

    .line 211
    .local v2, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 216
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #childList:[Ljava/io/File;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #success:Z
    :cond_46
    const/4 v6, 0x0

    move v8, v6

    .line 217
    goto :goto_9

    .line 220
    :cond_49
    const/4 v7, 0x0

    .line 222
    .restart local v7       #success:Z
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_54

    move-result v7

    .line 227
    :goto_4e
    if-eqz v6, :cond_52

    if-nez v7, :cond_9

    :cond_52
    move v8, v9

    goto :goto_9

    .line 223
    :catch_54
    move-exception v2

    .line 224
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method private doFISNow(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "wipeType"

    .prologue
    .line 302
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wipe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, cmd:Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/server/enterprise/DeviceShell;->setShell(Ljava/lang/String;)V

    .line 304
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v2

    .line 309
    .end local v0           #cmd:Ljava/lang/String;
    :goto_1f
    return-object v2

    .line 306
    :catch_20
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private externalSdCardAvailable()Z
    .registers 3

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, externalSdCardState:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 776
    const/4 v1, 0x0

    .line 778
    :goto_7
    return v1

    :cond_8
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, externalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 768
    const/4 v1, 0x0

    .line 770
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 812
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 815
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 816
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v0, v3

    .line 820
    .local v0, length:I
    if-le v0, v6, :cond_59

    aget-object v4, v3, v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 821
    aget-object v2, v3, v6

    .line 822
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subsystem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 827
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    :goto_58
    return-object v4

    :cond_59
    const/4 v4, 0x0

    goto :goto_58
.end method

.method private getExternalSdCardState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 785
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, externalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 787
    const/4 v2, 0x0

    .line 789
    :goto_11
    return-object v2

    :cond_12
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, internalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 795
    const/4 v1, 0x0

    .line 797
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getInternalSdCardPath()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 831
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 834
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 835
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v0, v3

    .line 839
    .local v0, length:I
    if-lez v0, :cond_4c

    aget-object v4, v3, v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 840
    aget-object v2, v3, v6

    .line 842
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fuse"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 844
    const-string v4, "/"

    .line 848
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    :goto_46
    return-object v4

    .line 846
    .restart local v2       #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_47
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    .line 848
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4c
    const/4 v4, 0x0

    goto :goto_46
.end method

.method private getInternalSdCardState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 804
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, internalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 806
    const/4 v2, 0x0

    .line 808
    :goto_11
    return-object v2

    :cond_12
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 7
    .parameter "size"

    .prologue
    .line 752
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    .line 753
    const/4 v1, 0x0

    .line 762
    :goto_7
    return-object v1

    .line 755
    :cond_8
    const/4 v1, 0x0

    .line 757
    .local v1, sizeStr:Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 758
    :catch_10
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 760
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public formatInternalStorage(ZZ)Z
    .registers 13
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, success:Z
    const/4 v5, 0x0

    .line 259
    .local v5, wipeType:Ljava/lang/String;
    if-eqz p1, :cond_65

    if-eqz p2, :cond_65

    .line 260
    const-string v5, "all"

    .line 266
    :cond_8
    :goto_8
    if-eqz v5, :cond_d8

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 269
    .local v3, token:J
    :try_start_e
    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Starting Internal Storage wipe for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, "/system and /data"

    :goto_25
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/DeviceStorageUtil;->doFISNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, ret:Ljava/lang/String;
    if-eqz v1, :cond_61

    .line 276
    const-string v6, "Done wiping"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 277
    const/4 v2, 0x1

    .line 278
    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Done wiping "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string v6, "/system and /data"

    :goto_56
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_61} :catch_ba

    .line 292
    .end local v1           #ret:Ljava/lang/String;
    :cond_61
    :goto_61
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    .end local v3           #token:J
    :goto_64
    return v2

    .line 261
    :cond_65
    if-eqz p1, :cond_6a

    .line 262
    const-string v5, "system"

    goto :goto_8

    .line 263
    :cond_6a
    if-eqz p2, :cond_8

    .line 264
    const-string v5, "data"

    goto :goto_8

    .line 269
    .restart local v3       #token:J
    :cond_6f
    :try_start_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_25

    .line 278
    .restart local v1       #ret:Ljava/lang/String;
    :cond_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_56

    .line 284
    :cond_97
    const-string v7, "DeviceStorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatInternalStorage(): Error in wiping of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    const-string v6, "/system and /data"

    :goto_ae
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_6f .. :try_end_b9} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_b9} :catch_ba

    goto :goto_61

    .line 289
    .end local v1           #ret:Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    :try_start_bb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_61

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_bf
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 284
    .restart local v1       #ret:Ljava/lang/String;
    :cond_c4
    :try_start_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_c4 .. :try_end_d6} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d6} :catch_ba

    move-result-object v6

    goto :goto_ae

    .line 295
    .end local v1           #ret:Ljava/lang/String;
    .end local v3           #token:J
    :cond_d8
    const-string v6, "DeviceStorageUtil"

    const-string v7, "formatInternalStorage(): Please provide valid input."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 23
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 96
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 97
    :cond_9
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for fileList."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v18, 0x0

    .line 184
    :goto_12
    return-object v18

    .line 101
    :cond_13
    const/4 v9, 0x0

    .local v9, i:I
    :goto_14
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_3c

    .line 102
    aget-object v18, p1, v9

    if-eqz v18, :cond_2f

    aget-object v18, p1, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    aput-object v18, p1, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_39

    .line 103
    :cond_2f
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for fileList."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v18, 0x0

    goto :goto_12

    .line 101
    :cond_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 107
    :cond_3c
    if-eqz p2, :cond_78

    .line 108
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_4f

    .line 109
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for filters."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v18, 0x0

    goto :goto_12

    .line 112
    :cond_4f
    const/4 v9, 0x0

    :goto_50
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_78

    .line 113
    aget-object v18, p2, v9

    if-eqz v18, :cond_6b

    aget-object v18, p2, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    aput-object v18, p2, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_75

    .line 114
    :cond_6b
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Please provide valid input for filters."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/16 v18, 0x0

    goto :goto_12

    .line 112
    :cond_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 120
    :cond_78
    move-object/from16 v7, p2

    .line 121
    .local v7, fileFilers:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 122
    .local v15, takeAll:Z
    if-eqz p2, :cond_d0

    .line 123
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_80
    if-ge v10, v11, :cond_8f

    aget-object v12, v2, v10

    .line 124
    .local v12, string:Ljava/lang/String;
    const-string v18, "*.*"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_cd

    .line 125
    const/4 v15, 0x1

    .line 132
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #string:Ljava/lang/String;
    :cond_8f
    :goto_8f
    move v1, v15

    .line 134
    .local v1, acceptAllFiles:Z
    new-instance v4, Lcom/android/server/enterprise/DeviceStorageUtil$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1, v7}, Lcom/android/server/enterprise/DeviceStorageUtil$1;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z[Ljava/lang/String;)V

    .line 153
    .local v4, fFilter:Ljava/io/FileFilter;
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Starting..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 156
    .local v13, success:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v14, successList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 160
    .local v16, token:J
    move-object/from16 v2, p1

    .restart local v2       #arr$:[Ljava/lang/String;
    :try_start_ab
    array-length v11, v2
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ac} :catch_d9

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    move-object v6, v5

    .end local v5           #file:Ljava/io/File;
    .local v6, file:Ljava/io/File;
    :goto_ae
    if-ge v10, v11, :cond_105

    :try_start_b0
    aget-object v8, v2, v10
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_113
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b2} :catch_116

    .line 161
    .local v8, filePath:Ljava/lang/String;
    const/4 v13, 0x0

    .line 163
    :try_start_b3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_113
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b8} :catch_d2

    .line 164
    .end local v6           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    :try_start_b8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_c4

    .line 165
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->deleteDirRecursive(Ljava/io/File;Ljava/io/FileFilter;)Z
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c3} :catch_119

    move-result v13

    .line 171
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_c9

    .line 172
    :try_start_c6
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_c9
    add-int/lit8 v10, v10, 0x1

    move-object v6, v5

    .end local v5           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    goto :goto_ae

    .line 123
    .end local v1           #acceptAllFiles:Z
    .end local v4           #fFilter:Ljava/io/FileFilter;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v13           #success:Z
    .end local v14           #successList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #token:J
    .restart local v12       #string:Ljava/lang/String;
    :cond_cd
    add-int/lit8 v10, v10, 0x1

    goto :goto_80

    .line 130
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #string:Ljava/lang/String;
    :cond_d0
    const/4 v15, 0x1

    goto :goto_8f

    .line 167
    .restart local v1       #acceptAllFiles:Z
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #fFilter:Ljava/io/FileFilter;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #success:Z
    .restart local v14       #successList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #token:J
    :catch_d2
    move-exception v3

    move-object v5, v6

    .line 168
    .end local v6           #file:Ljava/io/File;
    .local v3, e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    :goto_d4
    const/4 v13, 0x0

    .line 169
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_c6 .. :try_end_d8} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d8} :catch_d9

    goto :goto_c4

    .line 175
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catch_d9
    move-exception v3

    .line 176
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_da
    :try_start_da
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_10a

    .line 178
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .end local v3           #e:Ljava/lang/Exception;
    :goto_e0
    const-string v18, "DeviceStorageUtil"

    const-string v19, "formatSelective(): Done..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz v14, :cond_10f

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_10f

    .line 182
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    check-cast v18, [Ljava/lang/String;

    goto/16 :goto_12

    .line 178
    .end local v5           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_105
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v5, v6

    .line 179
    .end local v6           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    goto :goto_e0

    .line 178
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_10a
    move-exception v18

    :goto_10b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 184
    :cond_10f
    const/16 v18, 0x0

    goto/16 :goto_12

    .line 178
    .end local v5           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :catchall_113
    move-exception v18

    move-object v5, v6

    .end local v6           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    goto :goto_10b

    .line 175
    .end local v5           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    :catch_116
    move-exception v3

    move-object v5, v6

    .end local v6           #file:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    goto :goto_da

    .line 167
    .restart local v8       #filePath:Ljava/lang/String;
    :catch_119
    move-exception v3

    goto :goto_d4
.end method

.method public formatStorageCard(Z)Z
    .registers 7
    .parameter "isExternal"

    .prologue
    .line 321
    const/4 v2, 0x0

    .line 337
    .local v2, success:Z
    new-instance v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z)V

    .line 339
    .local v1, sdcardFmtr:Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
    :try_start_6
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Starting SdCard formatting..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v3, Lcom/android/server/enterprise/DeviceStorageUtil$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil$2;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil;Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/DeviceStorageUtil$2;->start()V

    .line 346
    monitor-enter v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_39

    .line 347
    :try_start_16
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Waiting...to be Done"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_1d
    iget-boolean v3, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_36

    if-nez v3, :cond_27

    .line 350
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1d

    .line 351
    :catch_25
    move-exception v3

    goto :goto_1d

    .line 354
    :cond_27
    :try_start_27
    const-string v3, "DeviceStorageUtil"

    const-string v4, "formatStorageCard(): Waiting over..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-boolean v3, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    if-eqz v3, :cond_34

    .line 356
    iget-boolean v2, v1, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 358
    :cond_34
    monitor-exit v1

    .line 363
    :goto_35
    return v2

    .line 358
    :catchall_36
    move-exception v3

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    :try_start_38
    throw v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_39} :catch_39

    .line 360
    :catch_39
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public getAvailableExternalMemorySize()J
    .registers 11

    .prologue
    const-wide/16 v7, -0x1

    .line 687
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 689
    .local v5, path:Ljava/io/File;
    if-nez v5, :cond_f

    .line 700
    .end local v5           #path:Ljava/io/File;
    :cond_e
    :goto_e
    return-wide v7

    .line 692
    .restart local v5       #path:Ljava/io/File;
    :cond_f
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 693
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 694
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v7

    int-to-long v0, v7

    .line 695
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    goto :goto_e

    .line 697
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    :catch_25
    move-exception v4

    .line 698
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .registers 13

    .prologue
    const-wide/16 v9, -0x1

    .line 624
    const-wide/16 v6, 0x0

    .line 630
    .local v6, size:J
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 631
    .local v5, path:Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 632
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 633
    .local v2, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 634
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 637
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 638
    if-nez v5, :cond_24

    .line 651
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_23
    return-wide v9

    .line 641
    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v5       #path:Ljava/io/File;
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_24
    new-instance v8, Landroid/os/StatFs;

    .end local v8           #stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v8       #stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 643
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v9

    int-to-long v0, v9

    .line 644
    mul-long v9, v0, v2

    add-long/2addr v6, v9

    move-wide v9, v6

    .line 647
    goto :goto_23

    .line 648
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_3c
    move-exception v4

    .line 649
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .registers 11

    .prologue
    const-wide/16 v7, -0x1

    .line 705
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 706
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 707
    .local v3, path:Ljava/io/File;
    if-nez v3, :cond_f

    .line 718
    .end local v3           #path:Ljava/io/File;
    :cond_e
    :goto_e
    return-wide v7

    .line 710
    .restart local v3       #path:Ljava/io/File;
    :cond_f
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 711
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    .line 712
    .local v0, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v7

    int-to-long v5, v7

    .line 713
    .local v5, totalBlocks:J
    mul-long v7, v5, v0

    goto :goto_e

    .line 715
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #totalBlocks:J
    :catch_25
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .registers 13

    .prologue
    const-wide/16 v9, -0x1

    .line 655
    const-wide/16 v4, 0x0

    .line 661
    .local v4, size:J
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 662
    .local v3, path:Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 663
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    .line 664
    .local v0, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    .line 665
    .local v7, totalBlocks:J
    mul-long v4, v7, v0

    .line 668
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 669
    if-nez v3, :cond_24

    .line 682
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    :goto_23
    return-wide v9

    .line 672
    .restart local v0       #blockSize:J
    .restart local v3       #path:Ljava/io/File;
    .restart local v6       #stat:Landroid/os/StatFs;
    .restart local v7       #totalBlocks:J
    :cond_24
    new-instance v6, Landroid/os/StatFs;

    .end local v6           #stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 673
    .restart local v6       #stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    .line 674
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v9

    int-to-long v7, v9

    .line 675
    mul-long v9, v7, v0

    add-long/2addr v4, v9

    move-wide v9, v4

    .line 678
    goto :goto_23

    .line 679
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    :catch_3c
    move-exception v2

    .line 680
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
